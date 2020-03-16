var player = argument0;
var enemy = argument1;

if (player.Agi >= floor(random(enemy.Agi))) {
	room_goto_previous();
} else {
	turn_battle = TURN_BATTLE.ENEMY;
}