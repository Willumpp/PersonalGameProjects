/// @description Placeholder create
random_set_seed(randomize());

var movables = obj_Tags.movable;
var num = irandom_range(0,array_length_1d(movables)-1);

var inst = instance_create_depth(x,y,0,movables[num]);
inst.angle = image_angle;

instance_destroy(id);