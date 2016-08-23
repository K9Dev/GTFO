///scr_movement

//move gives the direction
move = right_key - left_key;
hsp = move * movespeed;



//slow down when pushing box
if(place_meeting(x+1, y, obj_box) or place_meeting(x-1, y, obj_box)){
    hsp = hsp/2;
}

//Check if a floor is below the player --> if true, you can jump
if(place_meeting(x, y + 1, obj_collision)){

    //If key_jump is pressed --> = 1 and is set to negative jumpspeed (for example to -7 to move upwards)
    vsp = jump_key * -jumpspeed;
}

scr_physic();

//sliding hills
scr_sliding();

//going uphills
scr_going_uphill();
