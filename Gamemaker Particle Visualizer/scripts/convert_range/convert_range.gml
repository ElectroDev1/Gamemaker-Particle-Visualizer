/// @desc convert_range
/// @arg from_range
/// @arg to_range
/// @arg pos
function convert_range(argument0, argument1, argument2) {

	/******************************************************************************
	Example:

	convert_range(1000, 1, 500) -> 0.5 (from 0..1000 to 0..1)
	******************************************************************************/

	var in = argument0;
	var out = argument1;
	var pos = argument2;

	var p = 100 / in * pos;
	var res = out * p / 100;

	return res;



}
