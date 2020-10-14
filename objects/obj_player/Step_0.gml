/// @description Insert description here
// You can write your code in this editor
//vertical movement
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var move_y = key_down - key_up;

vsp = move_y * walksp;

//horizontal movement

key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));

var move_x = key_right - key_left;

hsp = move_x * walksp;

//vertical collision

if (place_meeting(x, y + vsp, obj_wall))
{
	vsp = 0;
}
y = y + vsp;

//horizontal collision

if (place_meeting(x + hsp, y, obj_wall))
{
	hsp = 0;
}
x = x + hsp;

//animatios
//frame_counter
frame_counter -= 1;
if (frame_counter <= 0)
{
frames += 1;
frame_counter = 30;
}
image_index = frames;

//standing still 
if (hsp = 0) and (vsp = 0) 
{
	if (frames >= 5)
	{
		frames = 1;
	}
}

//moving right
if (hsp > 0)
{
	if (frames < 7) or (frames >= 9)
	{
		frames = 7;
	}
}

//moving left 9,11

if (hsp < 0)
{
	if (frames < 11) or (frames >= 13)
	{
		frames = 11;
	}
}

//moving down 12,16

if (vsp > 0) and (hsp = 0)
{
	if (frames < 15) or (frames >= 19)
	{
		frames = 15;
	}
}

//moving up 17,21

if (vsp < 0) and (hsp = 0)
{
	if (frames < 21) or (frames >= 25)
	{
		frames = 21;
	}
}

//health

//if (hp = 15) or (hp <= 0)
{
//	you_loose = true;
//	room = room_you_loose;
}








