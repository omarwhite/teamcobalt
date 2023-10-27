/// @description Update head pos (Keep static, not floaty)
// You can write your code in this editor
draw_self()


if (head_ref){
	with head_ref{
		x = other.x + (other.head_offset_x * 1) //keep head on body
		y = other.y + (other.head_offset_y)
	}
}

if (tongue_obj){
	with tongue_obj{
		image_angle = other.head_obj.image_angle;
		x = other.head_obj.x;
		y = other.head_obj.y
	}
}

if Player.hp <= 0{
	draw_set_font(Font1)
	draw_text(481, 382, "You died, press R to restart")
	p_state = PlayerState.Dead
	hspeed = 0
	image_speed = 0
	image_yscale = -1
	head_offset_y *= -1
	with head_obj{
		image_speed = 0
		image_yscale = -1
	}
}

