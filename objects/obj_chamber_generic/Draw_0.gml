/// @description ?
draw_set_color(c_gray);
if !(init)
{
	if (point_distance(pos.x, pos.y, parent_pos.x, parent_pos.y) > 1.1)
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	if (blocked_path[0] == false)
	{
		draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width, y + obj_floorgenerator.chamber_height - 16, false);
	}
	if (blocked_path[2] == false)
	{
		draw_rectangle(x, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	}
	if (blocked_path[1] == false)
	{
		draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height, false);
	}
	if (blocked_path[3] == false)
	{
		draw_rectangle(x + 16, y, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	}
}
draw_set_color(c_white);
if (path_exists(center_path))
{
	draw_path(center_path, 0, 0, true);
}