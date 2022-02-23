// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addToFileList(name,path,iconpath){
	
 if(ds_list_size(FileList)>1){	
   for(var e=0; e<ds_list_size(FileList); e++){
	   //if(FileList[| e][0]==path){
		 if(e>0){  
		  for(var i=e+1; i<ds_list_size(FileList)-e; i++){
		      FileList[| i-1][0]=FileList[| i][0]; 
		      FileList[| i-1][1]=FileList[| i][1]; 
		      FileList[| i-1][2]=FileList[| i][2]; 
		  }
		 }
	   //}  
	    
	   
   }
 }
   
   ds_list_insert(FileList,0,[path,name,iconpath]);
   CurrentFileName = get_file_name(FileList[| 0][0],Extension)
   FileList[| 0][1] = CurrentFileName;
   if(ds_list_size(FileList)>5){
	  ds_list_delete(FileList,6);   
   }	   
   UpdateIcons();
	   
}