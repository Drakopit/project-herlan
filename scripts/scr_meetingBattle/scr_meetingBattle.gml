/// @description Make the battle happen
/// @param enemy The enemy that collided with the player
/// @param room_battle The room where the battle is

current_world_state = MACHINE_WORLD.IN_BATTLE;

turn_battle = TURN_BATTLE.ENEMY;
enemy_count = floor(random_range(1,4));
turns_count = 01;

var enemy = argument0;
var room_battle = argument1;

// Fix it!
last_enemy = enemy;

room_goto(room_battle);

instance_destroy();