///scr_input

/*bt_jump  = gamepad_button_check_pressed(0, gp_face1);
bt_left  = gamepad_button_check(0, gp_padl);
bt_right = gamepad_button_check(0, gp_padr);*/

jump_key  = max(keyboard_check_pressed(ord("W")), gamepad_button_check_pressed(0, gp_face1));

left_key  = max(keyboard_check(ord("A")), gamepad_button_check(0, gp_padl));
right_key = max(keyboard_check(ord("D")), gamepad_button_check(0, gp_padr));
down_key  = max(keyboard_check_pressed(ord("S")), gamepad_button_check_pressed(0, gp_padd));

pause_key = max(keyboard_check_pressed(ord("P")), gamepad_button_check_pressed(0, gp_start));

cheat_key = max(keyboard_check_pressed(ord("Q")), gamepad_button_check_pressed(0, gp_shoulderr));

inventory_key = max(keyboard_check_pressed(ord("I")), gamepad_button_check_pressed(0, gp_shoulderrb));

action_key = max(keyboard_check_pressed(ord("K")), gamepad_button_check_pressed(0, gp_face2));


