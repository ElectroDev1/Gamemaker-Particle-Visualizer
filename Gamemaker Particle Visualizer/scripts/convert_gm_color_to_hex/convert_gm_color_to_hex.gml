/// @desc convert_gm_color_to_hex
/// @arg color
function convert_gm_color_to_hex() {

	/******************************************************************************
	convert_gm_color_to_hex(c_red)   -> "FF0000"
	convert_gm_color_to_hex(c_green) -> "008000"
	convert_gm_color_to_hex(c_blue)  -> "0000FF"
	******************************************************************************/

	var str = "0123456789ABCDEF";

	var col = abs(argument[0]);
	var dec = (col & $ff00) | ((col & $ff) << 16) | ((col & $ff0000) >> 16);
	var hex = "";

	do
	{
	    var n = dec & $f;
	    hex = string_char_at(str, n + 1) + hex;
	    dec = dec >> 4;
	}
	until (dec == 0);

	while string_length(hex) < 6
	{
	    hex = "0" + hex;
	}

	return hex;



}
