/// @desc array_to_string
/// @arg separator
/// @arg pure
/// @arg array
function array_to_string(argument0, argument1, argument2) {

	/******************************************************************************
	Examples:

	data[0] = "Array";
	data[1] = "To";
	data[2] = "String";

	array_to_string(";", true, data)  -> "Array;To;String"
	array_to_string(";", false, data) -> "{ Array; To; String }"
	array_to_string(",", false, data) -> "{ Array, To, String }"

	******************************************************************************/

	var sep = argument0;
	var pure = argument1;
	var array = argument2;

	var str = "";
	if !pure str += "{ ";

	for (var i=0; i<array_length_1d(array); i++)
	{
	    str += string(array[i]);
	    if i<array_length_1d(array)-1
	    {
	        str += sep;
	        if !pure str += " ";
	    }
	}

	if !pure str += " }"

	return str;



}
