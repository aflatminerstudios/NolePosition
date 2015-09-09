///scrIsLeftButtonPressed()

if ((mouse_check_button_pressed(mb_left) && 
  mouse_x >= 1124 && mouse_x <= 1368 &&
  mouse_y >= 0 && mouse_y <= 600) ||
  keyboard_check_pressed(vk_left)) {
  return true;
} else {
  return false;
}
