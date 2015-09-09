///scrCollision()

/// Collision with enemy. Game over if all lives lost

if (--lives < 1) {
      
  audio_play_sound(sndGameOver, 15, false);

  with (objGameOver) {
    sprite_index = sprGameOver;
  }
  
 /* with (objPlayer) {
    alarm[11] = audio_sound_length(sndGameOver) * room_speed;
  }*/
  
  instance_create(0, 0, objRestart);
  
  with (objGameControl) {
    alarm[0] = -5;
    alarm[1] = -5;
  }
  
  with (objEnemy) {
    instance_destroy();
  }
  
  with (objPlayer) {
    instance_destroy();
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
