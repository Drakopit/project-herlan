#region MACHINE_BATTLE
globalvar enum MACHINE_BATTLE {
    IDLE,
    ATTACK,
    MAGIC,
    ITEM,
    RUN
}

globalvar current_battle_state;
current_battle_state = MACHINE_BATTLE.IDLE;
#endregion

#region Setting Battle Mode
for (var i = 0; i < enemy_count; i++) {
	instance_create(__view_get( e__VW.WView, 0 ) - 64, 128 + (i * 64), obj_enemy);
};

with(obj_player) {
	isMoving = false;
	moveTimer = 0;
	vSpeed = 0;
	hSpeed = 0;
	sprite_index = spr_idle;
	x = 032;
	y = 256;
}
#endregion

