/// @description Insert description here
// You can write your code in this editor

move_y = 0;
move_x = 0;
move_speed = 0;

hp = 100;
hpCap = 100;
healthbar_width = 20;
healthbar_height = 2;
healthbar_x = x - healthbar_width/2;
healthbar_y = y - 20;

healthBar = instance_create_layer(healthbar_x,healthbar_y,"Enemies",obj_healthBar);
with (healthBar)
{
		healthbar_width = other.healthbar_width;
		healthbar_height = other.healthbar_height;
		healthbar_x = other.healthbar_x;
		healthbar_y = other.healthbar_y;
		hp = other.hp;
		hpCap = other.hpCap
}
