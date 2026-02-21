--<<
local _ = pyr_npt.textdomain
local V = wml.variables
local T = wml.tag
	
local unit_selection = {}

-- @ret1 boolean
-- @ret2 a string with the message if invalid othewrwise nil
function unit_selection.is_valid_recuitlist(unitidlist)
	for k,v in pairs(unitidlist) do
		if(wesnoth.unit_types[v] == nil) then
			---wesnoh.message("found invalid unit id:" .. tostring(v))
			return false, "found invalid unit id:" .. tostring(v)
		end
	end
	if #unitidlist > unit_selection.max_selectalbe_units() then
		--wesnoth.message("found too many units in recruitlist")
		return false, "found too many units in recruitlist"
	end
	if pyr_npt.helper.tablereduce(unitidlist, function(a,b) return a + wesnoth.unit_types[b].cost end, 0) > unit_selection.max_selectalbe_units_gold_limit() then
		--wesnoth.message("found too expensive units in recruitlist")
		return false, "found too expensive units in recruitlist"
	end
		
	return true
end

--returns an array of wmltables for all unit types available.
function unit_selection.get_unit_types(side)
	return {
		-- some default value i used for testing.
		wesnoth.unit_types["Ancient Lich"].__cfg, 
		wesnoth.unit_types["Elvish Champion"].__cfg,
		wesnoth.unit_types["Orcish Slayer"].__cfg,
	}
end

function unit_selection.get_unit_races(unit_types)
	local found_races = {}
	local retv = {}
	for key,value in pairs(unit_types) do
		if found_races[value.race or "unknown"] ~= true then
			if value.race == nil then
				table.insert(retv, {plural_name = "Unknown", id = "unknown"})
			else
				local race = wesnoth.races[value.race or ""]
				if race then
					table.insert(retv, wesnoth.races[value.race or ""].__cfg)
				else
					wesnoth.message("Pyr npt Mod", "found a unittype with an invalid race '" .. tostring(value.race) .. "'")
				end
			end
		end
		found_races[value.race or ""] = true
	end
	table.sort(retv, function(r1,r2) return tostring(r1.plural_name) < tostring(r2.plural_name) end)
	return retv
end

function unit_selection.get_biggest_race_size(unit_types)
	
	local maxkey, maxvalue = pyr_npt.helper.tablemax(
		pyr_npt.helper.tablegroupby(unit_types, function(index, ut) return (ut.race or "unknown") end),
		function(t1,t2) return #t1 < #t2 end
	)
	return maxvalue and #maxvalue or 0
end

-- @a side: the number of the side to select recruits for
-- @returns an array of unit id strings.
function unit_selection.do_selection(side)
	local state = {}
	state.unit_types = unit_selection.get_unit_types(side)
	state.chosen_units = {}
	state.side = side
	
	local matches_id = function(id)
		return function(ut) return ut.id == id end
	end
	local has_unit = function(id)
		return pyr_npt.helper.tablecontainsp(state.unit_types, matches_id(id))
	end
	return pyr_npt.helper.tablemap(state.chosen_units, function(index) return state.unit_types[index].id end)
end
-- @a state contains the state of the dialog is has the fields:
-- - unit_types: an array of wml tables containing the unittypes __cfg for each seletable unit.
-- - chosen_units: a list containing integerindexes to unit_types
-- - selected_unit: an index into unit_types showing which unit is currently selected
-- - race_id: the id of the race that is currently selected.
function unit_selection.show_dialog(state)
	local dialog_wml = pyr_npt.main_dialog_wml
	-- an array or race cfg tables.
	local unit_races = unit_selection.get_unit_races(state.unit_types)
	local maxrace_size = unit_selection.get_biggest_race_size(state.unit_types)
	
	--a list containing integerindexes to unit_types
	local current_unit_list = {}

	local function preshow(dialog)
		local d_list_parts = dialog:find("list_parts")
		local d_list_variants = dialog:find("list_variants")
		local d_unit_preview = dialog:find("the_image")

		local get_chosen_unit_ids = function()
			return pyr_npt.helper.tablemap(state.chosen_units, function(index) return state.unit_types[index].id end)
		end
		
		local on_selected_race_changed = function(widget)
			--widget = widget and widget.lokjsf
			local race_number = d_race_list.selected_index
			state.race_id = unit_races[race_number].id
			local index = 1
			current_unit_list = {}
			for index2, value in ipairs(state.unit_types) do
				if value.race == state.race_id or (state.race_id == "pyr_npt_recently_selected" then
					d_unit_list:find(index, "list_image").label = (value.image or "") .. "~SCALE(72,72)"
					d_unit_list:find(index, "list_name").label = (value.name or "") .. "\n" .. (value.cost or "") .. _"Gold"
					current_unit_list[index] = index2
					index = index + 1
				end
			end
			while index <= maxrace_size do
				d_unit_list:find(index, "list_image").label = pyr_npt.helper.thex_png
				d_unit_list:find(index, "list_name").label = " \n "
				index = index + 1				
			end
		end
		
		local function set_race_initial()
			for i, v in ipairs(unit_races) do
				if v.id == state.race_id then
					d_race_list.selected_index = i
				end
			end
			on_selected_race_changed()
			for i, v in ipairs(current_unit_list) do
				if v == state.selected_unit then
					d_unit_list.selected_index = i
				end
			end
		end

		local update_unit = function()
			d_unit_preview.unit = wesnoth.unit_types[state.unit_types[state.selected_unit].id]
		end
		
		local set_unit = function()
			local unit_number = d_unit_list.selected_index
			if current_unit_list[unit_number] == nil then return end
			state.selected_unit = current_unit_list[unit_number]
			update_unit()
		end
		
		local set_unit_chosen = function()
			local unit_number = d_chosen_unit_list.selected_index
			if state.chosen_units[unit_number] == nil then return end
			state.selected_unit = state.chosen_units[unit_number]
			update_unit()
		end
		
		local update_chosen_units = function()
			local index = 1
			for index2,value in ipairs(state.chosen_units) do
				d_chosen_unit_list:find(index2, "list_image2").label = (state.unit_types[value].image or "") .."~SCALE(72,72)"
				index = index2 + 1
			end
			local costs = pyr_npt.helper.tablereduce(state.chosen_units, function(a,b) return a + state.unit_types[b].cost end, 0)
			local countdig = math.floor(math.log(math.max(#state.chosen_units, 1), 10))
			local spaces_to_add = string.rep(' ',3*(5-countdig))
			local costdig = math.floor(math.log(math.max(costs, 1), 10))
			local cost_spaces_to_add = string.rep(' ',3*(5-costdig))
			
			dialog:find("pyr_total_count").marked_up_text = _"Count:" ..  tostring(#state.chosen_units) .. spaces_to_add
			else
				dialog:find("pyr_total_cost").marked_up_text = _"Cost:" ..  tostring(costs) .. "/"..  tostring("") .. cost_spaces_to_add
			end
		end
		
		local on_add_button = function()
			if pyr_npt.helper.tablecontains(state.chosen_units, state.selected_unit) then return end
			table.insert(state.chosen_units, state.selected_unit)
			if unit_selection.is_valid_recuitlist(get_chosen_unit_ids())then
				update_chosen_units()
				update_chosen_units()
			else
				pyr_npt.helper.tableremovevalue(state.chosen_units, state.selected_unit)
			end
		end
		
		local on_remove_button = function()
			if not pyr_npt.helper.tablecontains(state.chosen_units, state.selected_unit) then return end
			pyr_npt.helper.tableremovevalue(state.chosen_units, state.selected_unit)
			if unit_selection.is_valid_recuitlist(get_chosen_unit_ids()) then
				update_chosen_units()
			else
				table.insert(state.chosen_units, state.selected_unit)
			end
		end
		
		local on_remove_all_button = function()
			state.chosen_units = {}
			update_chosen_units()
		end
		
		for index,value in ipairs(unit_races) do
			d_race_list:find(index, "race_name").label = unit_races[index].plural_name or "a"
		end
		local side_name = wesnoth.sides[state.side].side_name or ""
		local side_num_str = string.format("%d", state.side or 1)
		dialog.title.label = _"Unit selection for " .. side_name .. " (side " .. side_num_str .. ")"

		dialog.race_list.on_modified = on_selected_race_changed
		dialog.unit_list.on_modified = set_unit
		dialog.chosen_unit_list.on_modified = set_unit_chosen
		dialog.add_button.on_button_click = on_add_button
		dialog.remove_button.on_button_click = on_remove_button
		dialog.remove_all_button.on_button_click = on_remove_all_button

		set_race_initial()
		set_unit()
		update_chosen_units()
	end

	local res = gui.show_dialog(dialog_wml.normal, preshow)
	return res ~= 2
end

return unit_selection
-->>
