/// @description Insert description here
// You can write your code in this editor
randomize();

if(!place_meeting(x, y, obj_plataforma))
{
	global.criarInimigo = 1;
	var comprimento = choose(1, 1.1, 1.2, 1.3, 1.4); 
	var altura =  choose(0.85, 0.9, 1, 1.1, 1.2, 1.3, 1.4); 
	var distanciaX = 100;
	
	
	if(comprimento >= 1 and comprimento <= 1.2)
	{
		distanciaX = irandom_range(3, 4) * 40;
	}
	else
	{
		distanciaX = irandom_range(3, 4) * 50;
	}
	
	var plataforma = instance_create_layer(x + distanciaX, y, "instances", obj_plataforma);
	plataforma.image_xscale = comprimento;
	plataforma.image_yscale = altura;
}