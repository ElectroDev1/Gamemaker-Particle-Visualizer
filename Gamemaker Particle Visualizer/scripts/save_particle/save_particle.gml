function save_particle(name,path=0){
 legacy=false;
    var _finalpath = LocalFolder+"/Projects"+name+Extension;
	
	if(is_string(path)){
	   	
	   var _finalpath = path;
	   
	   //If the specified path already contains the name and the ini extension
	   if(is_extension(_finalpath,Extension)){
		  _finalpath = path;   
	   }else{  _finalpath = path+Extension; }
	   
	}
	
	var _map = ds_map_create();
	
	//Save all the information in a map
	_map[? "Version"]=version_id;
	
	_map[? "Editor_X"]=part_X;
	_map[? "Editor_Y"]=part_Y;
	_map[? "Editor_W"]=emit_W;
	_map[? "Editor_H"]=emit_H;
	
	_map[? "name"]=name;
	
	_map[? "emit_number"]=emit_n;

	for(var a=0; a<3; a++){
		_map[? "Alpha"+string(a)] = Alpha[a];
		_map[? "Color"+string(a)] = PartColor[a];
	}
	
	for(var a=0; a<2; a++){
		_map[? "Scale"+string(a)] = type_S[a];
	}
	
    _map[? "blend"]=Blend;
	_map[? "Gravity0"]=Grav_amt
	_map[? "Gravity1"]=Grav_dir
	_map[? "Life0"]=Life_min;
	_map[? "Life1"]=Life_max;
	
	_map[? "Size0"]=Size_min
	_map[? "Size1"]=Size_max
	_map[? "Size2"]=Size_incr
	_map[? "Size3"]=Size_wiggle
	
	_map[? "Speed0"]=Spd_min
	_map[? "Speed1"]=Spd_max
	_map[? "Speed2"]=Spd_incr
	_map[? "Speed3"]=Spd_wiggle
	
	_map[? "Direction0"]=dir_min
	_map[? "Direction1"]=dir_max
	_map[? "Direction2"]=dir_incr
	_map[? "Direction3"]=dir_wiggle
	
	_map[? "Angle0"]=ang_min
	_map[? "Angle1"]=ang_max
	_map[? "Angle2"]=ang_incr
	_map[? "Angle3"]=ang_wiggle
	_map[? "Angle4"]=ang_relative
	
	_map[? "Look0"]=Use_sprite
	_map[? "Look1"]=PartShape
	_map[? "Look2"]=Sprite
	_map[? "Look3"]=Sprite_animate
	_map[? "Look4"]=Sprite_anim_stretch
	_map[? "Look5"]=Sprite_img_random
	
	_map[? "Shape"]=emit_shape
	_map[? "Distr"]=emit_distr
	
	_map[? "Spritenumb"]=ds_list_size(SpriteArr)-1;
	
	for(var a=1; a<ds_list_size(SpriteArr); a++){
		
	    var _spr = SpriteArr[| a];
	
	    _map[? "Imagenumb"+string(a-1)]=sprite_get_number(_spr);
	
		for(var i=0; i<sprite_get_number(_spr); i++){
			
		    var _base = spriteToBase64Compressed(_spr,i);
			_map[? "Sprites"+string(a-1)+"_"+string(i)] = _base;
			
		}	
			
	}
	
	//Save icon
	debug_over = false;
	
	var _workspace = sprite_create_from_surface(application_surface,_table_R_X,(room_height-_table_R_Y*2)/2,room_width-_table_R_X*2-1,_table_R_Y*2-1,0,0,0,0)

	var _pth = LocalFolder+"/Icons/"+name+".png";
	sprite_save(_workspace,0,_pth);
	
	_map[? "FileIcon"]=_pth;

	addToFileList(name,_finalpath,_pth);
	
	debug_over = true;
	
	//Save the map and leave
	new_ds_map_secure_save(_map,_finalpath);
	ds_map_destroy(_map);
	
	unsaved=false;
	
	CurrentFile=_finalpath;
	CurrentFileName=get_file_name(_finalpath,Extension);
	
	show_debug_message("SAVED FILE AT "+string(_finalpath));

}