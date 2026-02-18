/*
//Test suite for regression tests
suite(function() {
	//Sections go here 
	//regression tests regarding character function
	describe("obj_character", function() {
		test("Create character, move, & check collision.", function() {
			//test only within rooms
			room = rm_lvl2NEW;
			
			//create the instance
			var _inst = create(683, 384, obj_character);
			
			//check if instance exists
			expect(instance_exists(_inst)).toBeTruthy();
			
			//move the character by holding down
			simulateKeyHold(vk_down);
			
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
				expect(_inst.y).toBe(_inst.yprevious);
				
			}
			
		});
		
		
	});
});

//Test suite for integration tests
suite(function() {
	//integration test regarding level progress from Level 2 to Level 3
	describe("obj_aesInputBox", function() {
		test("Create instance, input correct answer, & go to next level.", function() {
			
			//only need to test in last room of level 2
			room = rm_lvl2_8;
			
			//create instance 
			var _inst = create(683, 384, obj_aesInputBox);
			
			//check that instance exists
			expect(instance_exists(_inst)).toBeTruthy();
			
			//fill in correct answer needed to progress
			_inst.userAnswer[0] = "thecatjumpedhigh";
			
			//run check answer event
			simulateEvent(ev_keypress, 0, _inst);
			
			//room should now be the level 3 room
			expect(room).toBe(rm_lvl3);
			
		});
	});
	
	
});
*/