///scr_sprite_index_setter

if(right_key){
    sprite_index = spr_slime_right;
}  else
if(left_key){
    sprite_index = spr_slime_left;
}
/*
if(jump_key){
    sprite_index = spr_up;
} 
if(down_key){
    sprite_index = spr_down;
} 
*/
else {
    sprite_index = spr_slime_idle;
}
