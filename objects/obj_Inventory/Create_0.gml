visible = false;

enum Item {
	title,
	Sprite,
	Text,
	Height
}

global.AllItems = ds_grid_create(0, Item.Height);

menuWidth = 3;
menuHeight = 48;
spacing = 200;
scale = 4;

AddItemToInventory(["Note1", spr_noteHint, "This is a random story about how to solve ceasar cypher. In order to crack it...."])
AddItemToInventory(["Note2", spr_noteHint, "lelelele"])
AddItemToInventory(["Note4", spr_noteHint, "lililili"])
AddItemToInventory(["Note5", spr_noteHint, "bibibibi"])

depth = -10;

var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

room_x = cam_x + cam_w / 2;
room_y = cam_y + cam_h / 2;