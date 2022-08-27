/// @description ?

// Inherit the parent event
event_inherited();

if !(init)
{
	if (point_in_rectangle(mouse_x, mouse_y, pos.x * obj_floorgenerator.chamber_width, pos.y * obj_floorgenerator.chamber_height, (pos.x + 1) * obj_floorgenerator.chamber_width, (pos.y + 1) * obj_floorgenerator.chamber_height) && mouse_check_button_pressed(mb_left))
	{
		show_debug_message("================================")
		show_debug_message("Object Name: " + string(object_get_name(object_index)));
		show_debug_message("Object ID: " + string(id));
		show_debug_message("Object Map Position: " + string(pos));
		show_debug_message("Object Giveway Tiles: " + string(free_path));
		show_debug_message("Object Blocked Tiles: " + string(blocked_paths));
		show_debug_message("Object Blocked Tiles: " + string(blocked_path));
		if (variable_instance_exists(id, "log"))
		{
			show_debug_message("Log")
			show_debug_message("----------------------------")
			for (var i = 0; i < array_length(log); i++)
			{
				show_debug_message(string(log[i]))
			}
			show_debug_message("----------------------------")
		}
		show_debug_message("================================")
	}
}