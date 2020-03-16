/// @description Check if the player can run
/// @param player
/// @param enemy

var player = argument0;
var enemy = argument1;

if (player.Agi >= floor(random(enemy.Agi))) {
	return true;
	room_goto_previous();
} else {
	return false;
}