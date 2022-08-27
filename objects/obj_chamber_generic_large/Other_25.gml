/// @description ?

// Inherit the parent event
event_inherited();

obj_floorgenerator.floor_map[pos.x + 1, pos.y] = self;
obj_floorgenerator.floor_map[pos.x, pos.y + 1] = self;
obj_floorgenerator.floor_map[pos.x + 1, pos.y + 1] = self;