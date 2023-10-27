/// @description Insert description here
// You can write your code in this editor

if g_state == GameState.NuclearWinter {
	g_state = GameState.Spring
}


switch (g_state){
	
	case GameState.Spring:
		//layer_background_index(background, 0)
		ChangeSeason(0)
		
	break;
	case GameState.Summer:
		//layer_background_index(background, 1)
		ChangeSeason(1)
	break;
	case GameState.Fall:
		//layer_background_index(background, 2)
		ChangeSeason(2)
	break;
	case GameState.Winter:
		//layer_background_index(background, 3)
		ChangeSeason(3)
	break;
}







