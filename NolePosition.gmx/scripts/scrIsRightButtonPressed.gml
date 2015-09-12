///scrIsRightButtonPressed()

if (mouse_check_button_pressed(mb_left)) {
  if(mouse_y >= 0 && mouse_y <= 600) {
    if((mouse_x >= 674 && mouse_x <= 1024) ||    // game field
      (mouse_x >= 1798 && mouse_x <= 2148) || // plastic case
      (mouse_x >= 2922 && mouse_x <= 3272)) { // scratched overlay
      return true;
    }
  }
}

if (keyboard_check_pressed(vk_right)) {
  return true;
}

return false;
