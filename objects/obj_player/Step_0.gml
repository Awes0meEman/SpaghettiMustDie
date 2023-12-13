/// @description Insert description here
// You can write your code in this editor
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

if (place_meeting(x,y+2,obj_ground))
{
	move_y = 0;
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x + move_x, y + 10, obj_ground))
	{
		move_y = abs(move_x);
		move_x = 0;
	}
	if (keyboard_check(vk_space))
	{
		move_y = -jump_speed;
	}
}
else if (move_y < 10) 
{
	if (keyboard_check(vk_space))
	{
		move_y = -jump_speed;
	}
	else {
		move_y += 1;	
	}
}

move_and_collide(move_x,move_y,obj_ground,4, 0, 0, move_speed, -1);

image_xscale = sign(mouse_x - x);