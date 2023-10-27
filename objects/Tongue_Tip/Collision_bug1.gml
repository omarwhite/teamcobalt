/// @description Insert description here
// You can write your code in this editor

Player.hp += other.foodValue;

Player.p_state = PlayerState.Cooldown

with Player{
	alarm_set(0, 100)
}

instance_destroy(other)

image_index = 1
alarm_set(0, 15)


score += scoreValue
