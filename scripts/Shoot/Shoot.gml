// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shoot(){
	with obj_lasGun
	{
		audio_play_sound(gun.sound, 10, false, random_range(0.8,1), 0,random_range(0.8,1));
		
		var _dist = sprite_get_width(gun.sprite) - sprite_get_xoffset(gun.sprite);
		
		for (var i = 0; i < gun.spread_number; i++)
		{
			var _angle = image_angle + (i * gun.spread_angle) - ((gun.spread_number - 1) * (gun.spread_angle / 2));
			
			instance_create_depth(
			x + lengthdir_x(_dist, image_angle),
			y + lengthdir_y(_dist, image_angle),
			depth - 1,
			obj_laser,
			{
				image_angle: _angle + random_range(-gun.inaccuracy, gun.inaccuracy),
				sprite_index: gun.ammo[bullet_index].sprite,
				spd: gun.ammo[bullet_index].spd,
				dmg: gun.ammo[bullet_index].dmg
			});
		}
		
		x -= gun.kick * image_yscale;
		knockback_angle += gun.kick * image_yscale;
		
		if bullet_index < array_length(gun.ammo) - 1 bullet_index++;
		else bullet_index = 0;
	}
}