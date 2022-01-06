/// @desc print
/// @arg val
/// @arg [val2
/// @arg val3...])
function print() {

	/******************************************************************************
	Examples:

	print("Width: ", 10, ", Height: ", 20)
	    -> "Width: 10, Height: 20"

	print("View x: ", view_xview[0], ", y: ", view_yview[0])
	    -> "View x: 0, y: 0"
	******************************************************************************/

	if argument_count == 0
	{
	    show_debug_message("");
	}
	else
	{
	    var txt = "";

	    for (var i=0; i<argument_count; ++i)
	    {
	        txt += string(argument[i]);
	    }

	    show_debug_message(txt);
	}



}
