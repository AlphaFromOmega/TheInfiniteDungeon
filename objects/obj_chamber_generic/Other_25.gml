/// @description ?

// Inherit the parent event
event_inherited();

if (point_distance(pos.x, pos.y, parent_pos.x, parent_pos.y) > 1.1)
{
	show_debug_message("Position: " + string(pos) + "Parent Position: " + string(parent_pos))
}