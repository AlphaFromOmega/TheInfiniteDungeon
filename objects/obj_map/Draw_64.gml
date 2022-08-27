/// @description ?
draw_set_alpha(0.25);
draw_set_color(c_black)
draw_rectangle(0, 0, 256, 256, false);
draw_set_alpha(1);
if (!init)
{
	for (var i = 0; i < FLOOR_WIDTH; i++)
	{
		for (var j = 0; j < FLOOR_HEIGHT; j++)
		{
			if (map[i, j])
			{
				if (obj_camera.pos.x == i && obj_camera.pos.y == j)
				{
					draw_set_color(c_white);
				}
				else
				{
					draw_set_color(c_gray);
				}
				draw_rectangle(256 * i/FLOOR_WIDTH, 256 * j/FLOOR_WIDTH, 256 * (i + 1)/FLOOR_WIDTH, 256 * (j + 1)/FLOOR_WIDTH, false);
				draw_set_color(c_black);
				draw_rectangle(256 * i/FLOOR_WIDTH, 256 * j/FLOOR_WIDTH, 256 * (i + 1)/FLOOR_WIDTH, 256 * (j + 1)/FLOOR_WIDTH, true);
			}
		}
	}
}
draw_set_color(c_white);
