function setParticleType(syst,Alpha,Blend,PartColor,Scale,Grav,Size,Dir,Ang,Spd,Life,Sprite,Shape){
			   
			   var type = part_type_create();
			   
			   part_type_alpha3(type,Alpha[0],Alpha[1],Alpha[2]);
			   part_type_blend(type,Blend);
			   part_type_color3(type,rgb_to_bgr(PartColor[0]),rgb_to_bgr(PartColor[1]),rgb_to_bgr(PartColor[2]));
			   part_type_scale(type,Scale[0],Scale[1]);
			   part_type_gravity(type,Grav[0],Grav[1]);
			   part_type_size(type,Size[0],Size[1],Size[2],Size[3]);
			   part_type_direction(type,Dir[0],Dir[1],Dir[2],Dir[3])
			   part_type_orientation(type,Ang[0],Ang[1],Ang[2],Ang[3],Ang[4]);
			   part_type_speed(type,Spd[0],Spd[1],Spd[2],Spd[3]);
			   part_type_life(type,Life[0],Life[1]);
			   
			   if(Sprite[0]){ 
				  if(sprite_exists(Sprite[1])){
					 part_type_sprite(type,Sprite[1],Sprite[2],Sprite[3],Sprite[4]); 
				  }
			   }else{ 
				     part_type_shape(type,Shape); 
			   }
			   
			   return type;
}