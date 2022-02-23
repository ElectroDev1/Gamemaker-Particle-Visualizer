function copyMainScript(){
         clipboard_set_text(
		   "setParticleType(syst,"
		   +string([Alpha[0],Alpha[1],Alpha[2]])+","+string(Blend)+","+
		   string([PartColor[0],PartColor[1],PartColor[2]])+","+
		   string([type_S[0],type_S[1]])+","+string([Grav_amt,Grav_dir])+","+
		   string([Size_min,Size_max,Size_incr,Size_wiggle])+","+
		   string([dir_min,dir_max,dir_incr,dir_wiggle])+","+
		   string([ang_min,ang_max,ang_incr,ang_wiggle,ang_relative])+","+
		   string([Spd_min,Spd_max,Spd_incr,Spd_wiggle])+","+
		   string([Life_min,Life_max])+","+
		   string([Use_sprite,sprite_get_name(SpriteArr[| Sprite]),Sprite_animate
		   ,Sprite_anim_stretch,Sprite_img_random])+","+
		   string(PartShape)+")"
		 );
		 
		 show_message_async("Copied script to clipboard")
		 
}