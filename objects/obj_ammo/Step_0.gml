/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_gun))
{
	image_alpha = 1;
	image_index = obj_gun.ammo_count;

	if (obj_gun.reload_counter = 0)
	{
		actually_reload = true;
	}
	else
	{
		actually_reload = false;
	}

	if (actually_reload = true) and (obj_gun.ammo_count != 5)
	{
		obj_gun.ammo_count = 5;
	}
	//reload_animation happens
	if (obj_gun.reload_counter > 0)
	{
		reload_animation = true;
	}
	else
	{
		reload_animation = false;
	}
}
else
{
	image_alpha = 0;
}
