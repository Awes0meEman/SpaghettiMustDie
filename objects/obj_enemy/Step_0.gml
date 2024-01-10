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


if (place_meeting(x,y+2,obj_ground))
{

	move_y = 0;
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x + move_x, y + 10, obj_ground))
	{
		move_y = abs(move_x);
		//move_y = -jump_speed;

		move_x = 0;
	}
}
else if (move_y < 10) 
{

	move_y += 1;
}


if (!obj_player.game_paused){
move_and_collide(move_x,move_y,obj_ground,4, 0, 0, move_speed, -1);
	
}


image_xscale = sign(obj_player.x - x);

healthbar_x = x - healthbar_width/2;
healthbar_y = y - 50;