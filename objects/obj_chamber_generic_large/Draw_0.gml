/// @description ?
draw_set_color(c_gray);
draw_set_alpha(0.5);
if !(init)
{
	draw_rectangle(x + 16, y + 16, x + obj_floorgenerator.chamber_width*2 - 16, y + obj_floorgenerator.chamber_height*2 - 16, false);
}
draw_set_color(c_white);
draw_set_alpha(1);