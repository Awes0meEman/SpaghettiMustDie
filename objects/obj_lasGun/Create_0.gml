/// @description Insert description here
// You can write your code in this editor
mouse_angle = 0;
knockback_angle = 0;
ox = x;
oy = y;

laserR = {
	sprite: spr_laserR,
	spd: 10,
	rate_start: 20,
	rate_end: 20,
	rate_mult: 0,
	firerate: 10,
	effect: ef_explosion,
	effectColor: c_red
};

laserg = {
	sprite: spr_laserg,
	spd: 20,
	rate_start: 20,
	rate_end: 20,
	rate_mult: 0,
	firerate: 10,
	effect: ef_explosion,
	effectColor: c_green
};


gun = {
	name: "LasGun",
	sprite: spr_lasGun,
	ammo: [laserR],
	inaccuracy: 0,
	kick: 2,
	sound: snd_pow,
	spread_number: 1,
	spread_angle: 5,
	fullauto: true,
	burst_number: 1,
	burst_delay: 5
};

canshoot = 0;
bullet_index = 0;

