//Create a default particle
function create_default_particle(){
PartShape = 12-4;

Use_sprite=false;
ds_list_clear(SpriteArr)
ds_list_clear(IconArr)

unsaved=true;

dir_min=0;
dir_max=359;
dir_incr=0;
dir_wiggle=0;

emit_shape = 0;
emit_distr = 0;

ang_min=0;
ang_max=359;
ang_incr=10;
ang_wiggle=0;
ang_relative=1;

ds_list_add(SpriteArr,spr_example);
ds_list_add(IconArr,spr_example);

part_X = room_width/2;
part_Y = room_height/2;

Alpha = [1,0.75,0.25];
Blend = true;
PartColor = [ make_color_rgb(0,255,255), $FCFFFD, $003BFF]
PartShape = Shapes[2];

Spd_min = 0.1;
Spd_max = 0.5;
Spd_incr=0;
Spd_wiggle=0;

Size_min = 0.1;
Size_max = 0.15;
Size_incr=-.001;
Size_wiggle=0;

Life_min=100;
Life_max=150;

Grav_amt=0.02;
Grav_dir=90;

Sprite_animate = false;
Sprite_anim_stretch = false;
Sprite_img_random = false;

type_S = [1,1];

emit_W = 20;
emit_H = 20;
emit_n = 1;

debug_over = true;

moving=0;

mouse_x_prev=mouse_x;
mouse_y_prev=mouse_y;
	
	
	//System
	//if(part_system_exists(syst)){part_system_destroy(syst);}
	
       syst=part_system_create();
	   part_system_depth(syst,depth-10);
	   part_system_layer(syst,layer_get_id("Particle"))
	   part_system_position(syst,0,0)
	   part_system_automatic_update(syst, true);
	
	   
   //Type
   //if(part_type_exists(type)){part_type_destroy(type);}
   
       type=part_type_create();
	   part_type_shape(type,PartShape); 
	   part_type_scale(type,type_S[0]+Scale,type_S[1]+Scale);
	   part_type_size(type,Size_min,Size_max,Size_incr,Size_wiggle);
	   part_type_color3(type,PartColor[0],PartColor[1],PartColor[2]);
	   part_type_alpha3(type,Alpha[0],Alpha[1],Alpha[2]);
	   part_type_speed(type,Spd_min,Spd_max,Spd_incr,Spd_wiggle);
	   part_type_direction(type,dir_min,dir_max,dir_incr,dir_wiggle);
	   part_type_gravity(type,Grav_amt,Grav_dir);
	   part_type_orientation(type,ang_min,ang_max,ang_incr,ang_wiggle,ang_relative);
	   part_type_life(type,Life_min,Life_max);
	   part_type_blend(type,Blend);
	   
	   
	   
   //Type
   //if(part_type_exists(emit)){part_type_destroy(emit);}
   
       emit=part_emitter_create(syst);
	   
	   part_emitter_region(syst, emit, part_X-emit_W/2, part_X+emit_W/2, part_Y-emit_H/2, part_Y+emit_H/2, 
	                       emitS_types[emit_shape], emitD_types[emit_distr]);
	   
	   
	   
	   show_debug_message("Created new particle");
	   
}