// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_extension(fname,ext){
              var check = string_replace(fname,ext,"");
			  
			  var final = string_replace(fname,check,"");

			  log_script(script_get_name(is_extension),final)
			  if(final==ext){return true;}
			  return false;
}