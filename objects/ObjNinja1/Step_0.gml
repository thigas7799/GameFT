/// @description Insert description here
// You can write your code in this 

if (keyboard_check(vk_right)) x += vel;
if (keyboard_check(vk_left)) x -= vel;
if (keyboard_check(vk_up)) y -= vel;
if (keyboard_check(vk_down)) y += vel;


// Verificando 1px abaixo do meu player se eu não estou tocando a plataforma
if (!place_meeting(x, y + 1, ObjParede)) 
{
	// Minha velVer nesse momento é negativa
	velVer +=  grav;
	sprite_index = SprNinjaJump;
	
	if (velVer >= 0)
	{
		sprite_index = SprNinjaFall;
	}
	
	// Se eu parar de pressionar o espaço e se o player estiver caindo 
	if(keyboard_check_released(vk_space) and velVer < 0)
	{
		velVer = velVer * .5; //cai 50% mais rápido (pulo menor)
	}
}
else //Estou tocando a plataforma 
{
	// Trocando a animação para correr
	sprite_index = SprNinjaRun;
	
	// 'keyboard_check_pressed(codTecla)' verfica se uma tecla foi pressionada
	if (keyboard_check_pressed(vk_space))
	{
		velVer = jump; // Lembrando que pra cima o eixo y é negativo
	}
}

// Verificando se minhas cordenadas mais a velocidade vertical colidem com a plataforma
if (place_meeting(x, y + velVer, ObjParede))
{
	/*sign(var) pega o valor informado e converte para 1, 0 ou -1. 
	Valor > 0 = 1; Valor < 0 = -1; Valor nulo = 0*/
	
	// Enquanto minha posição y - 1, ou seja, enquanto eu não estiver 1px acima da plataforma repita
	while(!place_meeting(x, y + sign(velVer), ObjParede))
	{
		y += sign(velVer) // Aproxima o player 1px da plataforma até ele ficar a uma distância de 1px dela
	}
	
	velVer = 0
}
