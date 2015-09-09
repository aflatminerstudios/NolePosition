///scrSpawnEnemy(enemies)

var enemies = argument0;

var xPos;
var yPos;

var r;
var e = 0;

// Loop until enemy has been placed
while (e == 0) {

  r = irandom(2);

  coords = scrConvertFromGrid(r, 0);
  
  // Checks for enemy at position
  if (enemies[0, r] == 0) {
    e = instance_create(coords[0], coords[1], objEnemy);
  }

}

e.gridX = r;
e.gridY = 0;
e.image_xscale = 0.75;
e.image_yscale = 0.75;

return e;

/* Original code:

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

*/
