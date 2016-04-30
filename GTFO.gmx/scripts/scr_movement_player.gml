///Movement
scr_input();

scr_sprite_index_setter();

//Check if a floor is below the player --> if true, you can jump
if(place_meeting(x, y + 1, obj_floor)){

    //If key_jump is pressed --> = 1 and is set to negative jumpspeed (for example to -7 to move upwards)
    vsp = key_jump * -jumpspeed;
}

//is player going to colide with oject horizontal
if(place_meeting(x + hsp, y, obj_floor)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x+sign(hsp), y, obj_floor)){
        
        //move player 1 pixel towards the object
        x += sign(hsp);
    }
    
    //collision with object
    hsp = 0;
} 

//Set them directions for the player
x += hsp;

//is player going to colide with oject?
if(place_meeting(x, y + vsp, obj_floor)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x, y+sign(vsp), obj_floor)){
        
        //move player 1 pixel towards the object
        y += sign(vsp);
    }

    //collision with object
    vsp = 0;
    
} 

//sprite_index = sprite_right;
//Set them directions for the player
y += vsp;
