//@function name(values)
function log_debug(_text)
{
	if (variable_instance_exists(id, "log"))
	{
		log[array_length(log)] = "[DEBUG] - " + string(_text);
	}
	else
	{
		log[0] = "[DEBUG] - " + string(_text);
	}
}
function log_warn(_text)
{
	if (variable_instance_exists(id, "log"))
	{
		log[array_length(log)] = "[WARN] - " + string(_text);
	}
	else
	{
		log[0] = "[WARN] - " + string(_text);
	}
}
function log_error(_text)
{
	if (variable_instance_exists(id, "log"))
	{
		log[array_length(log)] = "[ERROR] - " + string(_text);
	}
	else
	{
		log[0] = "[ERROR] - " + string(_text);
	}
}