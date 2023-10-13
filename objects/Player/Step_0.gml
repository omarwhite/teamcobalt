/// @description Insert description here
// You can write your code in this editor


hspeed = clamp(hspeed, -max_speed, max_speed)

if keyboard_check(ord("A")){ //left
	hspeed += -1

}


else if keyboard_check(ord("D")){ //right
	hspeed += 1

}

else {
	if hspeed < 0 {hspeed += 1}
	else if hspeed > 0 {hspeed -= 1}
}



