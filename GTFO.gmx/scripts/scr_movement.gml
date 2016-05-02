///scr_movement

//move gives the direction
move = right_key - left_key;
hsp = move * movespeed;

//add gravity if vertical speed is lower than 10
if(vsp < 10){
    vsp += grav;
}


//Check if a floor is below the player --> if true, you can jump
if(place_meeting(x, y + 1, obj_floor)){

    //If key_jump is pressed --> = 1 and is set to negative jumpspeed (for example to -7 to move upwards)
    vsp = jump_key * -jumpspeed;
}

//is player going to collide with object horizontal
if(place_meeting(x + hsp, y, obj_floor)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x+sign(hsp), y, obj_floor)){
        
        //move player 1 pixel towards the object
        x += sign(hsp);
    }
    
    //collision with object
    hsp = 0;
} 

//Move the player
x += hsp;

//is player going to collide with object?
if(place_meeting(x, y + vsp, obj_floor)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x, y+sign(vsp), obj_floor)){
        
        //move player 1 pixel towards the object
        y += sign(vsp);
    }

    //collision with object
    vsp = 0;
    
} 

//Move the player
y += vsp;
