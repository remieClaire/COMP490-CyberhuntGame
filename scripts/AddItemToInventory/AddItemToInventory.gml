enum Item {
	title,
	Sprite,
	Text,
	Height
}

global.AllItems = ds_grid_create(0, Item.Height);

function AddItemToInventory(attributes){
	ds_grid_resize(global.AllItems, ds_grid_width(global.AllItems) + 1, ds_grid_height(global.AllItems));
	for (var i = 0; i < array_length(attributes); ++i) {
		global.AllItems[# ds_grid_width(global.AllItems) - 1, i] = attributes[i];
	}
}