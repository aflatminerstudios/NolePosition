///scrMoveEnemy(object, enemies)

var object = argument0;
var enemies = argument1;

with (object) {

  if (gridY < 2) {
    // Increase y by one and x by 0 or 1
    var r = dir;
    
    if (enemies[gridY + 1, gridX + r] != 0) {
      r = 1 - r;
    }
    
    gridX += r;
    gridY += 1;
    
    // Set new coords and sprite
    var coords = scrConvertFromGrid(gridX, gridY);

    x = coords[0];
    y = coords[1];
    
    dir = irandom(1);    

    switch (gridY) {
      case 1:
        image_xscale = 0.9;
        image_yscale = 0.9;    
        break;
      case 2:
        image_xscale = 1.15;
        image_yscale = 1.15;    
        break;
    }
    
    //Check for previous enemy going to the right if current enemy is trying to move left
    if (dir == 0 && gridX > 0) {
      if (enemies[gridY, gridX - 1] != 0) {
        if (enemies[gridY, gridX - 1].dir == 1) {
          dir = 1;
        }
      }
    }
    
    
    //image_index = gridY;   
    image_index = 1 + dir; 
    if (gridY == 2) {
      image_index = 0;
    }
    
    object.depth -= 1;
    
    
  } else if (gridY == 2) {
    gridY += 1;

    // set new coords and sprite      
    var coords = scrConvertFromGrid(gridX, gridY);

    x = coords[0];
    y = coords[1];
    
    image_index = 0;    
 
    image_xscale = 1.15;
    image_yscale = 1.15;
       
    object.depth -= 1;
    
  }
}
 
