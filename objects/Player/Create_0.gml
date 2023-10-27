/// @description Insert description here
// You can write your code in this editor

//State Definitions
enum PlayerState {
	Normal,
	Eating,
	Retracting,
	Hidden,
	Dead
}

//State inits

p_state = PlayerState.Normal


//Global Defs
head_ref = instance_create_depth(x, y, -10, head_obj)
Player.hp = 100




