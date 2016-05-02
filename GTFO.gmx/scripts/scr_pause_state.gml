///scr_pause

scr_input();

//leave pause
if (pause_key){
    room_goto(rmPrev);
    x = xPrev;
    y = yPrev;
    sprite_index = sprPrev;
    image_index = imgPrev;
    state = scr_main_state;
}
just_paused = true;
