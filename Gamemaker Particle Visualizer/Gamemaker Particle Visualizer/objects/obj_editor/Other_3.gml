/// @description

var _file = file_text_open_write(LocalFolder+"/Settings.dat");

file_text_write_string(_file,string(global.pallete));
file_text_writeln(_file);

file_text_write_string(_file,string(global.RPC));
file_text_writeln(_file);

file_text_close(_file);

var _file = file_text_open_write(LocalFolder+"/File_history.dat");

for(var a=0; a<ds_list_size(FileList); a++){
file_text_write_string(_file,string(FileList[| ds_list_size(FileList)-1-a][0]));
file_text_writeln(_file);
file_text_write_string(_file,string(FileList[| ds_list_size(FileList)-1-a][1]));
file_text_writeln(_file);
file_text_write_string(_file,string(FileList[| ds_list_size(FileList)-1-a][2]));
file_text_writeln(_file);
}

file_text_close(_file);