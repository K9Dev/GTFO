///scr_going_uphill()

if (place_meeting(x, y+1, obj_collision)){

     if (!place_meeting(x-1, y-1, obj_collision) and obj_player.left_key == true and hsp == 0 and vsp == 0){
     x -= 1;
     y -= 1;
     }
     
     if (!place_meeting(x+1, y-1, obj_collision) and obj_player.right_key == true and hsp == 0 and vsp == 0){
     x += 1;
     y -= 1;
     }
}
