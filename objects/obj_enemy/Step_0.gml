/// @description Insert description here
// You can write your code in this editor
var chao = place_meeting(x, y + 1, obj_plataforma)
if(direcao == 1) // indo para a direita
{
hspeed = 0.09 * -global.velocidade
image_xscale = -1
}
else if(direcao == -1) //indo para a esquerda
{
hspeed = -1.4 * -global.velocidade
image_xscale = 1
}
if(!chao)
{
	velV += grav;
}
if(!place_meeting(x + 60 * direcao, y + 1, obj_plataforma))
{
	direcao *= -1
}

