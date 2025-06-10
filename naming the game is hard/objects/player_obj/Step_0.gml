var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var on_ground = place_meeting(x, y+1, tilemap);

// gravity intensity
_gravity += 3;

if (keyboard_check_pressed(vk_space) && on_ground) {
    // when on ground can jump
    _gravity = -100;
} else if (keyboard_check_pressed(vk_space) && double_jumps == 1) {
    // when in air can jump once
    _gravity = -100;
    double_jumps -= 1;
} else if (on_ground) {
    // when on ground reset gravity + jumps
    double_jumps = 1;
    _gravity = 1;
}

if (_gravity>= 20 && place_meeting(x, y+4, tilemap)) {
    _gravity = 4;
}

if (_gravity >= 200) {
    _gravity = 200;
}



if (dash == 1) {
    _hor = facing;
    _gravity = 0;
}
if (keyboard_check_pressed(vk_lshift)) {
    dash = 1;
    move_speed = 8;
    alarm = 13;
}



move_and_collide(_hor * move_speed, _gravity * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);
if (_hor != 0) {
    facing = _hor;
}
