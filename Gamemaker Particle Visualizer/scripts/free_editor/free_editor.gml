// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function free_editor(){
part_type_destroy(type);
					    part_emitter_destroy(syst,emit);
					    part_system_destroy(syst);
						surface_free(surf_options);
						surface_free(surf_story);
					    State=EditorState.wait;
						//updateList();
}