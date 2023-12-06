/// @description Insert description here
// You can write your code in this editor

shopOpen = false;
global.shop = false
global.money = 15
global.inv = ds_list_create()
selected = 0
items = array_create(9, -1);

items[0] = obj_bait_worm;
items[1] = obj_bait_grasshopper;
items[2] = obj_bait_shrimp;
items[3] = obj_rod_stick;
items[4] = obj_rod_improved;
items[5] = obj_rod_superb;
items[6] = obj_line_yarn;
items[7] = obj_line_cheap;
items[8] = obj_line_improved;

itemCount = array_length(items);
display_set_gui_size(1366,768)
guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

menuWidth= guiWidth*.3;

menuMargin = guiWidth * .1;

previewWidth = (guiWidth- (menuWidth+menuMargin));
