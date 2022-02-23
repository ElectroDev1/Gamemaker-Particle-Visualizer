function get_file_name(path,extension){
         var _str = string_replace_all(path,extension,"");	
		 var a=string_length( _str );
	     while(string_char_at(_str,a)!="\\"){a--;}
		 var _final = string_delete(_str,1,a); 
		 
		 return _final;
}