/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else 
{
	image_yscale = 1;
}

var _shoot = gun.fullauto ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left);
var _ammo = gun.ammo[bullet_index];

if canshoot > 0 canshoot--;
else if _shoot
{
	canshoot = _ammo.firerate;
	
	
	_ammo.firerate = lerp(_ammo.firerate, _ammo.rate_end, _ammo.rate_mult);
	Shoot();
	
	var _delay = gun.burst_delay;
	repeat(gun.burst_number - 1)
	{
		call_later(_delay, time_source_units_frames, Shoot);
		_delay += gun.burst_delay;
	}
}

if (!mouse_check_button(mb_left))
{
		_ammo.firerate = lerp(_ammo.firerate, _ammo.rate_start, _ammo.rate_mult);
}