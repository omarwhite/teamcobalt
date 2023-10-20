if spawning then {
	//create object
	instance_create_layer(0, 0, "Instances", entity)
	//set boolean to false so the object spawns at a controlled pace
	spawning = false
	//set an alarm that controls when the boolean will be set to true 
	alarm_set(0, spawnInterval)
}