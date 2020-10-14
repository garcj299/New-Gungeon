/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_gun))
{
	
	x = obj_ammo.x + 2;
	y = obj_ammo.y - 65;

	if (obj_gun.reload_counter = 99)
	{
		image_index = 1;
		audio_play_sound(snd_reload,9,false);
		
	}

	if (obj_ammo.reload_animation = true)
	{
		image_alpha = 1;
	}
	else
	{
		image_alpha = 0;
	}
}
else
{
	image_alpha = 0;
}