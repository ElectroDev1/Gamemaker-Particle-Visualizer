/// @description 
var i_d = ds_map_find_value(async_load, "id");


for(var a=0; a<3; a++){
if i_d == msg_alpha[a]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   Alpha[a] = real(_val);
				   unsaved=true;
				   if(part_type_exists(type)){
				      part_type_alpha3(type,Alpha[0],Alpha[1],Alpha[2]);	
				   }
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        }
    }
	
if i_d == msg_color[a]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(string_length(_val)==6){
				
                   PartColor[a] = convert_hex_to_dec(_val);
				   unsaved=true;
				   if(part_type_exists(type)){
				      part_type_color3(type,PartColor[0],PartColor[1],PartColor[2]);	
				   }
				   
				}else{ show_message("ERROR - Input is not an hex value."); }
				
            }
        }
    }

if i_d == msg_scale[a]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   type_S[a] = real(_val);
				   unsaved=true;
				   if(part_type_exists(type)){
				     part_type_scale(type,type_S[0]+Scale,type_S[1]+Scale);
				   }
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        }
    }
	

}

if i_d == msg_sprite[0]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
                  temp_img=real(_val);
				  unsaved=true;      
				  show_debug_message("Images:"+string(temp_img));
				  
				  
				  
				msg_sprite[1] = show_question_async("Remove background color? (left-bottom pixel is used)");
				
				
            }
        }
    }


if i_d == msg_sprite[1]
    { temp_pos=1;
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				

            }
        }
    }
	
if i_d == msg_sprite[2]
    { temp_pos=2;
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				

            }
        }
    }

	
if i_d == msg_sprite[3]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				temp_xorig = real(_val);
				unsaved=true;
				show_debug_message("Set sprite x origin to "+string(_val));
				msg_sprite[4] = get_string_async("Sprite Y origin",""); 
				
            }
        }
    }
	
if i_d == msg_sprite[4]
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				  temp_yorig = real(_val);
				  unsaved=true;
				  show_debug_message("Set sprite y origin to "+string(_val));
				
				var _spr = sprite_add(SpriteFile,temp_img,temp_back,temp_smooth,temp_xorig,temp_yorig);
				var _ic = sprite_add(SpriteFile,temp_img,temp_back,temp_smooth,0,0);
				
				if(sprite_exists(_spr)){
				ds_list_add(SpriteArr,_spr);
				ds_list_add(IconArr,_ic);
				}
				
				show_debug_message("Created sprite from "+SpriteFile);
				
				alarm[0]=2;
				
            }
        }
    }
	
	
for(var a=0; a<4; a++){
	
    if i_d == dir_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: dir_min = real(_val); break;
						 case 1: dir_max = real(_val); break;
						 case 2: dir_incr= real(_val); break;
						 case 3: dir_wiggle=real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
   
   if i_d == ang_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: ang_min = real(_val); break;
						 case 1: ang_max = real(_val); break;
						 case 2: ang_incr= real(_val); break;
						 case 3: ang_wiggle=real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
   if i_d == spd_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: Spd_min = real(_val); break;
						 case 1: Spd_max = real(_val); break;
						 case 2: Spd_incr= real(_val); break;
						 case 3: Spd_wiggle=real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
   if i_d == size_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: Size_min = real(_val); break;
						 case 1: Size_max = real(_val); break;
						 case 2: Size_incr= real(_val); break;
						 case 3: Size_wiggle=real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
   
}


for(var a=0; a<2; a++){
	
    if i_d == grav_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: Grav_amt = real(_val); break;
						 case 1: Grav_dir = real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
   
    if i_d == life_quest[a]
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   switch(a){
					     case 0: Life_min = real(_val); break;
						 case 1: Life_max = real(_val); break;
				   }
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
   
}

 if i_d == emit_n_q
   {
	  if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				
				var _val = ds_map_find_value(async_load, "result"); 
				
				if(can_be_real(_val)){
				
                   emit_n = real(_val);
				   unsaved=true;
				   
				}else{ show_message("ERROR - Input is not a real."); }
				
            }
        } 
   }
 
 var i_d, stat;
i_d = ds_map_find_value(async_load, "id");

if i_d == close_quest_open
    {
    if ds_map_find_value(async_load, "status")
        {
           
						    check_save();
							open_file(); 
        }else{open_file(); }
    }
	
if i_d == close_quest_new
    {
    if ds_map_find_value(async_load, "status")
        {
           
						    check_save();
							reset_editor();
        }else{reset_editor(); }
    }
	
if i_d == close_quest_home
    {
    if ds_map_find_value(async_load, "status")
        {
           
						    check_save();
							free_editor();
							
        }else{free_editor();}
    }
	
if i_d == close_quest
    {
    if ds_map_find_value(async_load, "status")
        {
           
						    check_save();
						    game_end();
							
        }else{game_end();}
    }