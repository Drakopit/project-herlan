current_world_state = MACHINE_WORLD.IN_BATTLE;

turn_battle = TURN_BATTLE.ENEMY;
enemy_count = floor(random_range(1,4));
turns_count = 01;

var enemy = argument0;
var room_battle = argument1;

room_goto(room_battle);

// Start battle
// instance_create(0, 0, obj_battle);

with (room_battle) {
	for (var i = 0; i < enemy_count; i++) {
	    instance_create(__view_get( e__VW.WView, 0 ) - 64, 128 + (i * 64), enemy);
	};

	with(obj_player) {
		isMoving = false;
		moveTimer = 0;
		vSpeed = 0;
		hSpeed = 0;
		sprite_index = spr_idle;
	    x = 064;
	    y = 256;
	}
}

instance_destroy();