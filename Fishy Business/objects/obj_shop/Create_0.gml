/// @description Insert description here
// You can write your code in this editor

shopOpen = false;
global.shop = false
global.money = 100
global.inv = ds_list_create()
selected = 0
items = ds_list_create()

ds_list_add(items,["meter_bg",20,"this ia a power bar"])
ds_list_add(items,["meter_bg",20,"this ipppp power bar"])
ds_list_add(items,["meter_bg",20,"thwer bar"])

itemCount = ds_list_size(items)
display_set_gui_size(1366,768)
guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

menuWidth= guiWidth*.3

menuMargin = guiWidth * .1

previewWidth = (guiWidth- (menuWidth+menuMargin))
