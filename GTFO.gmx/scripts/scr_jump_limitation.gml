///scr_jump_limitation

//if no jumps left, cant jump
if (jump_counter <= 0){
    jump_key = false;
}
//when jumping, reduce remaining jump counter
if (jump_key and place_meeting(x, y + 1, obj_floor) or jump_key and place_meeting(x, y + 1, obj_turtle)){
    jump_counter --;
    //creating slime rest
    instance_create(x, y, obj_slime_rest);
}
