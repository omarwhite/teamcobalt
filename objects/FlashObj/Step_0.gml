/// @description Insert description here
// You can write your code in this editor
var target;

if grow == 1{
	target = 50
}
else{
	target = 0.1
}

image_xscale = lerp(image_xscale, target, grow_rate)
image_yscale = lerp(image_yscale, target, grow_rate)

