///scrCollision()

/// Collision with enemy. Game over if all lives lost

if (--lives < 1) {

  show_message("Game over! You lose!  You scored " + string(score) + " points! You reached level " + string(global.level) + ".");
  
  //reset score and level
  score = 0;
  with (objPersistentStats) {
    level = 1;
  }
  lives = 4;
  
    
  audio_play_sound(sndGameOver, 15, false);

  with (objPlayer) {
    alarm[11] = audio_sound_length(sndGameOver) * room_speed;
  }
  
  with (objGameControl) {
    alarm[0] = -5;
  }
  
} else {
  with (objEnemy) {
    instance_destroy();
  }
  
  with (objGameControl) {
    alarm[0] = -5; //global.tickSpeed * room_speed;
    alarm[1] = -5;
    for (var i = 0; i < 5; ++i) {
      enemies[3, i] = 0;
      enemies[2, i] = 0;
      if (i < 4) {
        enemies[1, i] = 0;
        if (i < 3) {
          enemies[0, i] = 0;
        }
      }
    }
    
  }
  
  audio_play_sound(sndCrash, 15, false);

  with (objPlayer) {
    alarm[0] = global.flashSpeed * room_speed;
  }
 
}
