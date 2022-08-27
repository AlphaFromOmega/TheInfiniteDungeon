/// @description ?
#macro FLOOR_WIDTH 20
#macro FLOOR_HEIGHT 20

#macro MAX_CHAMBERS 99
#macro MIN_CHAMBERS 99

map_generated = false;
chamber_width = room_width / FLOOR_WIDTH;
chamber_height = room_height / FLOOR_HEIGHT;
randomize();

for (var i = 0; i < FLOOR_WIDTH; i++)
{
	for (var j = 0; j < FLOOR_HEIGHT; j++)
	{
		floor_map[i, j] = noone;
	}
}

var floor_pos = new Vector2(FLOOR_WIDTH div 2, FLOOR_HEIGHT div 2);
floor_map[floor_pos.x, floor_pos.y] = Chamber_Create(floor_pos.x, floor_pos.y, obj_chamber_spawn);
chamber_count = 1;

while (chamber_count < MIN_CHAMBERS)
{
	for (var i = 0; i < FLOOR_WIDTH; i++)
	{
		for (var j = 0; j < FLOOR_HEIGHT; j++)
		{
			if (floor_map[i, j] == noone)
			{
				continue;
			}
			for (var k = 0; k < 4; k++)
			{
				var rot = new Vector2(cos(degtorad(k*90)), sin(degtorad(k*90)));
				var floor_pos = new Vector2(i + sign(rot.x), j + sign(rot.y));
				if (floor_pos.x < 0 || floor_pos.x >= FLOOR_WIDTH || floor_pos.y < 0 || floor_pos.y >= FLOOR_HEIGHT)
				{
					continue;
				}
				if (random(4) < 1 && floor_map[floor_pos.x, floor_pos.y] == noone)
				{
					var suround_check = 0;
					for (var l = 0; l < 4; l++)
					{
						var rot2 = new Vector2(cos(degtorad(l*90)), sin(degtorad(l*90)));
						var floor_pos2 = new Vector2(floor_pos.x + sign(rot2.x), floor_pos.y + sign(rot2.y));
						if (floor_pos2.x < 0 || floor_pos2.x >= FLOOR_WIDTH || floor_pos2.y < 0 || floor_pos2.y >= FLOOR_HEIGHT)
						{
							continue;
						}
						if (floor_map[floor_pos2.x, floor_pos2.y] == noone)
						{
							suround_check++;
						}
					}
					if (suround_check > 2)
					{
						var cham = noone
						cham = obj_chamber_generic
						var _ins = Chamber_Create(floor_pos.x, floor_pos.y, cham);
						_ins.parent_pos = new Vector2(i, j);
						chamber_count++;
					}
					show_debug_message(chamber_count)
				}
				if (chamber_count >= MAX_CHAMBERS)
				{
					break;
				}
			}
			if (chamber_count >= MAX_CHAMBERS)
			{
				break;
			}
		}
		if (chamber_count >= MAX_CHAMBERS)
		{
			break;
		}
	}
}
mapping_grid = mp_grid_create(0, 0, FLOOR_WIDTH, FLOOR_HEIGHT, chamber_width, chamber_height);

for (var i = 0; i < FLOOR_WIDTH; i++)
{
	for (var j = 0; j < FLOOR_HEIGHT; j++)
	{
		if (floor_map[i, j] == noone)
		{
			mp_grid_add_cell(mapping_grid, i, j);
		}
	}
}

map_generated = true;

var temp_map = floor_map

for (var i = 0; i < FLOOR_WIDTH; i++)
{
	for (var j = 0; j < FLOOR_HEIGHT; j++)
	{
		if (temp_map[i, j] == noone)
		{
			temp_map[i, j] = 0;
		}
		else
		{
			temp_map[i, j] = 1;
		}
	}
}
map = instance_create_depth(x, y, 0, obj_map)
map.map = temp_map

var floor_pos = new Vector2(FLOOR_WIDTH div 2, FLOOR_HEIGHT div 2);
camera = instance_create_depth(floor_pos.x, floor_pos.y, 0, obj_camera);
camera.pos = floor_pos