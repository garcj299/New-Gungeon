/// @description Insert description here
// You can write your code in this editor
//position
x = obj_player.x;
y = obj_player.y + 15;
if (angle <= 0)
{
image_angle = point_direction(x,y, mouse_x, mouse_y);
}
//if (!object_exists(obj_gun))
{
	
//get into swinging position
	if (mouse_check_button(mb_left)) and (angle <= 0)
	{
			if (image_angle > 90) and (image_angle < 270) //on the left
		{
			image_angle = 120;
			left_angle = 120;
		}
		else //on the right
		{
			image_angle = 70;
			angle = 70;
		}
	}

//swing
if (image_angle > 90) and (image_angle < 270) //on the left
{
	if (left_angle <= 210)//how far you want it to swing
	{
		image_angle = left_angle;
		image_alpha = 1;
	}
	else
	{
		image_alpha = 0;
	}
}
else //on the right
{
	if (angle >= -40)//how far you want it to swing
	{
		image_angle = angle;
		image_alpha = 1;
	}
	else
	{
		image_alpha = 0;
	}
}
}
x = obj_player.x;
y = obj_player.y + 15;
//speed of swing
angle -= 3.5;
left_angle += 3.5;










