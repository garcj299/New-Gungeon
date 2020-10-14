/// @description Insert description here

//position
if (obj_player.hsp < 0)
{
	x = obj_player.x - 40;
	y = obj_player.y + 15;
}
else if (obj_player.hsp > 0)
{
	x = obj_player.x + 20;
	y = obj_player.y + 15;
}
else
{
	x = obj_player.x;
	y = obj_player.y + 15;
}

image_angle = point_direction(x,y, mouse_x, mouse_y);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -2;

}
else
{
	image_yscale = 2;
}

//reloading
if (ammo_count = 1)
{
	reloading = true;
}
else
{
	reloading = false;
}

if ((keyboard_check(ord("E"))) and (ammo_count != 5)) or ((mouse_check_button_pressed(mb_right)) and (ammo_count != 5)) and (can_reload < 0)
{
	reload_counter = 100;
	can_reload = 120;
}
can_reload -= 1;
reload_counter -= 1;

//firign
firingcooldown -= 1;
if (mouse_check_button(mb_left)) and (firingcooldown < 0) and (ammo_count > 1)
{
	firingcooldown = 10;
	with instance_create_layer(x,y,"bullet_layer", obj_bullet)
	{
		other.ammo_count -= 1;
		audio_play_sound(snd_gun_shot, 20 ,false);
		speed = 25;
		image_angle = other.image_angle;
		direction = other.image_angle;
	}
}
else 
{
	image_speed = 0;
	image_index = 0;
}







