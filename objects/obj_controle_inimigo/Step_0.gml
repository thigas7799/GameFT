/// @description Insert description here
// You can write your code in this editor
randomize();

if(global.criarInimigo == 1)
{
	global.criarInimigo = 0;
	
	//if(irandom_range(1, 100) >= 40)
	//{
		instance_create_layer(x, y, "instances", obj_enemy)
	//}
}