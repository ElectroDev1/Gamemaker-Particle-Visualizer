// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateIcons(){
    for(var r=0; r<ds_list_size(FileList); r++){
		var _pth = FileList[| r][2];
		
		if(r<ds_list_size(FileIcons))&&(sprite_exists(FileIcons[| r])){
		   sprite_delete(FileIcons[| r]);	
		}
		
		if(file_exists(_pth)){
		  FileIcons[| r] = sprite_add(_pth,0,0,0,0,0);
		}
		
	}
}