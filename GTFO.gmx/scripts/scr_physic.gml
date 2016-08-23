///scr_physic()

var fric = 0.1;

//add gravity if vertical speed is lower than 10
if(vsp < 10){
    vsp += grav;
}
//is player going to collide with object horizontal
if(place_meeting(x + hsp, y, obj_collision)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x+sign(hsp), y, obj_collision)){
        
        //move player 1 pixel towards the object
        x += sign(hsp);
    }
    
    //collision with object
    hsp = 0;
} 

//friction
if !(hsp == 0)
{
    if hsp > 0 hsp -= fric;
    if hsp < 0 hsp += fric;
    if (hsp > -fric and hsp < fric) hsp = 0;
}

//if standing on a turtle, add its hsp
if(place_meeting(x, y+1, obj_turtle)){
    hsp = hsp + obj_turtle.hsp;
}

//Move the player
x += hsp;

//is player going to collide with object?
if(place_meeting(x, y + vsp, obj_collision)){

    // sign = return 1 or -1 if hsp is negative or positive
    while(!place_meeting(x, y+sign(vsp), obj_collision)){
        
        //move player 1 pixel towards the object
        y += sign(vsp);
    }

    //collision with object
    vsp = 0;
    
} 

//Move the player
y += vsp;

