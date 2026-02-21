// Inherit the parent event
event_inherited();

//prevents dialogue box from spawning repeatedly if it already exists
if (instance_exists(obj_dialogue)) exit;
//will create the dialogue based on the text value of the instance
create_dialogue([{ msg: text1 }]);