// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function can_be_real(){
var s = argument0;
var n = string_length(string_digits(s));
return n && n == string_length(s) - (string_char_at(s, 1) == "-") - (string_pos(".", s) != 0);
}