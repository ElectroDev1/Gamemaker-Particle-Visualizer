/// @description
draw_set_font(fnt_game);

var _W = room_width;
var _H = room_height;

switch(State){
 
       case EditorState.wait:
	   #region Wait state
	   
	         draw_set_halign(fa_center);draw_set_valign(fa_top);draw_set_color(c_white);
			 draw_text_transformed(_W/2,10,"Gamemaker Particle Visualizer",2,2,0);
		
		     hr(_W/2,10+string_height("H")*2+4,room_width,4,97.5,0);
			 
			 
			 var _X = 26; var _Y = 84; var _sW = 330; var _sH = 440;
			 
			 draw_set_halign(fa_left);draw_set_valign(fa_bottom);
			 //draw_text(_X-1,_Y-2,"Recent Particles");
			 
			 if(!surface_exists(surf_story)){
			    surf_story = surface_create(_sW,_sH);	 
			 }else{
			    
				surface_set_target(surf_story);
				
				  draw_clear_alpha(c_white,0);
			
			      draw_set_colour(Color[1]);
				  draw_rectangle(0,0,_sW+1,_sH+1,0);
				  draw_set_color(c_white);
				  
				  draw_set_halign(fa_left);draw_set_valign(fa_top);
				  
				  /*for(var a=0; a<ds_list_size(FileList); a++){
					  
					  if(!file_exists(FileList[| a][0])){
						 ds_list_clear(FileList);
						 updateList();
					  }else{
					  
					  var Y_ = 4+string_height("M")/2+(string_height("M")*1.5+48)*a;
					  draw_set_halign(fa_left);draw_set_valign(fa_top);
					  
					  _hover = mouse_in_rectangle(_X+4,_Y+Y_-string_height("M")/2-1,
					                              _X+_sW-4,_Y+Y_+string_height("M")+1+7);
					  
					  if(_hover){
						 draw_set_alpha(0.4);
						 draw_rectangle(4,Y_-string_height("M")/2-1,_sW-4,Y_+string_height("M")+1+7,0);
						 draw_set_alpha(1);
						 
						 if(mouse_check_button_pressed(mb_left))&&(file_exists(FileList[| a][0])){
							if(file_exists(FileList[| a][0])){
							State=EditorState.editing;
					        create_default_particle();
			                FILE=FileList[| a][0];
					        alarm[1]=2; 
							}
						 }
						 
					  }

                      draw_sprite_stretched(FileIcons[| a],0,8,Y_-8,64,64)

					  draw_text(48,Y_-2,FileList[| a][1]);
					  
					  }
					  
				  }
			      */
			      draw_text(8,8,"Thank you for using\nGamemaker Particle\nVisualizer"+
				  "\n\nMake sure to copy\nthe script in the\nReadME file, you\ncan import it in "
				  +"\nyour projects to\nquickly recreate\nthe particles you\nmade.\n\n"+
				  "If you have any\nsuggestions or want\nto report bugs, you\ncan contact me on\n"
				  +"Discord through the\nlink in the bottom\nbutton.\n\n\n-Electro");
			   
				surface_reset_target();
				
				draw_surface(surf_story,_X,_Y);
				
			 }
			 
			 
			 
			 var _sW = 290; var _sH = 400;
			 var _X = room_width-26-_sW; var _Y = 84; 
			 
			 draw_set_halign(fa_left);draw_set_valign(fa_bottom);
			 draw_text(_X-1,_Y-2,"Options");
			 
			 if(!surface_exists(surf_options)){
			    surf_options = surface_create(_sW,_sH);	 
			 }else{
			    
				surface_set_target(surf_options);
				
				  draw_clear_alpha(c_white,0);
			
			      draw_set_colour(Color[1]);
				  draw_rectangle(0,0,_sW+1,_sH+1,0);
				  draw_set_color(c_white);
				  
				  
				  for(var a=0; a<array_length(settingVal); a++){
					  
					  var Y_ = 4+string_height("M")/2+(string_height("M")*1.5+4)*a;
					  draw_set_halign(fa_left);draw_set_valign(fa_top);
					  var _title  = settingVal[a][0];
					  var _string = settingVal[a][1];
					  var _value  = settingVal[a][2];
					  var _type   = settingVal[a][3];
					  var _num    = settingVal[a][4];
					  
					  _hover = mouse_in_rectangle(_X+4,_Y+Y_-string_height("M")/2-1,
					                              _X+_sW-4,_Y+Y_+string_height("M")+1);
					  
					  if(_hover){
						 draw_set_alpha(0.4);
						 draw_rectangle(4,Y_-string_height("M")/2-1,_sW-4,Y_+string_height("M")+1,0);
						 draw_set_alpha(1);
						 
						 if(mouse_check_button_pressed(mb_left)){
						    if(_type=="bool"){
							   settingVal[a][2]=!settingVal[a][2];	
							}
							if(_type=="int"){
							   settingVal[a][2]++;
			                   
							   if(settingVal[a][2]>_num-1){settingVal[a][2]=0;}
							}
							
							switch(a){
							   case 0: global.pallete=settingVal[a][2]; break;	
							   case 1: global.RPC=settingVal[a][2]; break;	
							   case 2: ds_list_clear(FileList); ds_list_clear(FileIcons); break;
							}
						 }
						 
					  }
					  
					  var _U = "";
					  if(_type!="input"){ _U = ":"; }
					  
					  draw_text(8,Y_,_title+_U);
					  
					  if(_type=="bool"){
						 var _F = "ON";
						 if(!_value){ _F = "OFF"; }
						 draw_set_halign(fa_right);
						 draw_text(_sW-8,Y_,_F);
					  }
					  
					  if(_type=="int"){
						 var _F = string(_value+1);
						 var _Max = string(_num);
						 draw_set_halign(fa_right);
						 draw_text(_sW-8,Y_,_F+"/"+_Max);
					  }
					  
					 
					  
				  }
			 
				surface_reset_target();
				
				draw_surface(surf_options,_X,_Y);
				
			 }
			 
			 draw_set_halign(fa_center); draw_set_valign(fa_middle);
			 
			 draw_set_colour(Color[1]);
			 
			 var _STR = "New particle"; var _X = room_width/2+20; var _Y = 124;
			 
			 draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0);
			 
			 if(mouse_in_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8)){
				 
			    draw_set_color(c_white)draw_set_alpha(0.2);
				draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0)
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){
				   
				   surface_free(surf_story);
				   surface_free(surf_options);
				   CurrentFile=-4;
				   FilePath = "";
				   
				   create_default_particle();
				   State=EditorState.editing;
				   
				   
				}
				
			 }
			 
			 draw_set_colour(c_white);
			 draw_text(_X,_Y,_STR);
			 
			 
			 draw_set_colour(Color[1]);
			 
			 var _STR = "Open particle"; var _X = room_width/2+20; var _Y = 184;
			 
			 draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0);
			 
			 if(mouse_in_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8)){
				 
			    draw_set_color(c_white)draw_set_alpha(0.2);
				draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0)
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){
					
					var _file = get_open_filename("*"+Extension,"");
							
		            if(_file!="")&&(file_exists(_file)){
		               if(!is_extension(_file,Extension)){show_message("ERROR - Selected file is not a "+Extension+" file");}
			           else{
					   State=EditorState.editing;
					   create_default_particle();
			           FILE=_file;
					   alarm[1]=2;
		               }
		            }
				
				}
				
			 }
			 
			 draw_set_colour(c_white);
			 draw_text(_X,_Y,_STR);
			 
			 
			 draw_set_colour(Color[1]);
			 
			 var _STR = "More by Electro"; var _X = room_width/2+20; var _Y = room_height-34;
			 
			 draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0);
			 
			 if(mouse_in_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8)){
				 
			    draw_set_color(c_white)draw_set_alpha(0.2);
				draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0)
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){
				   execute_shell_simple("https://electrodev1.github.io/");	
				}
				
			 }
			 
			 draw_set_colour(c_white);
			 draw_text(_X,_Y,_STR);
			 
			 
			 draw_set_colour(Color[1]);
			 
			 var _STR = "More tools"; var _X = room_width/2+20; var _Y = room_height-95;
			 
			 draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0);
			 
			 if(mouse_in_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8)){
				 
			    draw_set_color(c_white)draw_set_alpha(0.2);
				draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0)
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){
				   execute_shell_simple("https://electrodev1.github.io/games#tools");	
				}
				
			 }
			 
			 draw_set_colour(c_white);
			 draw_text(_X,_Y,_STR);
			 
			 draw_set_colour(Color[1]);
			 
			 var _STR = "Open ReadME"; var _X = room_width/2+20; var _Y = 244;
			 
			 draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0);
			 
			 if(mouse_in_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8)){
				 
			    draw_set_color(c_white)draw_set_alpha(0.2);
				draw_rectangle(_X-string_width(_STR)/2-8,
			 _Y-string_height(_STR)/2-8,
			 _X+string_width(_STR)/2+8,
			 _Y+string_height(_STR)/2+8,0)
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){
				   execute_shell_simple(LocalFolder+"/ReadME.txt");	
				}
				
			 }
			 
			 draw_set_colour(c_white);
			 draw_text(_X,_Y,_STR);
			 
			 draw_set_halign(fa_right);draw_set_valign(fa_bottom);
			 draw_text(room_width-8,room_height-8,string_replace(windowName,"Gamemaker Particle Visualizer ",""));
			 
	   #endregion
	   
	   
	   break;

       case EditorState.editing:
	   #region Editing state
	    
		   if(part_system_exists(syst)){
			   
			  if(show_dir){
				 draw_set_color(c_white);
				 draw_circle(part_X,part_Y,70,1);
				 
				 draw_set_colour(rgb_to_bgr($04FF00));
				 
				 draw_line_width(part_X,part_Y,part_X+lengthdir_x(72,dir_min),part_Y+lengthdir_y(72,dir_min),4);
				 
				 draw_set_colour(c_red);
				 draw_line_width(part_X,part_Y,part_X+lengthdir_x(72,dir_max),part_Y+lengthdir_y(72,dir_max),4);
			  }
			  
			  if(debug_over){
				  
			     draw_set_colour(c_red);
				 
				 draw_rectangle(part_X-emit_W/2,part_Y-emit_H/2,
				 part_X+emit_W/2,part_Y+emit_H/2,1);
				 draw_circle(part_X+emit_W/2,part_Y+emit_H/2,8,0);
				 
				 draw_circle(part_X,part_Y,8,1);
				 
				 gpu_set_blendmode(bm_normal)
				 
				 if(point_in_circle(mouse_x,mouse_y,part_X,part_Y,24)){
					 if(mouse_check_button_pressed(mb_left)){
					    moving=1;	 
					 }
				 } 
				 
				 if(point_in_circle(mouse_x,mouse_y,
				 part_X+emit_W/2,part_Y+emit_H/2,10
				 )){
					 if(mouse_check_button_pressed(mb_left)){
					    moving=4;	 
					 }
				 }
				 
				 draw_set_colour(c_red);
				 if(moving==0)||(moving==2){
			     draw_line_width(part_X,part_Y,part_X+78,part_Y,4);
				 draw_triangle(part_X+80,part_Y,part_X+70,part_Y-10,part_X+70,part_Y+10,0)
				 
				 if(mouse_in_rectangle(part_X,part_Y-5,part_X+80,part_Y+5)){
				    if(mouse_check_button_pressed(mb_left)){moving=2;}	 
				 }
				 }
				 if(moving==2){
				    draw_line(0,part_Y,room_width,part_Y);	 
				 }
				 
				 draw_set_colour(rgb_to_bgr($04FF00));
				 
				 if(moving==0)||(moving==3){
				 draw_line_width(part_X,part_Y,part_X,part_Y-78,4);
				 draw_triangle(part_X,part_Y-80,part_X-10,part_Y-70,part_X+10,part_Y-70,0)
				 
				 if(mouse_in_rectangle(part_X-5,part_Y-80,part_X+5,part_Y)){
				    if(mouse_check_button_pressed(mb_left)){moving=3;}	 
				 }
				 }
				 if(moving==3){
				    draw_line(part_X,0,part_X,room_height);	 
				 }
				 
			  }
			  
			  
			  draw_set_colour(Color[0]);
			  
			  draw_rectangle(0,0,room_width/2-_table_R_X,room_height,0);
			  draw_rectangle(0,0,room_width,room_height/2-_table_R_Y,0);
			  draw_rectangle(room_width/2+_table_R_X,0,room_width,room_height,0);
			  draw_rectangle(0,room_height/2+_table_R_Y,room_width,room_height,0);
			  
			  if(mouse_in_rectangle(room_width/2-_table_R_X,room_height/2-_table_R_Y,room_width/2+_table_R_X,room_height/2+_table_R_Y)){
				 if(mouse_wheel_down())&&(part_type_exists(type)){Scale-=1 Scale=max(Scale,0); }   
				 if(mouse_wheel_up())&&(part_type_exists(type)){Scale+=1 }   
			  }
			  
			  draw_set_color(c_white);
			  
			  //Type
			  
			  #region Type menu
			  
			  
			  draw_set_color(Color[1]);
			  draw_rectangle(room_width/2+_table_R_X+8,
			  room_height/2-_table_R_Y+8,
			  room_width-8,room_height/2-_table_R_Y+8+32,0);
			  
			  var _page = "Type";
			  
			  switch(Page){ case 0: _page="Look"; break; case 1: _page="Sprite/Shape"; break; case 2: _page="Dir/Orient."; break;
				             case 3: _page="Grav/Speed"; break; case 4: _page="Size/Life/.."; break; }
			  
			  draw_set_halign(fa_left);draw_set_valign(fa_top);draw_set_color(c_white);
			  draw_text(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+16,_page);
			  
			  draw_set_halign(fa_right);
			  draw_text(room_width-8-4,room_height/2-_table_R_Y+16,">");
			  
			  if(mouse_in_rectangle(room_width/2+_table_R_X+8,
			  room_height/2-_table_R_Y+8,
			  room_width-8,room_height/2-_table_R_Y+8+32)){
				
				draw_set_alpha(0.2);
				draw_rectangle(room_width/2+_table_R_X+8,
			    room_height/2-_table_R_Y+8,
			    room_width-8,room_height/2-_table_R_Y+8+32,0);
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){ Page=(Page+1)%5;surf_H=0; }
				  
			  }
			  
			    var _SW = (room_width-8)-(room_width/2+_table_R_X+8);
				var _SH = 350;
			  if(!surface_exists(surf_options)){
				
				 surf_options=surface_create(_SW,_SH);
				 
			  }else{
				
				 surface_set_target(surf_options);
				 
				 draw_clear_alpha(c_white,0);
				 draw_set_colour(Color[1]);
				 draw_rectangle(0,0,_SW,_SH,0);
				 draw_set_colour(Color[0]);
				 draw_rectangle(0,0,_SW,5,0);
				 draw_set_color(c_white);
				 
				 switch(Page){
				
				        case 0:
						#region Type - graphics
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<9; a++){
						
						    if(a==0){_T="Alpha 1: " _I=string(Alpha[0]); _R="Change first alpha value";}
						    if(a==1){_T="Alpha 2: " _I=string(Alpha[1]); _R="Change middle alpha value";}
						    if(a==2){_T="Alpha 3: " _I=string(Alpha[2]); _R="Change final alpha value";}
						    if(a==3){_T="Blend: "   _I=is_on(Blend); _R="Toggle additive blending";}
							if(a==4){_T="Color 1: " _I=""; _R="Change first color value";}
						    if(a==5){_T="Color 2: " _I=""; _R="Change middle color value";}
						    if(a==6){_T="Color 3: " _I=""; _R="Change final color value";}
						    if(a==7){_T="Scale X: " _I=string(type_S[0]); _R="Change particle width";}
						    if(a==8){_T="Scale H: " _I=string(type_S[1]); _R="Change particle height";}
						
						switch(a){
						  case 0: case 1: case 2:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									msg_alpha[a]=get_string_async("Set alpha "+string(a+1)+" value (must be an integer)",""); 
								}
						    }
						 
						 break;
						 
						 case 3:
						 
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									Blend = !Blend;
								}
						    }
						 
						 break;
						 
						 case 4: case 5: case 6:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									msg_color[a-4]=get_string_async("Set color "+string(a-4+1)+" value (must be an hex value)",""); 
								}
						    }
							
							var _col = rgb_to_bgr(PartColor[a-4]);
							
							draw_rectangle_colour(_SW-8-24,20+32*a,_SW-8,20+32*a+16,c_black,c_black,c_black,c_black,0);
							draw_rectangle_colour(_SW-8-23,20+32*a+1,_SW-8-1,20+32*a+16-1,
							_col,_col,_col,_col,0);
						 
						 break;
						 
						 case 7: case 8:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
								 
								 if(a==7){var _l = "width";}else{var _l = "height";}
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									msg_scale[a-7]=get_string_async("Set "+string(_l)+" value (must be an integer)",""); 
								}
						    }
						 
						 break;
 
						}
						
						draw_set_halign(fa_left)draw_set_valign(fa_top);
						draw_text(8,20+32*a,_T);
						draw_set_halign(fa_right)
						draw_text(_SW-8,20+32*a,_I);
						
						}
						#endregion
						break;
						
						case 1:
						#region Type - Sprite and distribution
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<8; a++){
						
						    if(a==0){_T="Sprite: " _I=is_on(Use_sprite); _R="Use particle sprites";}
						    if(a==1){_T="Animate: " _I=is_on(Sprite_animate); _R="Use the sprite's animation";}
						    if(a==2){_T="Stretch: " _I=is_on(Sprite_anim_stretch); _R="Match animation to life";}
						    if(a==3){_T="Random: " _I=is_on(Sprite_img_random); _R="Use random image";}
						    if(a==4){
								_T="---" _I=""; _R="";
								if(Sprite>0){
								_T="Delete sprite" _I=""; _R="";
								}
							}
							if(a==5){_T="";_I="";_R="";}
							if(a==6){_T="Shape:";_I="\n"+emitS_names[emit_shape];_R="Change emitter shape";}
							if(a==7){_T="\nDistr:";_I="\n\n"+emitD_names[emit_distr];_R="Change emitter distribution";}

						
						switch(a){
						  case 0: case 1: case 2: case 3:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									if(a==0){Use_sprite=!Use_sprite;}
									if(a==1){Sprite_animate=!Sprite_animate;}
									if(a==2){Sprite_anim_stretch=!Sprite_anim_stretch;}
									if(a==3){Sprite_img_random=!Sprite_img_random;}
									unsaved=true;
								}
						    }
						 
						 break;
						 
						 case 4:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a))
							   
							   &&(Sprite>0)
							   {
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
								 
								 if(mouse_check_button_pressed(mb_left)){
								    sprite_delete(SpriteArr[| Sprite]);
									sprite_delete(IconArr[| Sprite]);
									ds_list_delete(SpriteArr,Sprite);
									ds_list_delete(IconArr,Sprite);
									Sprite=0;
									unsaved=true;
								 }
						 
						    }
						 break;
						 
						 case 6:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")*2+4+32*a))
							   {
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")*2+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
								 
								 if(mouse_check_button_pressed(mb_left)){
									emit_shape=(emit_shape+1)%4; 
									unsaved=true;
								 }
						 
						    }
						 break;
						 
						 case 7:
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a+string_height("M"),
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")*3+4+32*a))
							   {
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a+string_height("M"),_SW-8,20+string_height("M")*3+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
								 
								 if(mouse_check_button_pressed(mb_left)){
									emit_distr=(emit_distr+1)%3; 
									unsaved=true;
								 }
						 
						    }
						 break;
						 
						}
						
						draw_set_halign(fa_left)draw_set_valign(fa_top);
						draw_text(8,20+32*a,_T);
						draw_set_halign(fa_right)
						draw_text(_SW-8,20+32*a,_I);
						
						}
						#endregion
						break;
						
						case 2:
						#region Type - direction
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<9; a++){
						
						    if(a==0){_T="Dir min: " _I=string(dir_min); _R="Minimum direction";}
						    if(a==1){_T="Dir max: " _I=string(dir_max); _R="Maximum direction";}
                            if(a==2){_T="Dir inc: " _I=string(dir_incr); _R="Direction increase";}
                            if(a==3){_T="Dir wig: " _I=string(dir_wiggle); _R="Direction wiggle";}
							
							if(a==4){_T="Ang min: " _I=string(ang_min); _R="Minimum angle";}
						    if(a==5){_T="Ang max: " _I=string(ang_max); _R="Maximum angle";}
                            if(a==6){_T="Ang inc: " _I=string(ang_incr); _R="Angle increase";}
                            if(a==7){_T="Ang wig: " _I=string(ang_wiggle); _R="Angle wiggle";}
                            if(a==8){_T="Relative: " _I=is_on(ang_relative); _R="Angle relative to motion";}
						
                       
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									if(a==0){dir_quest[0]=get_string_async("Set maximum direction"+" value (must be an integer)","");}
									if(a==1){dir_quest[1]=get_string_async("Set minimum direction"+" value (must be an integer)","");}
									if(a==2){dir_quest[2]=get_string_async("Set direction increase"+" value (must be an integer)","");}
									if(a==3){dir_quest[3]=get_string_async("Set direction wiggle"+" value (must be an integer)","");}
									
									if(a==4){ang_quest[0]=get_string_async("Set maximum angle"+" value (must be an integer)","");}
									if(a==5){ang_quest[1]=get_string_async("Set minimum angle"+" value (must be an integer)","");}
									if(a==6){ang_quest[2]=get_string_async("Set angle increase"+" value (must be an integer)","");}
									if(a==7){ang_quest[3]=get_string_async("Set angle wiggle"+" value (must be an integer)","");}
									
									if(a==8){ang_relative=!ang_relative;}
								}
						    }
						
						draw_set_halign(fa_left)draw_set_valign(fa_top);
						draw_text(8,20+32*a,_T);
						draw_set_halign(fa_right)
						draw_text(_SW-8,20+32*a,_I);
						
						}
						#endregion
						break;
						
						case 3:
						#region Type - gravity speed
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<6; a++){
						
						    if(a==0){_T="Spd min: " _I=string(Spd_min); _R="Minimum direction";}
						    if(a==1){_T="Spd max: " _I=string(Spd_max); _R="Maximum direction";}
                            if(a==2){_T="Spd incr: " _I=string(Spd_incr); _R="Direction increase";}
                            if(a==3){_T="Spd wig: " _I=string(Spd_wiggle); _R="Direction wiggle";}
							
							if(a==4){_T="Grav amt: " _I=string(Grav_amt); _R="Gravity amount";}
						    if(a==5){_T="Grav dir: " _I=string(Grav_dir); _R="Gravity direction";}
						
                       
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									if(a==0){spd_quest[0]=get_string_async("Set maximum direction"+" value (must be an integer)","");}
									if(a==1){spd_quest[1]=get_string_async("Set minimum direction"+" value (must be an integer)","");}
									if(a==2){spd_quest[2]=get_string_async("Set direction increase"+" value (must be an integer)","");}
									if(a==3){spd_quest[3]=get_string_async("Set direction wiggle"+" value (must be an integer)","");}
									
									if(a==4){grav_quest[0]=get_string_async("Set gravity amount"+" value (must be an integer)","");}
									if(a==5){grav_quest[1]=get_string_async("Set gravity direction"+" value (must be an integer)","");}

								}
						    }
						
						draw_set_halign(fa_left)draw_set_valign(fa_top);
						draw_text(8,20+32*a,_T);
						draw_set_halign(fa_right)
						draw_text(_SW-8,20+32*a,_I);
						
						}
						#endregion
						break;
						
						case 4:
						#region Type - size life
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<7; a++){
						
						    if(a==0){_T="Siz min: " _I=string(Size_min); _R="Minimum size";}
						    if(a==1){_T="Siz max: " _I=string(Size_max); _R="Maximum size";}
                            if(a==2){_T="Siz incr: " _I=string(Size_incr); _R="Size increase";}
                            if(a==3){_T="Siz wig: " _I=string(Size_wiggle); _R="Size wiggle";}
							
							if(a==4){_T="Life min: " _I=string(Life_min); _R="Minimum lifetime";}
						    if(a==5){_T="Life max: " _I=string(Life_max); _R="Maximum direction";}
							
						    if(a==6){_T="Number: " _I=string(emit_n); _R="Particles/frame";}
						
                       
						    if(mouse_in_rectangle(room_width/2+_table_R_X+8+4,room_height/2-_table_R_Y+8+32+20-8+32*a,
						       room_width/2+_table_R_X+8+_SW-8,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a)){
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a,_SW-8,20+string_height("M")+4+32*a,0);
						         draw_set_alpha(1);
						   
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									if(a==0){size_quest[0]=get_string_async("Set maximum size"+" value (must be an integer)","");}
									if(a==1){size_quest[1]=get_string_async("Set minimum size"+" value (must be an integer)","");}
									if(a==2){size_quest[2]=get_string_async("Set size increase"+" value (must be an integer)","");}
									if(a==3){size_quest[3]=get_string_async("Set size wiggle"+" value (must be an integer)","");}
									
									if(a==4){life_quest[0]=get_string_async("Set minimum life amount"+" value (must be an integer)","");}
									if(a==5){life_quest[1]=get_string_async("Set maximum life amount"+" value (must be an integer)","");}
									if(a==6){emit_n_q=get_string_async("Set emitter number"+" value (must be an integer)","");}

								}
						    }
						
						draw_set_halign(fa_left)draw_set_valign(fa_top);
						draw_text(8,20+32*a,_T);
						draw_set_halign(fa_right)
						draw_text(_SW-8,20+32*a,_I);
						
						}
						#endregion
						break;
						
				
				 }
				 
				 surface_reset_target();
				 
				 draw_surface_part(surf_options,0,0,_SW,_SH*surf_H,room_width/2+_table_R_X+8,room_height/2-_table_R_Y+8+32);
				
			  }
			  #endregion
			  		  
			  #region Sprite menu
			  
			  
			  draw_set_color(Color[1]);
			  draw_rectangle(8,
			  room_height/2-_table_R_Y+8,
			  225+8,room_height/2-_table_R_Y+8+32,0);
			  
			  draw_set_color(c_white)
			  
			  if(mouse_in_rectangle(8,
			  room_height/2-_table_R_Y+8,
			  225+8,room_height/2-_table_R_Y+8+32)){
				
				draw_set_alpha(0.2);
				draw_rectangle(8,
			    room_height/2-_table_R_Y+8,
			    225+8,room_height/2-_table_R_Y+8+32,0);
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){ Page2=(Page2+1)%2;surf_H2=0; }
				  
			  }
			  
			  
			  var _page = "Sprites";	
			  
			  switch(Page2){ case 0: _page="Shapes"; break; case 1: _page="Sprites"; break; }
			  
			  draw_set_halign(fa_left);draw_set_valign(fa_top);draw_set_color(c_white);
			  draw_text(8+4,room_height/2-_table_R_Y+16,_page);
			  
			  draw_set_halign(fa_right);
			  draw_text(225+8-4,room_height/2-_table_R_Y+16,">");
			  
			    var _SW = 225;
				var _SH = 350;
			  if(!surface_exists(surf_story)){
				
				 surf_story=surface_create(_SW,_SH);
				 
			  }else{
				
				 surface_set_target(surf_story);
				 
				 draw_clear_alpha(c_white,0);
				 draw_set_colour(Color[1]);
				 draw_rectangle(0,0,_SW,_SH,0);
				 draw_set_colour(Color[0]);
				 draw_rectangle(0,0,_SW,5,0);
				 draw_set_color(c_white);
				 
				 switch(Page2){
				
				        case 0:
						#region Shape
						var _T = "Default"; var _R = "No description set"; var _I ="-"
						for(var a=0; a<array_length(Shapes); a++){
						
						    var _p=0; if(PartShape==Shapes[a]){_p=1;}  _T=Shapename[a]+": " _I=is_on(_p); _R="";
                      
							if(mouse_in_rectangle(8+4,room_height/2-_table_R_Y+8+32+20-8+32*a+Yoffset,
						       _SW+8
							   ,room_height/2-_table_R_Y+8+32+20+string_height("M")+4+32*a+Yoffset))
							   &&(mouse_y<room_height/2-_table_R_Y+8+32+_SH)
							   &&(mouse_y>room_height/2-_table_R_Y+8+32)
							   {
								   
						         draw_set_alpha(0.4);
						         draw_rectangle(4,20-8+32*a+Yoffset,_SW-8,20+string_height("M")+4+32*a+Yoffset,0);
						         draw_set_alpha(1);
						         
						         Message=_R;
						   
						        if(mouse_check_button_pressed(mb_left)){ 
									PartShape = Shapes[a];
									unsaved=true;
								}
						    }
							
							draw_set_halign(fa_left)draw_set_valign(fa_top);
						    draw_text(8,20+32*a+Yoffset,_T);
						    draw_set_halign(fa_right)
						    draw_text(_SW-8,20+32*a+Yoffset,_I);
 
						}
						
						#endregion
						break;
						
						
						case 1:
						#region Sprites
						var X = 8; var Y = 16+Yoffset2; var W = 64;
					
						for(var a=0; a<ds_list_size(SpriteArr); a++){
						
                            draw_set_colour(c_white);
							
							if(a!=0){ if(a%3==0){ X=8; Y+=W+8; }else{ X+=W+8; } }
							
							draw_rectangle(X,Y,X+W,Y+W,0);
							
							if(mouse_in_rectangle(8+X,room_height/2-_table_R_Y+8+32+Y,
							8+X+W,room_height/2-_table_R_Y+8+32+Y+W))
							&&(mouse_y<room_height/2-_table_R_Y+8+32+_SH)
							   &&(mouse_y>room_height/2-_table_R_Y+8+32)
							{
								
							   if(mouse_check_button_pressed(mb_left)){ Sprite=a; unsaved=true; }	
							   
							   draw_set_color(c_black)draw_set_alpha(0.2);
							   draw_rectangle(X,Y,X+W,Y+W,0);
							   draw_set_color(c_white);draw_set_alpha(1);
							   
							}
							
							
							draw_set_colour(c_white);
							draw_sprite_stretched(IconArr[| a],current_time/500,X+5,Y+5,W-8,W-8)
							
							draw_set_colour(Color[0]);
							if(a==Sprite){
							draw_line_width(X,Y-2,X,Y+W,4); //Left
							draw_line_width(X,Y,X+W+2,Y,4); //Top
							draw_line_width(X+W,Y,X+W,Y+W+2,4); //Right
							draw_line_width(X-2,Y+W,X+W,Y+W,4); //Bottom
							}
							
							
 
						}
						
						#endregion
						break;
						      
				        
				
						
				    }
				
				draw_set_colour(Color[0]);
				 draw_rectangle(0,0,_SW,5,0);
				 draw_set_color(c_white);
				 
				 
				 surface_reset_target();
				 
				 draw_surface_part(surf_story,0,0,_SW,_SH*surf_H2,8,room_height/2-_table_R_Y+8+32);
			  }
			  
			  //Add button
			  draw_set_color(Color[1]);
			  
			  var Y = room_height/2-_table_R_Y+14+32+_SH
			  
			  draw_rectangle(8,
			  Y,225+8,Y+32,0);
			  
			  draw_set_color(c_white);
			  
			  draw_set_halign(fa_left);draw_set_valign(fa_top);draw_set_color(c_white);
			  draw_text(8+4,Y+8,"Add sprite");
			  
			  if(mouse_in_rectangle(8,Y,225+8,Y+32)){
				
				Message="Add a new particle sprite";
				
				draw_set_alpha(0.2);
				draw_rectangle(8,Y,225+8,Y+32,0);
				draw_set_alpha(1);
				
				if(mouse_check_button_pressed(mb_left)){ 
					
					show_debug_message("CREATING A NEW SPRITE");
					show_debug_message("Selecting file")
					
					SpriteFile=get_open_filename("*.png",""); temp_file=SpriteFile;
					
					if(file_exists(SpriteFile))&&(is_extension(SpriteFile,".png")){
						
						temp_pos=0;
						show_debug_message("");
						show_debug_message("Selected file at path"+SpriteFile);
						show_debug_message("Checking for sprite information");
						msg_sprite[0]=get_string_async("How many images should the sprite have?","");
						
					}else{
					   show_message_async("ERROR - Image doesn't exist or isn't a .png file");	
					}
					
				}
				  
			  }
			  
			  #endregion
			  
			  
			  for(var a=0; a<9; a++){
				  
				  var _sprite = spr_back_button;
				  
				  switch(a){ 
					         case 1: _sprite=spr_new_button; break; case 2: _sprite = spr_open_button; break;  
					         case 3: _sprite = spr_newsave_button; break; case 4: _sprite = spr_save_button; break;
							 case 5: _sprite=spr_position_button; break; case 6: _sprite=spr_angle_button; break;
							 case 7: _sprite=spr_resize_button; break; 
							 case 8: _sprite=spr_copy_button; break; 
						   }
				  
				  //Back
				  var _X_ = 6;
				  var _Y_ = 6;
				  
			      draw_rectangle(_X_+(64*a),_Y_,_X_+49+(64*(a)),_Y_+49,0);
			      draw_sprite(_sprite,0,_X_+48/2+1+(64*a),_Y_+48/2+1);
			  
			      if(mouse_in_rectangle(_X_+(64*(a)),_Y_,_X_+49+(64*(a)),_Y_+49)){
					  
				     draw_set_alpha(0.2); draw_set_color(c_black);
				     draw_rectangle(_X_+(64*a),_Y_,_X_+49+(64*(a)),_Y_+49,0);
				     draw_set_alpha(1); draw_set_color(c_white);
					 
					 switch(a){
					    case 0: Message="Home page"; break;
						case 1: Message="New particle"; break;
						case 2: Message="Open particle"; break;
						case 3: Message="Save particle as"; break;
						case 4: Message="Save particle"; break;
						case 5: Message="Show arrows"; break;
						case 6: Message="Show direction"; break;
						case 7: Message="Reset emitter"; break;
						case 8: Message="Copy script"; break;
					 }
				 
				     if(mouse_check_button_pressed(mb_left)){
				    
					    switch(a){
							
						case 0:
						if(!unsaved){
					       free_editor();
						}
						else{
							close_quest_home = show_question_async("File not saved, would you like to save?");
						}
						
						break;
						
						case 1://New blank
						
						if(!unsaved){
						   reset_editor();
						}
						else{
						   close_quest_new = show_question_async("File not saved, would you like to save?");
						}
						
						break;
						
						case 2://Open
						
						   	
						if(!unsaved){
							
							 open_file();
						
						}else{
						
						  close_quest_open = show_question_async("File not saved, would you like to save?");
						
						}
						
						break;
						
						case 3://Save as
						
						var _f;
			  
			            if(CurrentFile==-4){ _f = DefaultName; }
			            else{ _f = CurrentFileName; }
						
						var _path = get_save_filename("*"+Extension,_f+Extension);
						
						if(_path!=""){
							
						   //Get the file's name
						   var _filename = get_file_name(_path,Extension);
						   save_particle(_filename,_path);
						   
						}
						
						break;
						
						case 4://Save
						
						 check_save();
						 
						break;
						
						case 5:
						debug_over=!debug_over;
						break;
						
						case 6:
						show_dir=!show_dir;
						break;
						
						case 7:
						emit_W=20; emit_H=20; part_X=room_width/2; part_Y=room_height/2; Scale=1;
						break;
					
					    case 8:
						copyMainScript();
						break;
					
						}
					  
				     }
					 
			      }
			  }
			  
			  var _f;
			  
			  if(CurrentFile==-4){ _f = DefaultName; }
			  else{ _f = CurrentFileName; }
			  
			  var _y =Extension;
			  if(unsaved==true){_y=Extension+"*";}
			  
			  draw_set_color(c_white);
			  draw_set_halign(fa_right);draw_set_valign(fa_top);
			  draw_text(room_width-8,10,"ZOOM: "+string(Scale+1)+"  FPS: "+string(fps)+
			  "\n\n"+string_replace_all(_f,"\n","")+_y
			  );
			  draw_set_valign(fa_bottom);
			  draw_text(room_width-8,room_height-10,Message);
			  draw_set_halign(fa_left);
			  
			  /*if(Use_sprite)&&(ds_list_size(SpriteArr)>0){ 
			  if(sprite_exists(SpriteArr[| min(ds_list_size(SpriteArr),Sprite) ])){
				  var _s = SpriteArr[| Sprite];
			     draw_text(8,room_height-10,
				 "Img:"+string(sprite_get_number(_s))+" W:"+string(sprite_get_width(_s))+" H:"+string(sprite_get_height(_s))
				 +" Xoff:"+string(sprite_get_xoffset(_s))+" Yoff:"+string(sprite_get_yoffset(_s))
				 );
			  }
			  }*/

			  
		   }
	      
	     
	   #endregion
	   break;

}

