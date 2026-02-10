//create the data carrier object if it doesn't already exist
if (!instance_exists(obj_dataCarrier)) {
	instance_create_depth(0, 0, 0, obj_dataCarrier);
}

//send the data we want to carry over to the data carrier object
obj_dataCarrier.targetEnter = targetEnter;
