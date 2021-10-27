/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y + velV, obj_plataforma)) //Estou tocando a plataforma
{
	while(!place_meeting(x, y + sign(velV), obj_plataforma))
	{
		y += sign(velV)
	}
	velV = 0
}
y += velV