/// @desc array_sort
/// @arg array
/// @arg ascend
/// @arg change_source
function array_sort(argument0, argument1, argument2) {

	/******************************************************************************
	array_sort([7, 3, 5, 1, 4], true, false)  -> [1,3,4,5,7]
	array_sort([7, 3, 5, 1, 4], false, false) -> [7,5,4,3,1]
	******************************************************************************/

	var array = argument0;
	var ascend = argument1;
	var change = argument2;

	var list = ds_list_create();

	for (var i=0; i<array_length_1d(array); i++)
	{
	    ds_list_add(list, array[i])
	}

	ds_list_sort(list, ascend)

	var res;
	for (var i=0; i<ds_list_size(list); i++)
	{
	    if change
	        array[@ i] = list[| i];
	    else
	        res[i] = list[| i];
	}

	ds_list_destroy(list);

	if !change
	    return res;



}
