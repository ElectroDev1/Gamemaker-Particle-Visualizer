/// @desc convert_bin_to_dec
/// @arg value
function convert_bin_to_dec(argument0) {

	/******************************************************************************
	Examples:

	convert_bin_to_dec("1000110011000")    -> 4504
	convert_bin_to_dec("1111111111111111") -> 65535
	******************************************************************************/

	var bin = argument0;
	var res = 0;

	for (var i=1; i<=string_length(bin); i++)
	{
	    var d = ord(string_char_at(bin, i)) - ord("0");
	    res = (res << 1) + (d & 1);
	}

	return res;



}
