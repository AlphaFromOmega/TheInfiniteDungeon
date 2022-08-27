/// @description ?

// Inherit the parent event
event_inherited();
cam = view_camera[0];

zoom = true;
camera_set_view_size(cam, obj_floorgenerator.chamber_width * 1.1, obj_floorgenerator.chamber_height * 1.1)

view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;

x = room_width/2;
y = room_height/2;
lp = 0;