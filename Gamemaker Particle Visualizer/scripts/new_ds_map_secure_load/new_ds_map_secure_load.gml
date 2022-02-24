///Script by Ricardo (https://forum.yoyogames.com/index.php?members/ricardo.250/)
/// @description new_ds_map_secure_load (path)
/// @function new_ds_map_secure_load
/// @param path
function new_ds_map_secure_load(path){
var f = file_text_open_read(path);
var t = base64_decode(file_text_read_string(f));
file_text_close(f);
var map = json_decode(t);
return map;
}