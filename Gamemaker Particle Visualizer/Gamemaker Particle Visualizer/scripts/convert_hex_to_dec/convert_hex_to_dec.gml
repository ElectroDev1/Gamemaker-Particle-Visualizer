/// @desc convert_hex_to_dec
/// @arg value
function convert_hex_to_dec(argument0) {

	/******************************************************************************
	Examples:

	convert_hex_to_dec("1E240") -> 123456
	convert_hex_to_dec("FF00FF") -> 16711935
	******************************************************************************/

	var hex = string_upper(argument0);
	var res = 0;

	for (var i=1; i<=string_length(hex); i++)
	{
	    var n = ord(string_char_at(hex, i));
	    res = (res << 4) + (((n + 4) % 23 - 6) & 15);
	}

	return res;



}
