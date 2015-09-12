/// scrToggleSound()

if(audio_get_master_gain(0) > 0.9) {
  show_debug_message("Setting volume to 0");
  audio_set_master_gain(0, 0.0);
} else {
  show_debug_message("Setting volume to 1");
  audio_set_master_gain(0, 1.0);
}
