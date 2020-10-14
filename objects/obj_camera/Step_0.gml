/// @description Insert description here
// You can write your code in this editor


if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
}

x += (xto - x) / 25;
y += (yto - y) / 25;

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);





//ammo position
with (obj_ammo)
{
	obj_ammo.x = other.x + 450;
	obj_ammo.y = other.y + 300;
}













