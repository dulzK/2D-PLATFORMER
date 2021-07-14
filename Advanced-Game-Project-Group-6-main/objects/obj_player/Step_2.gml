/// @description Animation

image_xscale = sign(lastDir);

switch (playerState) //choose a sprite depending on the playerstate
{
    case PLAYER_STATE.IDLE:
        sprite_index = spr_player_idle;
        break;
	case PLAYER_STATE.RUN:
		sprite_index = spr_player_run;
        break;
	case PLAYER_STATE.JUMP:
		if (sprite_index != spr_player_jump) sprite_index = spr_player_jump;
        break;
	case PLAYER_STATE.FALL:
		if (sprite_index != spr_player_jump) sprite_index = spr_player_jump;
        break;
    default:
        // code here
        break;
}