//@function name(values)
function Chamber_Create(_grid_x, _grid_y, _chamber)
{
	var _ins = instance_create_layer(obj_floorgenerator.chamber_width * _grid_x, obj_floorgenerator.chamber_height * _grid_y, "Chambers", _chamber);
	floor_map[_grid_x, _grid_y] = _ins
	_ins.pos = new Vector2(_grid_x, _grid_y)
	return _ins;
}