/// @description Insert description here
// You can write your code in this editor


if prev_score != score{
	p_state = PlayerState.Cooldown	
}

prev_score = score

//Drains players HP at rate of 3 health per second (0.1 * 30 steps in a second)
if !keyboard_check(ord("I")){
	Player.hp -= health_drain
}


hspeed = clamp(hspeed, -max_speed, max_speed)

if p_state == PlayerState.Normal or p_state == PlayerState.Retracting or p_state == PlayerState.Cooldown{
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
		//show_debug_message(p_state)
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
		show_debug_message(p_state)
	}
	
	else {
		if hspeed < 0 {hspeed += 1}
		else if hspeed > 0 {hspeed -= 1}
	}

	
}
else {
	if hspeed < 0 {hspeed += 1}
	else if hspeed > 0 {hspeed -= 1}
}

//Prevents player from moving off screen
x = clamp(x, 0, room_width-sprite_width/2)


Player.hp = clamp(Player.hp, 0, 100)

if Player.hp < 1{
		
}

var flipFactor = 1
if keyboard_check(ord("E")) and p_state != PlayerState.Hidden and  p_state != PlayerState.Cooldown
	and p_state != PlayerState.Dead{
	p_state = PlayerState.Eating
	show_debug_message(p_state)
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
			instance_create_depth(x, y, other.depth+1, other.tongue_obj)
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
else if p_state != PlayerState.Cooldown{
	p_state = PlayerState.Retracting
}

if p_state == PlayerState.Retracting {
	show_debug_message(p_state)
	if tongue_obj{
		with tongue_obj{ // Retract the tongue
			if other.image_xscale < 0 and image_xscale > 0 { image_xscale *= -1 }
			var tongueLength = sprite_width - (30/defaultLength) * sprite_width
			if abs(tongueLength) > 0{
				image_xscale = lerp(abs(image_xscale), 0 , other.retract_speed * 0.1) * other.image_xscale 
			}
			if abs(tongueLength) < 1.5{
				instance_destroy()
			}
		}	
	}
	with head_obj{
		if image_angle != 0{
			image_angle = lerp(image_angle, 0, 0.5 * flipFactor)
		}
		
		if image_angle < 1{
			other.p_state = PlayerState.Normal
		}
	}
}
show_debug_message(p_state)
if p_state == PlayerState.Cooldown {
	show_debug_message(p_state)
	if tongue_obj{
		with tongue_obj{ // Retract the tongue
			if other.image_xscale < 0 and image_xscale > 0 { image_xscale *= -1 }
			var tongueLength = sprite_width - (30/defaultLength) * sprite_width
			if abs(tongueLength) > 0{
				image_xscale = lerp(abs(image_xscale), 0 , other.retract_speed * 0.1) * other.image_xscale 
			}
			if abs(tongueLength) < 1.5{
				instance_destroy()
			}
		}	
	}
	with head_obj{
		if image_angle != 0{
			image_angle = lerp(image_angle, 0, 0.5 * flipFactor)
		}
		
		//if image_angle < 1{
		//	other.p_state = PlayerState.Normal
		//}
	}

}
