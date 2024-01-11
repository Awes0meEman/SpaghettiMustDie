/// @description Insert description here
// You can write your code in this editor



//check if player is in aggro range
if (obj_player.x <= x + aggro_radius 
&& obj_player.x >= x - aggro_radius
&& obj_player.y <= y + aggro_radius
&& obj_player.y >= y- aggro_radius)
{
	if(obj_player.x <= x + attack_range
	&& obj_player.x >= x - attack_range
	&& obj_player.y <= y + attack_range
	&& obj_player.y >= y - attack_range)
	{
		//attack
		if (can_attack > 0)
		{
			can_attack--;
		}
		else if (obj_player.x <= x + attack_range
	&& obj_player.x >= x - attack_range
	&& obj_player.y <= y + attack_range
	&& obj_player.y >= y - attack_range)
		{
			can_attack = attack_rate;
			obj_player.hp -= attack_damage;
		}
		move_x = 0;
	}
	else {
		move_x = sign(obj_player.x -x) * move_speed;
	}
}

var direction_x = sign(move_x);
if (place_meeting(x + move_x, y -1 , obj_ground))
{
	while (!place_meeting(x + direction_x,y - 1,obj_ground))
	{
		x += direction_x;
	}
	move_x = 0;
}

//vertical movement
if (place_meeting(x,y + move_y, obj_ground))
{
	while (!place_meeting(x,y + sign(move_y),obj_ground))
	{
		y = y + sign(move_y);
	}
	move_y = 0;
}

if (!obj_player.game_paused)
{
	x += move_x;
	y += move_y;
}


image_xscale = sign(obj_player.x - x);

healthbar_x = x - healthbar_width/2;
healthbar_y = y - 50;