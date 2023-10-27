// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeSeason(){
	instance_destroy(GameManager.ground_ref)
	instance_destroy(GameManager.bush_ref)
	instance_destroy(GameManager.bush2_ref)
	GameManager.ground_ref = instance_create_depth(0, 0, GameManager.ground_depth, Ground)
	GameManager.bush_ref = instance_create_depth(0, 0, GameManager.bush1_depth, Bushes)
	GameManager.bush2_ref = instance_create_depth(GameManager.bush_width, GameManager.bush2Offset, GameManager.bush2_depth, Bushes)
	with GameManager.bush2_ref {
		image_xscale = -1;
	}
	
	
}