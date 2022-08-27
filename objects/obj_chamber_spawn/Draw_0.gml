/// @description ?

if !(init)
{
	draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	if (obj_floorgenerator.floor_map[pos.x + 1, pos.y] != noone)
	{
		draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width, y + obj_floorgenerator.chamber_height - 16, false);
	}
	if (obj_floorgenerator.floor_map[pos.x - 1, pos.y] != noone)
	{
		draw_rectangle(x, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	}
	if (obj_floorgenerator.floor_map[pos.x, pos.y + 1] != noone)
	{
		draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height, false);
	}
	if (obj_floorgenerator.floor_map[pos.x, pos.y - 1] != noone)
	{
		draw_rectangle(x + 16, y, x + obj_floorgenerator.chamber_width - 16, y + obj_floorgenerator.chamber_height - 16, false);
	}
}