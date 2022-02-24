/// @description
if(global.RPC){
	
np_initdiscord("926493198006767676", 0, 0);
np_setpresence_timestamps(ex, 0, 1);
np_setpresence(dis_state, dis_details, "icon", "");
np_update();

}else{np_clearpresence()}

Color[0] = Pal[global.pallete][0];
Color[1] = Pal[global.pallete][1];

switch(State){

       case EditorState.wait:
	       
		    window_set_caption(windowName+" - Home");
			
			dis_details="On the home screen";
			
			var _backid = layer_background_get_id("Background");
            layer_background_blend(_backid,Color[0]);
			
			if (window_command_check(window_command_close)) {
			    game_end();	
			}
 		  
	   break;
	   
	   case EditorState.editing:
	   
	        if (window_command_check(window_command_close)) { 
 
                show_debug_message("Close attempted");
				
				if(!unsaved){game_end();}
				else{
				   	close_quest = show_question_async("File not saved, would you like to save?");
				}
				
			}
	   
	              while(Sprite>=array_length(SpriteArr)){
					 Sprite--; 
				  }

	        var _backid = layer_background_get_id("Background");
            layer_background_blend(_backid,c_white);
			
			var _f;
			  
			  if(CurrentFile==-4){ _f = DefaultName; }
			  else{ _f = CurrentFileName; }
			  
			  
	        
	        window_set_caption(windowName+" - Editing '"+_f+Extension+"'");
			
			dis_details="Editing '"+_f+Extension+"'";
			
			if(part_system_exists(syst)){
				
			if(part_emitter_exists(syst,emit)){
				
			   if(part_type_exists(type)){	
				   
				  if(!paused){ 
			         part_emitter_burst(syst,emit,type,emit_n);
				  }
				  
				  if(keyboard_check_pressed(ord("B"))){
					  part_emitter_burst(syst,emit,type,emit_n);
				  }
				  
			   part_type_alpha3(type,Alpha[0],Alpha[1],Alpha[2]);
			   part_type_blend(type,Blend);
			   part_type_color3(type,rgb_to_bgr(PartColor[0]),rgb_to_bgr(PartColor[1]),rgb_to_bgr(PartColor[2]));
			   part_type_scale(type,type_S[0]*(Scale+1),type_S[1]*(Scale+1));
			   part_type_gravity(type,Grav_amt,Grav_dir);
			   part_type_size(type,Size_min,Size_max,Size_incr,Size_wiggle);
			   part_type_direction(type,dir_min,dir_max,dir_incr,dir_wiggle)
			   part_type_orientation(type,ang_min,ang_max,ang_incr,ang_wiggle,ang_relative);
			   part_type_speed(type,Spd_min,Spd_max,Spd_incr,Spd_wiggle);
			   part_type_life(type,Life_min,Life_max);
			   
			   if(Use_sprite)&&(ds_list_size(SpriteArr)>0){ 
				  if(SpriteArr[| Sprite]!=undefined)&&(sprite_exists(SpriteArr[| Sprite])){
					 part_type_sprite(type,SpriteArr[| Sprite],Sprite_animate,Sprite_anim_stretch,Sprite_img_random); 
				  }
			   }else{
				  if(PartShape<array_length(Shapes)){ 
				     part_type_shape(type,PartShape); 
				  }
			   }
			   
			   }
			   
			   //Region
			   part_emitter_region(syst, emit, part_X-emit_W/2, part_X+emit_W/2,
			   part_Y-emit_H/2, part_Y+emit_H/2, 
	           emitS_types[emit_shape], emitD_types[emit_distr]);
			}
			
			
			}
			
			if(mouse_check_button_released(mb_left)){moving=0;}
			
			var _SW = 225;
			var _SH = 350;
			
			if(mouse_in_rectangle(8,room_height/2-_table_R_Y+8+32,8+_SW,room_height/2-_table_R_Y+8+32+_SH)){
		 	   if(Page2==0){		   
			   if(mouse_wheel_down()){Yoffset-=20;}
			   if(mouse_wheel_up()){Yoffset+=20;}
			   }else{
			   if(mouse_wheel_down()){Yoffset2-=20;}
			   if(mouse_wheel_up()){Yoffset2+=20;}	   
			   }
					
	        }
			
			switch(moving){
			       case 1:
				      if(mouse_x_prev!=mouse_x){
						 part_X+=  mouse_x-mouse_x_prev;
					  }
					  if(mouse_y_prev!=mouse_y){
						 part_Y+=  mouse_y-mouse_y_prev;
					  }
				   break;
				   case 2:
                      if(mouse_x_prev!=mouse_x){
						 part_X+=  mouse_x-mouse_x_prev;
					  }
				   break;
				   case 3:
                      if(mouse_y_prev!=mouse_y){
						 part_Y+=  mouse_y-mouse_y_prev;
					  }
				   break;
				   case 4:
				      if(mouse_x_prev!=mouse_x){
						 emit_W+=  (mouse_x-mouse_x_prev)*2;
					  }
					  if(mouse_y_prev!=mouse_y){
						 emit_H+=  (mouse_y-mouse_y_prev)*2;
					  }
				   break;
			}
			
			surf_H=lerp(surf_H,1,0.1);
			surf_H2=lerp(surf_H2,1,0.1);
			
			part_X=clamp(part_X,room_width/2-_table_R_X,room_width/2+_table_R_X);
			part_Y=clamp(part_Y,room_height/2-_table_R_Y,room_height/2+_table_R_Y);
			emit_W=clamp(emit_W,1,room_width);
			emit_H=clamp(emit_H,1,room_width);
			Yoffset=clamp(Yoffset,-110,0);
			Yoffset2=clamp(Yoffset2,-((ds_list_size(SpriteArr)-1)%3)*74,0);
	   
	   break;

}