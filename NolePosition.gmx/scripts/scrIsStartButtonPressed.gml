///scrIsStartButtonPressed()

/*
if ((mouse_check_button_pressed(mb_left) && 
  mouse_x >= 0 && mouse_x <= 2148 &&
  mouse_y >= 0 && mouse_y <= 600) ||
  keyboard_check_pressed(vk_enter) ||
  keyboard_check_pressed(vk_space)) {
  return true;
} else {
  return false;
}
*/

if (mouse_check_button_pressed(mb_left)) {
  show_debug_message("Mouse pressed: " + string(mouse_x) + ", " + string(mouse_y));
  if(mouse_y >= 372 && mouse_y <= 446) {
    if((mouse_x >= 407 && mouse_x <= 507) ||    // game field
      (mouse_x >= 1531 && mouse_x <= 1631) || // plastic case
      (mouse_x >= 2655 && mouse_x <= 2755)) { // scratched overlay
      return true;
    }
  }
}

if (keyboard_check_pressed(vk_enter) ||
    keyboard_check_pressed(vk_space)) {
  return true;
}

return false;
