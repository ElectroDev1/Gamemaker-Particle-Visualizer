/// @desc Calls the user event of the specified instance
/// @arg object
/// @arg event
function event_user_object(argument0, argument1) {

	var obj = argument0;
	var event = argument1;

	with obj
	{
	    event_user(event);
	}



}
