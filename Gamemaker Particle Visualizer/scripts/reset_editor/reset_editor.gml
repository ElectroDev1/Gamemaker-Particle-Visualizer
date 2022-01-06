// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_editor(){
part_type_destroy(type);
part_emitter_destroy(syst,emit);
part_system_destroy(syst);
create_default_particle();
CurrentFile=-4;
CurrentFileName=""
}