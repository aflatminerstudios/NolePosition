///scrMoveMovingObject(object)

var object = argument0;

with (object) {
  var dir = 1;
  if (x < room_width / 2) {
    dir = -1;
  }
  y += global.gridSize;
  x += global.xMovement * dir;
  
  image_xscale += 1 / global.numTicks;
  image_yscale = image_xscale;

  image_index += 1;
}
