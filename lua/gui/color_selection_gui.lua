--<<
local T = wml.tag
local function GUI_FORCE_WIDGET_MINIMUM_SIZE(w, h, content)
	return T.stacked_widget {
		definition = "default",
		T.layer {
			T.row {
				T.column {
					T.spacer {
						definition = "default",
						width = w,
						height = h
					}
				}
			} 
		},
		T.layer {
			T.row {
				grow_factor = 1,
				T.column {
					grow_factor = 1,
					horizontal_grow = "true",
					vertical_grow = "true",
					content
				}
			} 
		}
	}
end

local details_panel_pages =   T.grid {
	T.row { T.column { T.label { label = "<b>Preview</b>", use_markup = true } } },
	T.row { T.column { T.image { id = "the_image", label = base_image } } },
	T.row { T.column { T.spacer { height = 20 } } },
	T.row { T.column { 
		T.toggle_button { 
			id = "chk_faction", 
			label = "Whole Faction",
			tooltip = "Apply to all units of this race"
		} 
	}},
	T.row { T.column { T.spacer { height = 20 } } },
	T.row { T.column { 
		T.button { id = "ok", label = "Apply" } 
	}},
	T.row { T.column { 
		T.button { id = "cancel", label = "Cancel" } 
	}}
}

local body_parts_list = T.listbox {
	id = "list_parts",
	T.list_definition {
		T.row {
			T.column {
				grow_factor = 1,
				horizontal_grow = true,
				vertical_grow = true,
				T.toggle_panel {
					id = "p_panel", -- ID für Lua Zugriff
					definition = "default",
					T.grid {
						T.row {
							grow_factor = 1,
							T.column {
								horizontal_alignment = "left",
								border = "all", border_size = 5,
								T.label { id = "p_label", linked_group = "ucc_body_parts" } -- ID für Lua Zugriff
							}
						}
					}
				}
			}
		}
	}
}

local colors_list = T.listbox {
	id = "list_variants",
	vertical_scrollbar_mode = "always",
	T.list_definition {
		T.row {
			T.column {
				grow_factor = 1,
				horizontal_grow = true,
				vertical_grow = true,
				T.toggle_panel {
					id = "v_panel", -- ID für Lua Zugriff
					definition = "default",
					T.grid {
						T.row {
							grow_factor = 1,
							T.column {
								border = "all",
								border_size = 5,
								horizontal_alignment = "left",
								T.image {
									id = "v_icon",
									linked_group = "ucc_image"
								}
							},
							T.column {
								border = "all",
								border_size = 5,
								horizontal_alignment = "left",
								GUI_FORCE_WIDGET_MINIMUM_SIZE(150,5,
									T.label {
										id = "list_image",
										linked_group = "ucc_name"
									}
								)
							}
						}
					}
				}
			}
		}
	}
}

local main_window = {
	maximum_height = 700,
	maximum_width = 900,
	
	T.helptip { id = "tooltip" }, -- mandatory field
	T.tooltip { id = "tooltip" }, -- mandatory field
	
	T.linked_group { id = "ucc_body_parts", fixed_width = true },
	T.linked_group { id = "ucc_image", fixed_width = true },
	T.linked_group { id = "ucc_name", fixed_width = true },
	
	T.grid {
		T.row {
			grow_factor = 1,
			T.column {
				border = "all",
				border_size = 5,
				horizontal_alignment = "left",
				T.label {
					definition = "title",
					label = _"Unit selection for side",
					id = "title"
				}
			}
		},
		T.row {
			grow_factor = 1,
			T.column {
				horizontal_grow = true,
				vertical_grow = true,
				T.grid {
					T.row {
						T.column {
							horizontal_grow = true,
							vertical_grow = true,
							details_panel_pages
						},
						T.column {
							border = "all",
							border_size = 5,
							horizontal_grow = true,
							vertical_grow = true,
							T.grid {
								T.row { T.column { T.label { label = "<b>Body Parts</b>", use_markup = true } } },
								T.row {
									T.column {
										horizontal_grow = true, vertical_grow = true,
										body_parts_list
									},
								},
							},
						},
						T.column {
							border = "all",
							border_size = 5,
							horizontal_grow = true,
							vertical_grow = true,
							T.grid {
								T.row { T.column { T.label { label = "<b>Colors</b>", use_markup = true } } },
								T.row {
									T.column {
										horizontal_grow = true, vertical_grow = true,
										colors_list
									},
								},
							},
						},
					}
				}
			}
		}
	}
}

return {
	normal = main_window;
}
-->>
