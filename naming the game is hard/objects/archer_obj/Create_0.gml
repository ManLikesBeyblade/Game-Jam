
enemy_speed = 0.9
enemy_direction = 1
rotate_chanc = 50

idle_duration = 90; 
idle_count = 0;   
col_offset = 24

state = states.idle;

reset_trig = 0
/* state = states.idle; */

/* 
 
 - draw a invisable circle around the enemy
 - if player object steps into that range set trig to true
 - if player outside of range for 5 seconds set enemy back to idle
 - diffrent monsters have different ranges


*/