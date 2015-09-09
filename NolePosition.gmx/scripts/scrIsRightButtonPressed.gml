///scrIsRightButtonPressed()

if ((mouse_check_button_pressed(mb_left) && 
  mouse_x >= 1944 && mouse_x <= 2148 &&
  mouse_y >= 0 && mouse_y <= 600) ||
  keyboard_check_pressed(vk_right)) {
  return true;
} else {
  return false;
}
