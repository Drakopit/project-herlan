globalvar level, Name,
Hp, Mp, MaxHp, MaxMp,
Str, Int, Agi, Des, Cri, Esq,
AtqFisico, AtqMagico, DefFisica, DefMagica,
Gold;

level = 01;
Name = "Toba";

Str = 10;
Int = 10;
Agi = 10;
Des = 10;

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

Gold = 0;

// Variaveis de Sietema
z = 0; // Nível de profundidade do objeto

velocity = 4; // Velocidade de locomoção
image_speed = 0.4;

init_gridMove(32, 4, spr_player_up, spr_player_down, spr_player_right, spr_player_left, spr_player_stand);

/***************************************************
  Skills
 ***************************************************/

magic_level  = 01;
carry_weight = 25;

// Magics
Magics[magic_level, 0] = obj_fire_lv1;
Magics[magic_level, 1] = obj_ice_lv1;

// Inventary
var inventorySize = sqrt(carry_weight);
for (var xx = 0; xx < inventorySize; xx++) {
    for (var yy = 0; yy < inventorySize; yy ++)
    {
        Inventory[xx, yy] = noone;
    };    
};

/* */
/*  */
