/// @description Insert description here
// You can write your code in this editor
if(State==EditorState.editing){

   
   draw_set_alpha(0.2);draw_set_color(c_black);
   
   backoff+=0.000;
   
  
   
   _sqR = 100;
   
    if(backoff>=1){backoff=0;}
   
   for(var b=0; b<floor(room_height/_sqR)+2; b++){
   
   
   for(var a=0; a<floor(room_width/_sqR)+2; a++){
	   if((a+b)==0)||((a+b)%2==0){
	   draw_rectangle(_sqR*a-_sqR*backoff,
	   _sqR*b-_sqR*backoff,
	   _sqR+_sqR*a-_sqR*backoff,
	   _sqR+_sqR*b-_sqR*backoff,0);   
	   }
   }
   
   }
   
   draw_set_alpha(0.6);draw_set_color(c_black);
   draw_rectangle(0,0,room_width,room_height,0);
   
   
   if(debug_over){
   draw_set_alpha(1);draw_set_color(c_white);
   
   draw_set_alpha(0.15);
   draw_rectangle(part_X-emit_W/2,part_Y-emit_H/2,
				 part_X+emit_W/2,part_Y+emit_H/2,0);
   }
   draw_set_alpha(1);draw_set_color(c_white);

}