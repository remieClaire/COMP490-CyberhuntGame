// Inherit the parent event
event_inherited();

if (room == rm_lvl2_2 && functional && !instance_exists(obj_lvl2eventHandler)) {
	instance_create_depth(0, 0, 0, obj_lvl2eventHandler);
}