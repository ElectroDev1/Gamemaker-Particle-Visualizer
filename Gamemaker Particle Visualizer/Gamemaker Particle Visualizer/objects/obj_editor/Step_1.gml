/// @description Insert description here
// You can write your code in this editor
Message="";


	switch(temp_pos){
		
	       case 1:
		      
			  var _val = msg_sprite[temp_pos];
			 
		      if(_val==true){
				  temp_back = true;
			  }else{
				  temp_back = false;	
			  }
			  
			  show_debug_message("Background clear set to "+string(temp_back))
			  
			  msg_sprite[2] = show_question_async("Smooth the edges of the sprite? (only applies to transparent sprites)"); 	 
			  
		  
		   break;
		   
		   case 2:
		      
			  var _val = msg_sprite[temp_pos];
			 
		      if(_val==true){
				  temp_smooth = true;
			  }else{
				  temp_smooth = false;	
			  }
			  
			  show_debug_message("Sprite smoothing set to "+string(temp_smooth))
			  
			  msg_sprite[3] = get_string_async("Sprite X origin",""); 	 
			
		  
		   break;
	
	}


temp_pos=-1;