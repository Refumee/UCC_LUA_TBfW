--<<

local global_vars = setmetatable({}, {
	__index = function(self, namespace)
		return setmetatable({}, {
			__index = function(self, name)
				wml.variables.lua_global_variable = nil
				-- TODO: it wesnoth.sync.run_unsynced here really needed?
				wesnoth.sync.run_unsynced(function()
					wesnoth.wml_actions.get_global_variable {
						namespace = namespace,
						to_local = "lua_global_variable",
						from_global = name,
						immediate = true,
					}
				end)
				local res = wml.variables.lua_global_variable
				wml.variables.lua_global_variable = nil
				return res
			end,
			__newindex = function(self, name, val)
				wml.variables.lua_global_variable = val
				wesnoth.sync.run_unsynced(function()
					wesnoth.wml_actions.set_global_variable {
						namespace = namespace,
						from_local = "lua_global_variable",
						to_global = name,
						immediate = true,
					}
				end)
				wml.variables.lua_global_variable = nil
			end,
		})
	end
})

local global_vars = global_vars.pyr_npt

local _ = pyr_npt.textdomain

local unit_selection_wrapper = {}

function unit_selection_wrapper.let_player_choose_sides()

	local sided_numbers = {}
	-- NOTE: We do this even for ai sides, because there are known bugs where a side appeared as ai for one side but not for another.
	for i,v in ipairs(wesnoth.sides) do
		table.insert(sided_numbers, v.side)
	end	
	local result = wesnoth.sync.evaluate_multiple(
		_ "recruit selection",
		function(side)
			if wesnoth.sides[side].controller == "human" then
				while true do
					local retv = pyr_npt.unit_selection.do_selection(side)
					if pyr_npt.unit_confirmation.confirm_recruitlist(retv) then
						return { recruits = table.concat(retv, ",") }
					end
				end
		end,
		sided_numbers
	)

	for k,v in pairs(result) do
		local side = wesnoth.sides[k]
		if v.recruits ~= nil then
			local recruitlist = pyr_npt.helper.comma_to_list(v.recruits)
			local should_ignore_invalid = (side.controller == "ai" or side.controller == "null") and wml.variables.pyr_npt_no_ai
			if not should_ignore_invalid then
				local is_valid, reason = pyr_npt.unit_selection.is_valid_recuitlist(recruitlist)
				if not is_valid then
					wesnoth.message("Pyr npt Mod", "player " .. tostring(k) .. " has an invalid recruitlist. Reason: " .. reason)
				end
			end
			side.recruit = recruitlist
		elseif side.controller ~= "null" then
			error("failed to get data from non-empty side")
		end
	end

end

function wesnoth.wml_actions.pyr_npt_choose_units(cfg)
	unit_selection_wrapper.let_player_choose_sides()
end

return unit_selection_wrapper

-->>
