// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeSeason(index){
	layer_background_index(GameManager.background, index)
	Ground.image_index = index
	Bushes.image_index = index
}