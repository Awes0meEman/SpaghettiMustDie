/// @description Insert description here
// You can write your code in this editor
var direction_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x = direction_x * move_speed;
move_y = move_y + grv;
var onGround = place_meeting(x, y+2,obj_ground);

if(onGround && keyboard_check(vk_space))
{
	move_y = jump_speed * -1;
}

//horizonal movement

if (place_meeting(x + move_x, y -1 , obj_wall))
{
	while (!place_meeting(x + direction_x,y - 1,obj_wall))
	{
		x += direction_x;
	}
	move_x = 0;
}
x += move_x;

//vertical movement
if (place_meeting(x,y + move_y, obj_ground))
{
	/*
	while (!place_meeting(x,y + sign(move_y),obj_ground))
	{
		y = y + sign(move_y);
	}*/
	move_y = 0;
}
y += move_y;

//Animation

if (!onGround)
{
	//falling
	sprite_index = spr_falling;
}
else if (onGround && move_x == 0)
{
	//idle
	sprite_index = spr_idle;
}
else if (onGround && move_x != 0)
{
	//running
	sprite_index = spr_running;
}



image_xscale = sign(mouse_x - x);

healthbar_x = x - healthbar_width/2;
healthbar_y = y - 50;

if(hp <= 0)
{
	//you died
	game_restart();
}