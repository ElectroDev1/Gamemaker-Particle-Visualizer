///This function returns the length of a file (how many lines it has), use it to get how
///many elements are in a specific file, like a .dat file
function file_length(path){

    var _amount = 0;
	
	if(file_exists(path)){
	  
	   var _file = file_text_open_read(path);
	   
	   while(!file_text_eof(_file)){
		     _amount++;
		     var _r = file_text_readln(_file);   
	   }
       
	   file_text_close(_file);
	   
	   log_script("file_length","file lengh of '"+path+"' is: "+string(_amount));
	   return _amount;
   
	}else{
	
	   log_script("file_length","specified path is not valid.");
	   return "-4";
		
	}

}