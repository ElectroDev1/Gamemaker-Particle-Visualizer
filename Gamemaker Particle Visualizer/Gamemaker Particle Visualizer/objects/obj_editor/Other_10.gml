/// @description
var _history = LocalFolder+"/File_history.dat";
var _data    = LocalFolder+"/Settings.dat";

if(!directory_exists(LocalFolder)){
	
   directory_create(LocalFolder);
   show_debug_message("Creted LocalAppdata folder");
   
   //Create instruction file
   var _file = file_text_open_write(LocalFolder+"/ReadME.txt");
   
   file_text_write_string(_file,ReadString);
   
   file_text_close(_file);
   
   //Create history list file
   var _file = file_text_open_write(_history);
   
   file_text_write_string(_file,"");
   
   file_text_close(_file);
   
   //Create settings file
   var _file = file_text_open_write(_data);
   
   file_text_write_string(_file,"");
   global.pallete = 0;
   global.RPC     = 0;
   
   file_text_close(_file);

}else{
 
   var _file = file_text_open_write(LocalFolder+"/ReadME.txt");
   
   file_text_write_string(_file,ReadString);
   
   file_text_close(_file);
   
   
   //Load settings data
   if(file_exists(_data)){
	  
	  var _file = file_text_open_read(_data);
	  
	  var _f = file_text_read_string(_file);
	  if(_f!=""){
	  global.pallete = real(_f);
	  }
	  
	  file_text_readln(_file);
	  
	  var _f = file_text_read_string(_file);
	  if(_f!=""){
	  global.RPC = real(_f);
	  }
	  
	  file_text_readln(_file);
	  
	  file_text_close(_file);
	  
   }else{
	   
	  var _file = file_text_open_write(_data);
   
      file_text_write_string(_file,"");
	  global.pallete = 0;
      global.RPC     = 0;
   
      file_text_close(_file); 
	  
   }

   //Load file history data
   if(file_exists(_history)){
	  
	  var _length = file_length(_history);
	  
	  var _file = file_text_open_read(_history);
	  
	  /*for(var a=0; a<(_length/3); a++){
		  ;
		  var _Path = file_text_read_string(_file);
		  if(file_exists(_Path)){
			  show_debug_message(_Path)
          FileList[| a] = array_create(3,0);
		  FileList[| a][0] = _Path; file_text_readln(_file);
		  
		  FileList[| a][1] = file_text_read_string(_file); file_text_readln(_file);
		  
		  
		  
		  FileList[| a][2] = file_text_read_string(_file); file_text_readln(_file);
		  
		  addToFileList(FileList[| a][1],FileList[| a][0],FileList[| a][2]);
		 
		  }else{file_text_readln(_file);file_text_readln(_file);file_text_readln(_file);
		  }
	  }*/
	  
	  file_text_close(_file);
	  
	  
	  
   }else{
	   
	  var _file = file_text_open_write(_history);
   
      file_text_write_string(_file,"");
   
      file_text_close(_file); 
	  
   }
	
	
}