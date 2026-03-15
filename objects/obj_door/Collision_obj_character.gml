//passing target_enter value to the player
//other refers to the instance this object is colliding with
/*

*/

if (instance_exists(obj_roomTransitionManager)) exit;
instance_create_depth(0, 0, 0, obj_roomTransitionManager, {target_room, target_entrance});