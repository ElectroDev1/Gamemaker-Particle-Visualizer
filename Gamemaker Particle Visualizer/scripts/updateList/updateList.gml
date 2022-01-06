// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateList(){
	var _history = LocalFolder+"/File_history.dat";
if(file_exists(_history)){
	  
	  var _length = file_length(_history);
	  
	  var _file = file_text_open_read(_history);
	  
	  ds_list_clear(FileList);
	  
	  for(var a=0; a<(_length/3); a++){
		  ;
		  var _Path = file_text_read_string(_file);
		  if(file_exists(_Path)){
          FileList[| a] = array_create(3,0);
		  FileList[| a][0] = _Path; file_text_readln(_file);
		  
		  FileList[| a][1] = file_text_read_string(_file); file_text_readln(_file);
		  
		  FileList[| a][2] = file_text_read_string(_file); file_text_readln(_file);
		  
		  addToFileList(FileList[| a][1],FileList[| a][0],FileList[| a][2]);
		 
		  }else{file_text_readln(_file);file_text_readln(_file);file_text_readln(_file);
		  continue;}
	  }
	  
	  file_text_close(_file);
	  
  
}	  
   
}