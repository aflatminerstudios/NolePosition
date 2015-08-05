///scrMoveEnemy(object, enemies)

var object = argument0;
var enemies = argument1;

with (object) {

  if (gridY < 2) {
    // Increase y by one and x by 0 or 1
    var r = irandom(1);
    
    if (enemies[gridY + 1, gridX + r] != 0) {
      r = 1 - r;
    }
    
    gridX += r;
    gridY += 1;
    
    // Set new coords and sprite
    var coords = scrConvertFromGrid(gridX, gridY);

    x = coords[0];
    y = coords[1];
    
    image_index = gridY;    
    
  } else if (gridY == 2) {
    gridY += 1;

    // set new coords and sprite      
    var coords = scrConvertFromGrid(gridX, gridY);

    x = coords[0];
    y = coords[1];
    
    image_index = gridY;    

    // Destroy enemy after a bit, so that player can move into that square
    // 1 frame is not enough, as enemies might get destoyed before collision occurs
    alarm[11] = 2;//room_speed * global.tickSpeed / 4;
      
  }
}
