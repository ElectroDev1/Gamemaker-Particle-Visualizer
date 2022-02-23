/// @desc draws texture using two vertexes
function draw_texture(argument0, argument1, argument2, argument3, tex) {
	//
	/// @param x1
	/// @param x2
	/// @param width
	/// @param height
	/// @param textureid
	//
	/// (c) 2017 Piotr 'gnysek' Gnys


		var x1 = argument0;
		var y1 = argument1;
	
		var x2 = argument0 + argument2;
		var y2 = argument1 + argument3;
	
		draw_primitive_begin_texture(pr_trianglelist, tex);
 
       draw_vertex_texture(x1,y1, 0, 0);
       draw_vertex_texture(x2,y1, 1, 0);
       draw_vertex_texture(x1,y2, 0, 1);
     
       draw_vertex_texture(x1,y2, 0, 1);
       draw_vertex_texture(x2,y2, 1, 1);
       draw_vertex_texture(x2,y1, 1, 0);
     
   draw_primitive_end();


}
