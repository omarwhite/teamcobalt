/// @description Insert description here
// You can write your code in this editor

//State Definitions

prev_score = 0

depth = -2
enum PlayerState {
	Normal,
	Eating,
	Retracting,
	Hidden,
	Dead,
	Cooldown
}



//State inits
p_state = PlayerState.Normal


//Global Defs
head_ref = instance_create_depth(x, y, depth - 1, head_obj)
Player.hp = 100




