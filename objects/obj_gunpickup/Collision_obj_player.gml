/// @description Insert description here
// You can write your code in this editor

instance_create_layer(obj_player.x,obj_player.y,"gun_layer", obj_gun);

obj_gun.image_xscale = obj_gun.image_xscale * 2;

instance_destroy();