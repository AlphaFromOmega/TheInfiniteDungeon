/// @description ?
var mov = new Vector2(0, 0)
mov.x = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))
mov.y = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
if (!init && zoom)
{
	var cur_tile = obj_floorgenerator.floor_map[pos.x, pos.y]
	if (mov.x != 0 && !cur_tile.blocked_path[1 - mov.x])
	{
		pos.x += mov.x;
		lp = 0;
	}
	else if (mov.y != 0 && !cur_tile.blocked_path[2 - mov.y])
	{
		pos.y += mov.y;
		lp = 0;
	}
	if (lp < 1)
	{
		x = lerp(x, pos.x * obj_floorgenerator.chamber_width + obj_floorgenerator.chamber_width/2, lp);
		y = lerp(y, pos.y * obj_floorgenerator.chamber_height + obj_floorgenerator.chamber_height/2, lp);
		lp += 0.025;
	}
	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}
if (keyboard_check_pressed(ord("Z")))
{
	if (zoom)
	{
		camera_set_view_size(cam, room_width, room_height);
		camera_set_view_pos(cam, 0, 0);
		var floor_pos = new Vector2(FLOOR_WIDTH div 2, FLOOR_HEIGHT div 2);
		pos = floor_pos;
	}
	else
	{
		camera_set_view_size(cam, obj_floorgenerator.chamber_width * 1.1, obj_floorgenerator.chamber_height * 1.1);
		x = pos.x * obj_floorgenerator.chamber_width + obj_floorgenerator.chamber_width/2;
		y = pos.y * obj_floorgenerator.chamber_height + obj_floorgenerator.chamber_height/2;
	}
	view_w_half = camera_get_view_width(cam)/2;
	view_h_half = camera_get_view_height(cam)/2;
	zoom = !zoom;
}