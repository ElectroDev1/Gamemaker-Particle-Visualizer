/// @desc string_build_comma
/// @arg val
/// @arg [val2
/// @arg val3...]
function string_build_comma() {

	/******************************************************************************
	Examples:

	string_build_comma(100, 10, 25, 30)
	    -> "100, 10, 25, 30"

	"View: " + string_build_comma(view_xview[0], view_yview[0])
	    -> "View: 0, 0"
	******************************************************************************/

	var txt = "";

	for (var i=0; i<argument_count; ++i)
	{
	    txt += string(argument[i]);
	    if i<argument_count-1
	    {
	        txt += ", ";
	    }
	}

	return txt;



}
