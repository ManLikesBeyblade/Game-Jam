function archer_idle() {
    // assign speed
    x += enemy_speed * enemy_direction;
    idle_count += 1;
    
    // after enemy has walked for a set duration chance to change direction
    if (idle_count >= idle_duration) {
        idle_count = 0;
        if (random(1) < 0.5) {
            enemy_direction *= -1;
            image_xscale = -image_xscale;
        };
    };
    
    if (collision_circle(x, y, 200, player_obj, false, true) != noone)
    {
        // set state to trig
        state = states.trig;
    }
    
};

