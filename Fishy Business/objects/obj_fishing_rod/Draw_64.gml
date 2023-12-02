/// @description Insert description here
// You can write your code in this editor

if (obj_game_manager.game_state == 2) // When the fish bites onto the rod - draw the meter
{
	draw_sprite_ext(ui_meter_bg, 0, 1161, 230, 10, 10, 0, c_white, 1);
	draw_sprite_ext(ui_meter_line, 0, 1161, tension_meter_current, 10, 10, 0, c_white, 1);
}
