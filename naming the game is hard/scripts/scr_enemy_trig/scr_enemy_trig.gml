


function archer_trig() {
    var out_of_range = 200;
    sprite_index = temp_archer_idle;
    if (!instance_exists(collision_circle(x, y, 200, player_obj, false, true))) {
        // set state to trig
        reset_trig += 1;
        if (reset_trig >= out_of_range) {
            state = states.idle;
            reset_trig = 0;
        }
        
    } else {
        reset_trig = 0;
    }
    
}
