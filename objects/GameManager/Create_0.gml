/// @description Insert description here
// You can write your code in this editor


enum GameState {
	Spring,
	Summer,
	Fall,
	Winter,
	NuclearWinter
}

g_state = GameState.Spring

background = layer_background_get_id(layer_get_id("Background"))
layer_background_speed(background, 0)

alarm_set(0, season_change_rate)


