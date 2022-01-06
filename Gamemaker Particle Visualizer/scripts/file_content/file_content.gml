function file_content(path){

    var _string="";
	
	if(file_exists(path)){
	  
	   var _amount = file_length(path);
	   
	   var _file = file_text_open_read(path);
	   
	       for(var a=0; a<_amount; a++){
			   _string += file_text_read_string(_file);
			   file_text_readln(_file);
		   }
	   
	   file_text_close(_file);
	   
	   return _string;
   
	}else{
	
	   log_script("file_length","specified path is not valid.");
	   return _string;
		
	}

}