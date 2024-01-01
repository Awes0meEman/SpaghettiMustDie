/// @description Insert description here
// You can write your code in this editor





if (place_meeting(x,y+2,obj_ground))
{

	move_y = 0;
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x + move_x, y + 10, obj_ground))
	{
		move_y = abs(move_x);
		move_x = 0;
	}
}
else if (move_y < 10) 
{

	move_y += 1;
}

move_and_collide(move_x,move_y,obj_ground,4, 0, 0, move_speed, -1);


image_xscale = sign(obj_player.x - x);


healthbar_x = x - healthbar_width/2;
healthbar_y = y - 20;

with(healthBar) {
		healthbar_x = other.healthbar_x;
		healthbar_y = other.healthbar_y;
		hp = other.hp;
		hpCap = other.hpCap;
}