///scrMoveStationary(object)

var object = argument0;

with (object) {
  var dir = 1;
  if (x < room_width / 2) {
    dir = -1;
  }
  y += global.gridSize / 2;
  x += (global.xMovement * dir) / 2;
  
  image_xscale += (1 / global.numTicks) / 2;
  image_yscale = image_xscale;
  
  image_index += 1;
}
