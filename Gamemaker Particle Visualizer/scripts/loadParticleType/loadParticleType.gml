function loadParticleType(filename){

         //This script allows you to get a particle ID directly from a .GPV file, more advanced but will take space in your included files
		 
		 if(filename==""){show_error("Error: no file selected",true); return;}
		 
		 //Check if the file exists
         if(!file_exists(filename)){ show_error("Error: file selected does not exist",true); return; }
		 
		 //Check if we're opening a .GPV file
		 var check = string_replace(filename,".GPV","");
			  
		 var final = string_replace(filename,check,"");

		 if(final!=".GPV"){show_error("Error: file selected is not a .GPV file",true); return;}
		 
		 
		 //Load the map
		 
		 
		 var _type = part_type_create();
		 
		 var _map = new_ds_map_secure_load(filename);
		 show_debug_message(_map);
		 
		 part_type_alpha3(_type,_map[? "Alpha0"],_map[? "Alpha1"],_map[? "Alpha2"]);		 
		 part_type_color3(_type,rgb_to_bgr(_map[? "Color0"]),rgb_to_bgr(_map[? "Color1"]),rgb_to_bgr(_map[? "Color2"]));
		 
		 part_type_scale(_type,_map[? "Scale0"],_map[? "Scale1"]);
		 part_type_gravity(_type,_map[? "Gravity0"],_map[? "Gravity1"]);
		 part_type_life(_type,_map[? "Life0"],_map[? "Life1"]);
		 
		 part_type_blend(_type,_map[? "blend"]);
		 		 		 
		 part_type_size(_type,_map[? "Size0"],_map[? "Size1"],_map[? "Size2"],_map[? "Size3"]);
		 part_type_speed(_type,_map[? "Speed0"],_map[? "Speed1"],_map[? "Speed2"],_map[? "Speed3"]);
		 part_type_direction(_type,_map[? "Direction0"],_map[? "Direction1"],_map[? "Direction2"],_map[? "Direction3"]);
		 part_type_orientation(_type,_map[? "Angle0"],_map[? "Angle1"],_map[? "Angle2"],_map[? "Angle3"],_map[? "Angle4"]);
		 
		 part_type_shape(_type,_map[? "Look1"]); 
		 
		 //Sprite
		 if(_map[? "Look0"]){
		 
		    var _index = _map[? "Look2"];
			
			var _numb = _map[? "Imagenumb"+string(_index)];
		    var _sprite = noone;
		 
		    for(var i=0; i<_numb; i++){
		        var _ebase = _map[? "Sprites"+string(_index)+"_"+string(i)];

			    var _64 = base64ToSpriteCompressed(_ebase);
			 
			    if(i>0){
			      sprite_merge(_sprite,_64);	
				  sprite_delete(_64);
			    }else{
			      _sprite = _64;	 
			    }
		    }
		 
		    if(_sprite!=noone){
		       part_type_sprite(_type,_sprite,_map[? "Look3"],_map[? "Look4"],_map[? "Look5"]);
			}
			
		 }
		 
		 ds_map_destroy(_map);
		 
		 return _type;
		 
}