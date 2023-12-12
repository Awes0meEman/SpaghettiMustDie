/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_ground))
{
	spd = 0;
	image_index = 2;
}
var _p = 64;
if !point_in_rectangle(x, y, -_p,-_p, room_width + _p, room_height + _p) instance_destroy();