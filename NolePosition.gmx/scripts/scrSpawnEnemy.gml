///scrSpawnEnemy()

///Spawns enemies in random position across top

var r = random_range(global.topLeft, global.topRight);
var e = 0;

while (e == 0) {
  //Puts random x position on top grid
  var xPos = floor(r / (global.gridSize / global.gridDiff)) * (global.gridSize / global.gridDiff);
  var yPos = 0
  if (!place_meeting(xPos, yPos, objEnemy)) {
    e = instance_create(xPos, yPos, objEnemy);
  }

}