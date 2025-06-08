hp = 25;
total_hp = 25
move_speed = 3;
atk = 2;
// facing 1 = right 2 = left
_gravity = 1;
facing = 1;
tilemap = layer_tilemap_get_id("platform");
double_jumps = 1;

function hello() {
    show_debug_message(double_jumps);
}
function world() {
    show_debug_message(hp);
}
alarm[0] = 60;