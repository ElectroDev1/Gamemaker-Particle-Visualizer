function load_particle(path){

   if(is_extension(path,Extension)){
	   legacy=false;
     var _map = new_ds_map_secure_load(path);
   }else{
	   legacy=true;
	 var _map = ds_map_secure_load(path);   
   }
	
	 
	 CurrentFile = path;
	 CurrentFileName = _map[? "name"];
	 var _R = _map[? "FileIcon"];
	 
	 addToFileList(CurrentFileName,CurrentFile,_R);
	 
	 emit_n = _map[? "emit_number"];
	 
	 for(var a=0; a<3; a++){
		 Alpha[a] = _map[? "Alpha"+string(a)];
		 PartColor[a] = _map[? "Color"+string(a)];
	 }
	 
	 for(var a=0; a<2; a++){
		 type_S[a] = _map[? "Scale"+string(a)];
	 }
	 
	 Blend = _map[? "blend"];
	 
	 Grav_amt = _map[? "Gravity0"];
	 Grav_dir = _map[? "Gravity1"];
	 
	 Life_min = _map[? "Life0"];
	 Life_max = _map[? "Life1"];
	 
	 Size_min = _map[? "Size0"];
	 Size_max = _map[? "Size1"];
	 Size_incr = _map[? "Size2"];
	 Size_wiggle = _map[? "Size3"];
	 
	 Spd_min = _map[? "Speed0"];
	 Spd_max = _map[? "Speed1"];
	 Spd_incr = _map[? "Speed2"];
	 Spd_wiggle = _map[? "Speed3"];
	 
	 dir_min = _map[? "Direction0"];
	 dir_max = _map[? "Direction1"];
	 dir_incr = _map[? "Direction2"];
	 dir_wiggle = _map[? "Direction3"];
	 
	 ang_min = _map[? "Angle0"];
	 ang_max = _map[? "Angle1"];
	 ang_incr = _map[? "Angle2"];
	 ang_wiggle = _map[? "Angle3"];
	 ang_relative = _map[? "Angle4"];
	 
	 Use_sprite = _map[? "Look0"];
	 PartShape = _map[? "Look1"];
	 Sprite = _map[? "Look2"];
	 Sprite_animate = _map[? "Look3"];
	 Sprite_anim_stretch = _map[? "Look4"];
	 Sprite_img_random = _map[? "Look5"];
	 
	 emit_shape = _map[? "Shape"];
	 emit_distr = _map[? "Distr"];
	 
	 //Upadte exclusive stuff
	 if(ds_map_exists(_map,"Version")&&(_map[? "Version"]>=version_id)){
	    part_X = _map[? "Editor_X"];	 
	    part_Y = _map[? "Editor_Y"];	 
	    emit_W = _map[? "Editor_W"];	 
	    emit_H = _map[? "Editor_H"];	 
	 }
	 
	 //Sprites
	 
	 //Get the amount of sprites
	 var _sprite_numb = _map[? "Spritenumb"];
	 
	 //Delete existing sprites
	 for(var a=1; a<ds_list_size(SpriteArr); a++){
	     sprite_delete(SpriteArr[| a]);	 
	     sprite_delete(IconArr[| a]);	 
	 }
	 
	 //Clear the lists
	 ds_list_clear(SpriteArr)
     ds_list_clear(IconArr)
	 ds_list_add(SpriteArr,spr_example);
     ds_list_add(IconArr,spr_example);
	 
	 //Loop through all the sprites
	 for(var a=0; a<_sprite_numb; a++){
		 
		 var _numb = _map[? "Imagenumb"+string(a)];
		 var _sprite = noone;
		 
		 //Since all the sprite's images are saved separately, we must merge them back together
		 for(var i=0; i<_numb; i++){
		     var _ebase = _map[? "Sprites"+string(a)+"_"+string(i)];
			 show_debug_message(_ebase)
			 var _64 = base64ToSpriteCompressed(_ebase);
			 
			 if(i>0){
			    sprite_merge(_sprite,_64);	
				sprite_delete(_64);
			 }else{
			    _sprite = _64;	 
			 }
		 }
		 
		 //Add sprite to the ds list
		 SpriteArr[| a+1] = _sprite;
		 
		 //Create sprite icon
		 sprite_set_offset(_sprite,0,0);
		 IconArr[| a+1] = _sprite;
		 
	 }
	 
 
     unsaved=false;
	 
	 ds_map_destroy(_map);
	 
	 part_emitter_clear(syst,emit)

}