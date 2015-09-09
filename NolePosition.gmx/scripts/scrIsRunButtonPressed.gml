///scrIsRunButtonPressed()

if ((mouse_check_button_pressed(mb_left) && 
  mouse_x >= 160 && mouse_x <= -864 &&
  mouse_y >= 0 && mouse_y <= 96) ||
  keyboard_check_pressed(vk_space)) {
  return true;
} else {
  return false;
}
