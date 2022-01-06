// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function open_file(){
        var _file = get_open_filename("*"+Extension,"");
							
		if(_file!="")&&(file_exists(_file)){
		   if(!is_extension(_file,Extension)){show_message("ERROR - Selected file is not a "+Extension+" file");}
			else{
			  load_particle(_file);   
		   }
		}
}