/// @description Chose the enemy to attack
/// @param enemy The enemy to be attacked

var enemyType = argument0;

var enemies = instance_number(enemyType);

if (keyboard_check_released(vk_up)) {
	enemy_cursor--;
	if (enemy_cursor < 0) {
		enemy_cursor = enemies;
	}
} else if (keyboard_check_released(vk_down)) {
	enemy_cursor++;
	if (enemy_cursor > 0) {
		enemy_cursor = 0;
	}
}

if (keyboard_check_released(vk_enter)) {
    scr_simpleAttack(obj_player, enemies_list[enemy_cursor]);
	current_battle_state = MENU_BATTLE.IDLE;
	turn_battle = TURN_BATTLE.ENEMY;
	turns_count++;
}

if (keyboard_check_released(vk_escape)) {
	current_battle_state = MENU_BATTLE.IDLE;
}
