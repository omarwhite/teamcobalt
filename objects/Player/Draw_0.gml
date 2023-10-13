/// @description Update head pos (Keep static, not floaty)
// You can write your code in this editor
draw_self()


if (head_ref){
	with head_ref{
		x = other.x + (other.head_offset_x * 1) //keep head on body
		y = other.y + (other.head_offset_y)
	}
}