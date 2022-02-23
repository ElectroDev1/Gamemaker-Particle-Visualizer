/// @desc convert_dec_to_bin
/// @arg value
/// @arg [digits]
function convert_dec_to_bin() {

	/******************************************************************************
	Examples:

	convert_dec_to_bin(4504)  -> "1000110011000"
	convert_dec_to_bin(65535) -> "1111111111111111"
	******************************************************************************/

	var dec = abs(argument0);
	var res = "";

	while dec != 0
	{
	    res = string(dec & 1) + res;
	    dec = dec >> 1;
	}

	if res = "" res = "0";

	if argument_count > 1
	{
	    while (string_length(res) < argument[1])
	    {
	        res = "0" + res;
	    }
	}

	return res;



}
