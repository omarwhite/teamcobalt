//Only draw healthbar if player exists
if instance_exists(Player){
	draw_healthbar(8, 8, 256, 32, Player.hp, c_black, c_red, c_lime, 0, true, true)
}

draw_text(16, 64, "Calories Consumed: " + string(score))