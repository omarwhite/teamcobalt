/// @description Insert description here
// You can write your code in this editor


if g_state != GameState.NuclearWinter{
	g_state +=1
}
else{
	g_state = GameState.Spring
}

alarm_set(0, season_change_rate)





