// Inherit the parent event
event_inherited();

//use this if you just want it to trigger dialogue
initText();
audio_play_sound(snd_Brain_Interact, 0, false);

//use this if you want something to happen after dialogue (i.e. dialogue -> puzzle pops up)
/*initTextCallback(function() {
*	code for what you want to happen next
* }
*/