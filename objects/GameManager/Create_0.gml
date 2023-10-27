/// @description Insert description here
// You can write your code in this editor



bush2Offset = 150 // Offset for the foreground bushes y
bush_width = 0

ground_depth = Player.depth + 2
bush1_depth = ground_depth + 2
bush2_depth = Player.depth - 2

ground_ref = instance_create_depth(0, 0, ground_depth, Ground)
bush_ref = instance_create_depth(0, 0, bush1_depth, Bushes)

with bush_ref{
	other.bush_width = sprite_width
}

bush2_ref = instance_create_depth(bush_width, bush2Offset, bush2_depth, Bushes)

with bush2_ref{
	image_xscale = -1;
}

enum GameState {
	Spring,
	Summer,
	Fall,
	Winter,
	NuclearWinter
}

g_state = GameState.Spring
previous_state = GameState.Spring

background = layer_background_get_id(layer_get_id("Background"))

alarm_set(0, season_change_rate)


