/// @description Insert description here
// You can write your code in this editor
//	Executa a cada frame por segundo

//Reiniciando jogo
if(y > 800){ 
	room_goto(rm_gameover);
} 
if(x < -32){
	room_goto(rm_gameover);
}

var _inst = instance_place (x , y , obj_enemy);

if (_inst != noone)
{
    instance_destroy (_inst);
}


//Aplicando a gravidade
if(!place_meeting(x, y + 1, obj_plataforma)) // Se eu não estou tocando a plataforma
{
	if(velV < 0)
	{
		sprite_index = spr_jump;
	}
	else
	{
		sprite_index = spr_fall;
	}
	
	velV = velV + grav;
	
	if(keyboard_check_released(vk_space) and velV < 0)
	{
		velV = velV * .5;
	}
}
else //Estou tocando a plataforma
{
	sprite_index = spr_run;
	
	velV = 0
	if(keyboard_check_pressed(vk_space))
	{
		velV = jump;
	}
}
if(place_meeting(x, y + velV, obj_plataforma) and !place_meeting(x, y + velV, obj_enemy))
{
	while(!place_meeting(x, y + sign(velV), obj_plataforma)) // Enquanto eu não estiver a 1 pixel da plataforma repita isso
	{
		y += sign(velV)
	}
	velV = 0
}
if(place_meeting(x - global.velocidade, y, obj_plataforma) and !place_meeting(x - global.velocidade, y, obj_enemy))
{
	while(!place_meeting(x - sign(global.velocidade), y, obj_plataforma)) // Enquanto eu não estiver a 1 pixel da plataforma repita isso
	{
		x -= sign(global.velocidade);
	}
	
	sprite_index = spr_idle;
	hspeed =  global.velocidade;
}
else
{
	hspeed = 0;
}
y += velV
if(place_meeting(x - global.velocidade, y, obj_plataforma))
{
	while(!place_meeting(x - sign(global.velocidade), y, obj_plataforma)) // Enquanto eu não estiver a 1 pixel da plataforma repita isso
	{
		x -= sign(global.velocidade);
	}
	
	sprite_index = spr_idle;
	hspeed =  global.velocidade;
}
else
{
	hspeed = 0;
}