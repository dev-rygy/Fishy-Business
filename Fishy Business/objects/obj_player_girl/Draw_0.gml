/// @description Insert description here
// You can write your code in this editor

draw_self();

if (tilemap_get_at_pixel(int_layer_id, x, y) || tilemap_get_at_pixel(int_layer_id_2, x, y))
{
	var index = current_second mod 2;
	draw_sprite_ext(spr_e_signal_button, index, x, y - 45, 1, 1, 0, c_white, 1.0);
}