var attack = argument0;
var enemy = argument1;

// Verify was critical attack
if (ceil(random(100)) >= Cri) {
    enemy.Hp -= (enemy.DefFisica - (AtqFisico * 2));
    var obj_attack = instance_create(enemy.x, (enemy.y - enemy.sprite_width / 2), obj_simpleAttack);
    objs_attak.damage = (enemy.DefFisica - (AtqFisico * 2));
    objs_attak.color = c_maroon;
    // Play audio
} else if (ceil(random(100)) >= enemy.Esq) {
    var obj_attack = instance_create(enemy.x, (enemy.y - enemy.sprite_width / 2), obj_simpleAttack);
    objs_attak.damage = "Miss";
    objs_attak.color = c_gray;
    // Play audio
} else {
    enemy.Hp -= (enemy.DefFisica - AtqFisico);
    var obj_attack = instance_create(enemy.x, (enemy.y - enemy.sprite_width / 2), obj_simpleAttack);
    objs_attak.damage = (enemy.DefFisica - AtqFisico);
    objs_attak.color = c_maroon;
    // Play audio
}
