/// @description Insert description here
// You can write your code in this editor




hspeed = clamp(hspeed, -max_speed, max_speed)
if keyboard_check(ord("A")){ //left
	hspeed += -1
	//handle sprite flip
	image_xscale = -1
	if !(head_offset_x < 0) {
		head_offset_x *= -1
	}
	with head_obj{
		image_xscale = -1;
	}
	
	with tongue_obj {
		if image_xscale > 0{
			image_xscale *= -1
		}
	}

}


else if keyboard_check(ord("D")){ //right
	hspeed += 1
	image_xscale = 1
	//handle sprite flip
	if !(head_offset_x > 0){
		head_offset_x *= -1 
	}
	with head_obj{
		image_xscale = 1
	}
	
	with tongue_obj {
		if image_xscale < 0{
			image_xscale *= -1
		}
	}

}

else {
	if hspeed < 0 {hspeed += 1}
	else if hspeed > 0 {hspeed -= 1}
}

//Prevents player from moving off screen
x = clamp(x, sprite_width/2, room_width-sprite_width/2)

//Drains players HP at rate of 3 health per second (0.1 * 30 steps in a second)
Player.hp -= health_drain



var flipFactor = 1
if keyboard_check(ord("E")){
	//Move head
	flipFactor = 1
	with head_obj{
		if (image_xscale == -1){
			flipFactor = -1
		}
		image_angle = lerp(image_angle, 90 * flipFactor, 0.5)
	}
	
	//Handle Tongue
	with head_obj{
		if !(instance_exists(other.tongue_obj)){
			instance_create_depth(x, y, 1, other.tongue_obj)
		}
	}
	
	with tongue_obj{
		if other.image_xscale < 0 and image_xscale > 0 { image_xscale *= -1 }
		var tongueLength = sprite_width - (30/defaultLength) * sprite_width
		if abs(tongueLength) < other.max_eat_reach{
			image_xscale = lerp(abs(image_xscale), 10 , other.eat_speed * 0.01) * other.image_xscale 
		}
		
	}	
}

else{
	with head_obj{
		if image_angle != 0{
			image_angle = lerp(image_angle, 0, 0.5 * flipFactor)
		}
	}
}
