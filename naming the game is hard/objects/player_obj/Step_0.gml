var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));


if (keyboard_check_pressed(vk_space)) {
    _ver = -150;
    alarm[0] = 15;
} 

move_and_collide(_hor * move_speed, _ver, tilemap, undefined, undefined, undefined, move_speed, move_speed);