/// @description Insert description here
// You can write your code in this editor
draw_self();


if (tip_ref){
	with tip_ref{
		var tongueLength = other.sprite_width - (30/other.defaultLength) * other.sprite_width
		//image_xscale = Player.flipFactor;
		
		x = other.x + (tongueLength * cos(degtorad(image_angle)));
		y =  other.y - (tongueLength * sin(degtorad(image_angle))) 
		image_angle = other.image_angle
		
	}
}




