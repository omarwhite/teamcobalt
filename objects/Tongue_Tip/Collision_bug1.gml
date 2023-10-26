/// @description Insert description here
// You can write your code in this editor

Player.hp += other.foodValue;
Player.hp = clamp(Player.hp, 0, 100)

Player.p_state = PlayerState.Retracting

instance_destroy(other)

score += scoreValue
