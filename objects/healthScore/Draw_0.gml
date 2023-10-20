if instance_exists(Player){
	show_debug_message("here")
	draw_healthbar(8, 8, 256, 32, Player.hp, c_black, c_red, c_lime, 0, true, true)
}

//Finish implementing scoreboard
draw_text(16, 64, "Score: " + string(score))