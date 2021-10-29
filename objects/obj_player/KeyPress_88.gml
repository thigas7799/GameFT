/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_attack1;
global.aux = global.velocidade
global.velocidade = 0
hspeed = 0;

var _inst = instance_place (x + 70  , y , obj_enemy);

if (_inst != noone)
{
	global.pontos += (global.pontos / 10) * global.multiplicador;
    instance_destroy (_inst);
}

