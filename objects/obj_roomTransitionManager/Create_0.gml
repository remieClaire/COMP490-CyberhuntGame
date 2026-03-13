/*
* This object was made only for the purpose of transferring data over between rooms
* To add any data you want the character to carry over, follow these steps:
* 1. Open the character object
* 2. Under the event "Room End", add obj_dataCarrier.nameOfVariable = nameOfVariable;
* 3. Under the event "Room Start", add nameOfVariable = obj_dataCarrier.nameOfVariable;
*
*/
room_goto(target_room);