/// @description Insert description here
// You can write your code in this editor
	yeet = random_variable + random_variable;
	random_variable = yeet;
	with (obj_player)
	{
		draw_text(370,500,"hsp = " + string(hsp))
		draw_text(370,480,"vsp = " + string(vsp))
		draw_text(370,460,"frames = " + string(frames))
		draw_text(370,440,"frame_counter = " + string(frame_counter))
		if (instance_exists(obj_enemy))
		{
			draw_text(370,420,"enemy_health = " + string(obj_enemy.enemy_health))
		}
		if(instance_exists(obj_gun))
		{
			draw_text(370,400,"reloading = " + string(obj_gun.reloading))
			draw_text(370,380,"ammo_count = " + string(obj_gun.ammo_count))
			draw_text(370,360,"reload_counter = " + string(obj_gun.reload_counter))
			draw_text(370,340,"actually_reload = " + string(obj_ammo.actually_reload))
			draw_text(370,320,"reload_animation = " + string(obj_ammo.reload_animation))
		}
		draw_text(370,520,"hp = " + string(obj_player.hp))
		draw_text(370,540,"obj_health.image_angle= " + string(obj_health.image_index))
		draw_text(370,560,string(other.yeet))	
	}
