/// @description ?

// Inherit the parent event
event_inherited();

for (var i = 0; i < array_length(blocked_path); i++)
{
	var rot = new Vector2(cos(degtorad(i*90)), sin(degtorad(i*90)));
	var path_blocker = obj_floorgenerator.floor_map[pos.x + rot.x, pos.y + rot.y];
	if (path_blocker == noone)
	{
		blocked_path[i] = true;
		blocked_paths++;
	}
}