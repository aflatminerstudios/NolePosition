///scrIsLeftButtonPressed()

if (mouse_check_button_pressed(mb_left)) {
  if(mouse_y >= 0 && mouse_y <= 600) {
    if((mouse_x >= 0 && mouse_x <= 350) ||    // game field
      (mouse_x >= 1124 && mouse_x <= 1474) || // plastic case
      (mouse_x >= 2248 && mouse_x <= 2598)) { // scratched overlay
      return true;
    }
  }
}

if (keyboard_check_pressed(vk_left)) {
  return true;
}

return false;
