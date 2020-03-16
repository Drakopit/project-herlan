level = 01;

Str = 05;
Int = 02;
Agi = 12;
Des = 15;

Hp = Str * 10;
Mp = Int * 10;
MaxHp = Hp;
MaxMp = Mp;

AtqFisico = ceil(Str*1.5);
AtqMagico = ceil(Int*3);
DefFisica = ceil(Str*0.75);
DefMagica = ceil(Int*2);

Cri = floor(Des/10);
Esq = floor(Agi/10);

Gold = random_range(10, 100) * 10;

// Variaveis de Sietema
z = 0; // Nível de profundidade do objeto

velocity = 4; // Velocidade de locomoção
image_speed = 0.4;

scr_initGridMoveEnemy(32, 4, spr_blue_slime_up, spr_blue_slime_down, spr_blue_slime_right, spr_blue_slime_left, spr_blue_slime_down);

