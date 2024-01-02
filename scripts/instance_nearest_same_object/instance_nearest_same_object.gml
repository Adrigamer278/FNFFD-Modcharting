function instance_nearest_same_object(argument0, argument1) {
	var min_kc = 99999;
	var closest = id;
	var x0 = argument0;
	var y0 = argument1;
	var my_id = self.id;

	with (object_index){
	    if id != my_id{
	        var kc = point_distance(x0, y0, x, y);
	        if kc < min_kc{
	            closest = id;
	            min_kc = kc;
	        };
	    };
	};

	if closest != my_id{
	    return closest;
	}else{
	    return my_id;
	};



}
