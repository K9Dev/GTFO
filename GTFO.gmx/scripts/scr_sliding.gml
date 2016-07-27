///scr_sliding

if (place_meeting(x, y+1, obj_collision)){

     if (!place_meeting(x+1, y+1, obj_collision) and obj_player.left_key == false){
     x += 1;
     y += 1;
     }
     
     if (!place_meeting(x-1, y+1, obj_collision) and obj_player.right_key == false){
     x -= 1;
     y += 1;
     }
}
