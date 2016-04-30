///scr_input

/*bt_jump  = gamepad_button_check_pressed(0, gp_face1);
bt_left  = gamepad_button_check(0, gp_padl);
bt_right = gamepad_button_check(0, gp_padr);*/

key_jump  = keyboard_check_pressed(ord("W"));
key_left  = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

//React to Inputs
//move gives the direction
//key_left = -1
//key_right = 0
//if only left is pressed then -1 + 0 = -1 <-- so go left
//if only right is pressed then 0 + 1 = 1 <-- so go right
//if both are pressed then -1 + 1 = 0 <-- dont move
move = key_left + key_right;
hsp = move * movespeed;

//add gavity if vertical speed is lower than 10
if(vsp < 10){
    vsp += grav;
}
