///scrIsSoundButtonPressed()

if (mouse_check_button_pressed(mb_left)) {
  show_debug_message("Mouse pressed: " + string(mouse_x) + ", " + string(mouse_y));
  if(mouse_y >= 372 && mouse_y <= 446) {
    if((mouse_x >= 520 && mouse_x <= 620) ||    // game field
      (mouse_x >= 1644 && mouse_x <= 1744) || // plastic case
      (mouse_x >= 2768 && mouse_x <= 2868)) { // scratched overlay
      return true;
    }
  }
}

if (keyboard_check_pressed(ord('S'))) {
  return true;
}

return false;
