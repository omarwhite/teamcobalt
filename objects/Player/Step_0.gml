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

//Prevents player from moving off screen
x = clamp(x, sprite_width/2, room_width-sprite_width/2)

//Drains players HP at rate of 3 health per second (0.1 * 30 steps in a second)
Player.hp -= health_drain