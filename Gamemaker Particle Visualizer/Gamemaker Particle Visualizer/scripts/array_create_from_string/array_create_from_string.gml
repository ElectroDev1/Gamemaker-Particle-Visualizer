/// @desc array_create_from_string
/// @arg separator
/// @arg is_real
/// @arg string
function array_create_from_string(argument0, argument1, argument2) {

	/******************************************************************************
	Examples:

	res = array_create_from_string(",", false, "10,20,30") -> res[0] = "10"
	                                                          res[1] = "20"
	                                                          res[1] = "30"

	res = array_create_from_string(",", true, "10,20,30")  -> res[0] = 10
	                                                          res[1] = 20
	                                                          res[1] = 30

	res = array_create_from_string(";", false, "A;B;C")    -> res[0] = "A"
	                                                          res[1] = "B"
	                                                          res[1] = "C"
	******************************************************************************/

	var sep = argument0;
	var to_real = argument1;
	var str = argument2;
	var result = 0;

	var cnt = string_count(sep, str);
	for (var i=0; i<cnt; i++)
	{
	    var pos = string_pos(sep, str);
	    if to_real
	        result[i] = real(string_copy(str, 1, pos - 1));
	    else
	        result[i] = string_copy(str, 1, pos - 1);
    
	    str = string_delete(str, 1, pos);
	}

	if string_length(str) > 0
	{
	    if to_real
	        result[i] = real(str);
	    else
	        result[i] = str;
	}

	return result;



}
