/// @description Destroy multiple objects/instances
/// @arg id
/// @arg [id2
/// @arg ...]
function instance_destroy_ext() {

	/******************************************************************************
	Example:

	instance_destroy_ext(obj_button, obj_arrow, obj_controller);
	******************************************************************************/

	for (var i=0; i<argument_count; i++)
	{
	    with argument[i]
	        instance_destroy();
	}



}
