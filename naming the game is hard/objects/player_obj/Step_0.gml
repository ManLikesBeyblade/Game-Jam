var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));


if (keyboard_check_pressed(vk_space) && (place_meeting(x, y+10, tilemap) || double_jumps >= 1)) {
    _ver = -150;
    double_jumps -= 1;
    alarm[0] = 20;
}

move_and_collide(_hor * move_speed, _ver, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (place_meeting(x, y+10, tilemap)) {
    double_jumps = 1;
}