/// @description Insert description here
// You can write your code in this editor


if (!shopOpen) exit

draw_set_color(c_black)
	draw_set_alpha(.5)
		draw_rectangle(0,0,guiWidth,guiHeight,0)
	draw_set_alpha(.8)
		draw_rectangle(menuMargin,0,menuMargin+menuWidth,guiHeight,0)
	draw_set_alpha(1)
draw_set_color(c_white)


for (var i = 0;i < itemCount; i++){
	
	var item = items[i].name;
	
	var _x = menuMargin+menuWidth/2
	var _y = (guiHeight/2)+(i-selected)*32
	
	var s =1
	if (i==selected) item = "> " + item + " <"
	
	draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
			draw_text_transformed(_x,_y,item,s,s,0)
		draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}

var item = items[selected].name;
var price = items[selected].value;
var desc = items[selected].description;


var _x = (menuMargin+menuWidth)+previewWidth/2;
var _y = guiHeight/2


