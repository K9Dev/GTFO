///scr_main_state

scr_input();

//cheating additional jumps
if (cheat_key){
    jump_counter = jump_limit;
}

//Toggle Inventory
if(inventory_key){
    if(showInventory){
        showInventory = false;
    }else{
        showInventory = true;
    }
}

//pause
if (pause_key and !just_paused){
    scr_save_position();
    room_goto(rm_pause);
    sprite_index = spr_right; //using the player as an arrow in the pausemenu
    x = 112;                  //  
    y = 224;                  //
    state = scr_pause_state;
}
just_paused = false;

scr_sprite_index_setter();

scr_jump_limitation();

scr_movement();
