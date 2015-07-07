// scrSpawnBGObjects()

var o = 0;

while (o == 0) {
  // left = 0, right = 1
  var leftorright = irandom(1);
  var xPos;
  var r;
  var yPos = 0;
  
  
  if (leftorright == 0) {
  //if left
    r = irandom(global.topLeft);
  } else {
  //if right
    r = random_range(global.topRight, room_width);  
  }
  
  var xPos = floor(r / (global.gridSize / global.gridDiff)) * (global.gridSize / global.gridDiff);
  
  if (!place_meeting(xPos, yPos, objOffPath)) {
    o = instance_create(xPos, yPos, objOffPath);
  }
}