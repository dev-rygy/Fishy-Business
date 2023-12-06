/// @description Insert description here
// You can write your code in this editor

if (tension_force_current > 0)
	percentage_shake = tension_force_current / tension_force_max;
var meter_shake = sin(self.counter) * percentage_shake * shake_magnitude;
counter++;

show_debug_message(meter_shake);

if (obj_game_manager.game_state == 2) // When the fish bites onto the rod - draw the meter
{
	draw_sprite_ext(ui_meter_bg, 0, 1161 + meter_shake, 230, 10, 10, 0, c_white, 1);
	draw_sprite_ext(ui_meter_line, 0, 1161 + meter_shake, tension_meter_current_ui, 10, 10, 0, c_white, 1);
}
