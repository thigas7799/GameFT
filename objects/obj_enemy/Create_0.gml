/// @description Insert description here
// You can write your code in this editor
randomize();

direcao = choose(1, -1, 1, 1);
alvo = noone;
grav = -4 * -0.1;
velV = 0;
global.velocidadeEnemy = 4;
hspeed = direcao * global.velocidadeEnemy;

alarm[0] = room_speed * 3;
