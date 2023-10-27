/// @description Insert description here
// You can write your code in this editor

instance_create_depth(0, 0, -11, FlashObj)

if g_state != GameState.NuclearWinter{
	g_state +=1
}
else{
	g_state = GameState.Spring
}

ChangeSeason()
alarm_set(0, season_change_rate)





