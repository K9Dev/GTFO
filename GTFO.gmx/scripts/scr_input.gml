///scr_input

/*bt_jump  = gamepad_button_check_pressed(0, gp_face1);
bt_left  = gamepad_button_check(0, gp_padl);
bt_right = gamepad_button_check(0, gp_padr);*/

jump_key  = keyboard_check_pressed(ord("W"));
left_key  = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
down_key  = keyboard_check_pressed(ord("S"));

pause_key = keyboard_check_pressed(ord("P"));

cheat_key = keyboard_check_pressed(ord("Q"));

inventory_key = keyboard_check_pressed(ord("I"));


