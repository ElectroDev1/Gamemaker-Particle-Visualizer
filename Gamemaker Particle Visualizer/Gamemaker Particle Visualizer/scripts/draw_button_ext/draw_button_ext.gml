function draw_button_ext(x1=0,y1=0,_up=-1,_uptype="click",_content="button",_contentscale=1,_margin=0,_scale=1,_c1=c_white,_c2=c_black){

draw_set_colour(_c1);
draw_rectangle(x1
           ,y1
		   ,x1+(string_width(_content)*_contentscale+_margin*2)*_scale
		   ,y1+(string_height(_content)*_contentscale+_margin*2)*_scale
		   ,0
		   )
		  
draw_set_halign(fa_left)draw_set_valign(fa_top)draw_set_colour(_c2);

draw_text_transformed(x1+(_margin)*_scale,
y1+(_margin*2)*_scale,
_content,_contentscale*_scale,_contentscale*_scale,0);

var output = 0;

if(_uptype=="click"){
	
   if(point_in_rectangle(mouse_x,mouse_y,x1
           ,y1
		   ,x1+(string_width(_content)*_contentscale+_margin*2)*_scale
		   ,y1+(string_height(_content)*_contentscale+_margin*2)*_scale	)){
			
			 if(mouse_check_button_pressed(mb_left)){ output=1; }
			   
		   }
	
}else{ output = _up; }

return output;

}