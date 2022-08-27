/// @description ?
if (init)
{
	event_user(15)
	init = false;
}
if (!generated && obj_floorgenerator.map_generated)
{
	event_user(14)
	generated = true;
}