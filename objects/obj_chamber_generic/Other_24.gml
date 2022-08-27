/// @description ?

// Inherit the parent event
event_inherited();

// Calculate path to center

if !(path_to_center)
{
	
}
for (var i = 0; i < array_length(free_path); i++)
{
	if (blocked_path[i])
	{
		continue;
	}
	if (blocked_paths >= 2)
	{
		free_path[i] = true;
	}
	else
	{
		if (i > 2 || random(4) < 1)
		{
			free_path[i] = true;
		}
	}
}
// Add walls between paths
/*
for (var i = 0; i < array_length(blocked_path); i++)
{
	var rot = new Vector2(cos(degtorad(i*90)), sin(degtorad(i*90)));
	var path_blocker = obj_floorgenerator.floor_map[pos.x + rot.x, pos.y + rot.y];
	if (path_blocker == noone)
	{
		
	}
	else
	{
		if (path_blocker.object_index == obj_chamber_generic && path_blocker.generated)
		{
			if (free_path[i] || path_blocker.free_path[(i + 2) % 4])
			{				
				if (path_blocker.blocked_path[(i + 2) % 4])
				{
					path_blocker.blocked_path[(i + 2) % 4] = false;
					path_blocker.blocked_paths--;
				}
				blocked_path[i] = false;
				continue;
			}
			var path_use = blocked_paths;
			if (path_use < path_blocker.blocked_paths)
			{
				path_use = path_blocker.blocked_paths;
			}
	
			if (path_use < 3 && random(9) > path_use^2)
			{
				blocked_path[i] = true;
				blocked_paths++;
		
				path_blocker.blocked_path[(i + 2) % 4] = true;
				path_blocker.blocked_paths++;
			}
		}
	}
	
}
*/