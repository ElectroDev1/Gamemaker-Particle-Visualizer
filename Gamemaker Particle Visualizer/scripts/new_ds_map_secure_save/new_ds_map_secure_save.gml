function new_ds_map_secure_save(){
	///Script by Ricardo (https://forum.yoyogames.com/index.php?members/ricardo.250/)
/// @description new_ds_map_secure_save(map,path)
/// @function new_ds_map_secure_save
/// @param map
/// @param filename

var map = ds_map_create();
ds_map_copy(map,argument[0]);
var path = argument[1];

var t = base64_encode(json_encode(map));
var f = file_text_open_write(path);
if (f != -1) {
    file_text_write_string(f, t);
    file_text_close(f);
    ds_map_destroy(map);
}
else {
    show_error("Error in new_ds_map_secure_save. Cant create: " + f,true);
}
}