/// @desc convert_dec_to_hex
/// @arg value
/// @arg [digits]
function convert_dec_to_hex() {

	/******************************************************************************
	Examples:

	convert_dec_to_hex(123456, 8)  -> "0001E240"
	convert_dec_to_hex($ff00ff, 8) -> "00FF00FF"
	******************************************************************************/

	var str = "0123456789ABCDEF";

	var dec = abs(argument[0]);
	var hex = "";

	do
	{
	    var n = dec & $f;
	    hex = string_char_at(str, n + 1) + hex;
	    dec = dec >> 4;
	}
	until (dec == 0);

	if argument_count > 1
	{
	    while (string_length(hex) < argument[1])
	    {
	        hex = "0" + hex;
	    }
	}

	return hex;



}
