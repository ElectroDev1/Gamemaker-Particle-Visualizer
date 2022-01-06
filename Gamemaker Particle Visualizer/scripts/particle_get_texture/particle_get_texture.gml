/// @desc returns pointer to particle textures, so they can be used with draw vertex functions
function particle_get_texture(argument0) {
	//
	/// @param pt_shape_type a particle shape from pt_shape_pixel to pt_shape_snow - see GMS manual for more info
	//
	/// (c) 2017 Piotr 'gnysek' Gnys

		if (!variable_global_exists("__particle_tex_buffer")) {
	
			// ensure particles are on texture pages
			var _pt = part_type_create();
			part_type_destroy(_pt); // free it asap :)
		
			// first get number of existing sprites
			var _frames = 0;
			while(sprite_exists(_frames)) {
				_frames++;
			}
		
			global.__particle_tex_buffer = []; // create array in which we gonna buffer tex pointers
		
			var _pointer_to_first_sprite = real(base_convert(sprite_get_texture(0, 0), 16, 10)); // convert pointer of first sprite to integer number
			var _shape_to_tex = [6, 2, 12, 5, 13, 0, 7, 11, 4, 10, 8, 1, 3, 9]; // a helper array with order of particle sprites
		
			for(var i = 0; i < 14; i++) {
				// convert pointer to first sprite + 0x16 * number of sprites to pointer again
				global.__particle_tex_buffer[i] = ptr(base_convert(_pointer_to_first_sprite + $16 * (_shape_to_tex[i] + _frames), 10, 16));
			}
		}
	
		return global.__particle_tex_buffer[clamp(argument0, pt_shape_pixel, pt_shape_snow)]; // return bufferred address


}
