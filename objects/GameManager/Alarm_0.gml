/// @description Insert description here
// You can write your code in this editor

instance_create_depth(room_width/2, room_height/2, -20, FlashObj)


if g_state != GameState.NuclearWinter{
	g_state +=1
}
else{
	g_state = GameState.Spring
}

alarm_set(0, season_change_rate)





