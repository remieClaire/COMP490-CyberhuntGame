//retrieve data from data carrier
if (instance_exists(obj_dataCarrier)) {
	targetEnter = obj_dataCarrier.targetEnter;
	
	instance_destroy(obj_dataCarrier);


	//snap character to enter object
	if (instance_exists(targetEnter)) {
		x = targetEnter.x;
		y = targetEnter.y;
	}
}