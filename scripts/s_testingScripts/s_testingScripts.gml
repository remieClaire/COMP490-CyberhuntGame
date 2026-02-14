//Test suite for regression tests
suite(function() {
	//Sections go here 
	//regression tests regarding character function
	describe("obj_character", function() {
		test("Create character, move, & check collision.", function() {
			//create the instance
			var _inst = create(683, 384, obj_character);
			
			//check if instance exists
			expect(instance_exists(_inst)).toBeTruthy();
			
			//move the character by holding down
			_inst.simulateKeyHold(vk_down) = true;
			
			//code for object interaction
			var _interact = collision_line(
				_inst.x, 
				_inst.y, 
				_inst.x + lengthdir_x(0, 270), 
				_inst.y + lengthdir_y(0, 270), 
				obj_objInteraction, 
				true, 
				false);
			
			//if there is an object right in front
			if (_interact != noone) {
				//expect character to run into object and not change position
				expect(_inst.y).toBe(yprevious);
				
			}
			
		});
		
		
	});
});

//Test suite for integration tests
suite(function() {
	
});