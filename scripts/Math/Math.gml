//@function name(values)
function Vector2(_x, _y) constructor
{
	x = _x;
	y = _y;
}

function bool_to_sign(_value)
{
	if !(_value)
	{
		_value--;
	}
	return _value;
}