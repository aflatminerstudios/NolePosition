///scrIsRightButtonPressed()

if ((mouse_check_button_pressed(mb_left) && 
  mouse_x >= 864 && mouse_x <= 1024 &&
  mouse_y >= 0 && mouse_y <= 600) ||
  keyboard_check_pressed(vk_right)) {
  return true;
} else {
  return false;
}
