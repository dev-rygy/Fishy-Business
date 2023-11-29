/// @description Insert description here
// You can write your code in this editor

shopOpen = false;
global.shop =false;
global.money = 100
global.inv =ds_list_create()

selected = 0

items = ds_list_create()

ds_list_add(items, ["bob",20,"a sick bob"])
ds_list_add(items, ["girl_left",30,"place holder"])
ds_list_add(items, ["shadow_1",40,"a black shadow"])


itemCount = ds_list_size(items)

display_set_gui_size(1366,768)
guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

menuWidth = guiWidth * .3
menuMargin = guiWidth * .1

previewWidth = guiWidth - (menuWidth + menuMargin)







