/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_enemy))
{

image_angle = point_direction(x,y,obj_player.x,obj_player.y);

//shooting
can_shoot -= 1;
if (can_shoot = 0)
{
	can_shoot = 30;
	with (instance_create_layer(x,y,"bullet_layer",obj_enemy_bullet))
	{
		image_angle = other.image_angle;
		direction = other.image_angle;
		speed = 5;
		if (place_meeting (x,y,obj_wall))
		{
			instance_destroy();
		}
	}
}
else
{
	image_speed = 0;
	image_index = 1;
}
}
else
{
	instance_destroy();
}








