/// @desc draw_set_colour_rgb
/// @arg colour
function draw_set_colour_rgb() {

	/******************************************************************************
	draw_set_colour_rgb($ff0000) -> same as draw_set_colour($0000ff) // c_red
	draw_set_colour_rgb($00ff00) -> draw_set_colour($00ff00) // c_lime
	draw_set_colour_rgb($0000ff) -> draw_set_colour($ff0000) // c_blue
	******************************************************************************/

	var col = abs(argument[0]);
	var c = (col & $ff00) | ((col & $ff) << 16) | ((col & $ff0000) >> 16);

	draw_set_colour(c);



}
