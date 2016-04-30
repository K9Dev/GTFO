///scr_pause

scr_input();

//leave pause
if (pause_key){
    room_goto(rmPrev);
    x = xPrev;
    y = yPrev;
    state = scr_movement_player;
}
just_paused = true;
