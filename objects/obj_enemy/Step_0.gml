/// @description Insert description here
// You can write your code in this editor
if (obj_enemy_activator.enemy_activate = required_code)
{
	
	
with (enemygun)
{
	x = other.x;
	y = other.y;
}
x_point = obj_player.x;
y_point = obj_player.y;

var maxrot = 30;
var rotstep = 10;
var ahead = 15;
var onspot = true;

mp_potential_settings( maxrot, rotstep, ahead, onspot);


if (!point_in_circle(obj_player.x,obj_player.y,x,y,256)) 
{

	enemy_speed = 2;
}
else
{
	enemy_speed = 0;
}

mp_potential_step(x_point,y_point,enemy_speed,false);

//dying

if (enemy_health <= 0)
{
	enemy_alive = false;
	death_animation = true;
}

}
else
{
	obj_enemy_gun.can_shoot = 200;
}
//animation and death animation


if (death_animation = true) and (instance_exists(obj_enemy))
{
	if (image_index > image_number - 1)
	{
		obj_enemy_gun.firingcooldown = 1000;
		instance_destroy();
	}
}
else //idle animation
{
	if (image_index >= 8)
	{
		image_index = 1;
	}
}
mele_counter -= 1;