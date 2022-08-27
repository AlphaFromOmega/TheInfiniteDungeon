/// @description ?

// Inherit the parent event
event_inherited();

for (var i = 0; i < 4; i++)
{
	blocked_path[i] = false;
}
for (var i = 0; i < 4; i++)
{
	free_path[i] = false;
}
blocked_paths = 0;
path_to_center = false;
center_path = noone;
