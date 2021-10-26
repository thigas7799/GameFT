/// @description Insert description here
// You can write your code in this editor
randomize();

if(!place_meeting(x, y, obj_plataforma))
{
	var comprimento = choose(4, 5, 5, 6, 7); 
	var altura =  choose(1, 1.5, 2, 2.5, 3); 
	var distanciaX =  irandom_range(4, 6) * 50;
	
	var controlePlataforma = instance_create_layer(x + distanciaX, y, "instances", obj_plataforma);
	var controleParede = instance_create_layer(x + distanciaX - 10, y, "instances", obj_parede_invisivel);
	var controleParede2 = instance_create_layer(x + 10, y, "instances", obj_parede_invisivel);

	controlePlataforma.image_xscale = comprimento;
	controlePlataforma.image_yscale = altura;
	
	if(irandom_range(1, 100) >= 40)
	{
		instance_create_layer(x - irandom_range(20, 100)  * comprimento, y - 200 , "instances", obj_enemy)
	}
	
	controleParede.image_yscale = altura + 6;
	controleParede2.image_yscale = altura + 6;
}