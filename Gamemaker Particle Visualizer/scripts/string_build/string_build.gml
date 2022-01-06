/// @desc string_build
/// @arg val
/// @arg [val2
/// @arg val3...]
function string_build() {

	/******************************************************************************
	Examples:

	string_build("Count: ", 100)                  -> "Count: 100"
	string_build("Count: ", 100, ", index: ", 5)  -> "Count: 100, index: 5"
	******************************************************************************/

	var txt = "";

	for (var i=0; i<argument_count; ++i)
	{
	    txt += string(argument[i]);
	}

	return txt;



}
