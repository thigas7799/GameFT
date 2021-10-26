/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x + hspeed, y, obj_parede_invisivel))
{
	while(!place_meeting(x + sign(hspeed), y, obj_parede_invisivel)) // Enquanto eu não estiver a 1 pixel da plataforma repita isso
	{
		x += sign(hspeed);
	}
	hspeed = 0
}
if(place_meeting(x, y + velV, obj_plataforma)) //Estou tocando a plataforma
{
	while(!place_meeting(x, y + sign(velV), obj_plataforma))
	{
		y += sign(velV)
	}
	velV = 0
}
y += velV