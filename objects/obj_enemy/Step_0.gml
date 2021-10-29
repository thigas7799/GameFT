/// @description Insert description here
// You can write your code in this editor

var chao = place_meeting(x, y + 1, obj_plataforma)
if(direcao == 1) // indo para a direita
{
hspeed = global.velocidadeEnemy
image_xscale = -1
}
else if(direcao == -1) //indo para a esquerda
{
hspeed = -2 * global.velocidadeEnemy
image_xscale = 1
}
if(!chao)
{
	velV += grav;
}
if(!place_meeting(x + 90 * direcao, y + 1, obj_plataforma))
{
	direcao *= -1
}

