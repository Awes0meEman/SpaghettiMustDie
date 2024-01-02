/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
hp = hp - other.dmg;
if (hp <= 0) {
	instance_destroy();
}
