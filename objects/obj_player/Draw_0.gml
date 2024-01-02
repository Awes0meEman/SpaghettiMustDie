/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_stretched(spr_healthBarG,0,healthbar_x,healthbar_y,(hp/hpCap)* healthbar_width,healthbar_height);
draw_sprite_stretched(spr_healthBarR,0,healthbar_x + healthbar_width - ((hpCap - hp)/100 * healthbar_width),healthbar_y,(hpCap - hp)/100 * healthbar_width,healthbar_height);
