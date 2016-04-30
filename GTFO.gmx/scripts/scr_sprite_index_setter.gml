// Set players sprite to the right direction
with (obj_mario){

    if(key_right == 1){
        sprite_index = spr_right;
    }
    
    if(key_left == -1){
        sprite_index = spr_left;
    }

    if(key_jump == 1){
        sprite_index = spr_up;
    } 
}
