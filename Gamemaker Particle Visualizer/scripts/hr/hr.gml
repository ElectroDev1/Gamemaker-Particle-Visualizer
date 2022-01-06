function hr(X,Y,length=0,width=1,perc=100,vertical=false){
   
   var _trueW = length*(perc/100);
   
   if(!vertical){
	  draw_line_width(X-_trueW/2,Y,X+_trueW/2,Y,width);   
   }else{
	  draw_line_width(X,Y-_trueW/2,X,Y+_trueW/2,width);  
   }
   
}