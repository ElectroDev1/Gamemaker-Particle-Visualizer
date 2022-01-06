// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_save(){
if(file_exists(CurrentFile))&&(CurrentFile!=-4){
						   var _filename = get_file_name(CurrentFile,Extension);
						   save_particle(_filename,CurrentFile);
						 }else{
							 
							 
						   if(CurrentFile==-4){ _f = DefaultName; }
			               else{ _f = CurrentFileName; }
						
						      var _path = get_save_filename("*"+Extension,_f+Extension);
						
						      if(_path!=""){
							
						       //Get the file's name
						       var _filename = get_file_name(_path,Extension);
						       save_particle(_filename,_path);
						   
						       }	
						
						 }
}