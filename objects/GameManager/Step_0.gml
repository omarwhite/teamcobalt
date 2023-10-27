/// @description Insert description here
// You can write your code in this editor
//show_debug_message(g_state)

//if (g_state == GameState.NuclearWinter or g_state == GameState.Winter){
//	//object_set_visible(Bushes, false
//		instance_deactivate_object(bush_ref)
//		instance_deactivate_object(bush2_ref

//}
//else{
//	//object_set_visible(Bushes, true)
//	if bush_ref{
//		instance_activate_obeject(bush_ref)
//		instance_activate_obeject(bush2_ref)
//	}
//}	


switch (g_state){
	case GameState.Fall:
		layer_background_change(background, AutumnBG)
		object_set_sprite(Ground, Autumn_Ground)
		object_set_sprite(Bushes, Autumn_Bush)
		ChangeSeason()
	break;
	case GameState.Spring:
		layer_background_change(background, SpringBGAlt)
		object_set_sprite(Ground, Spring_Ground)
		object_set_sprite(Bushes, Spring_BushALT)
		ChangeSeason()
	break;
	case GameState.Summer:
		layer_background_change(background, SummerBG)
		object_set_sprite(Ground, Summer_Ground)
		object_set_sprite(Bushes, Summer_Bush)
		ChangeSeason()
	break;
	case GameState.Winter:
		layer_background_change(background, WinterBG)
		object_set_sprite(Ground, Winter_Ground)
		ChangeSeason()
	break;
}






