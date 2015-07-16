///scrConvertFromGrid(gridX, gridY)

var gX = argument0;
var gY = argument1;

var g = instance_find(objEnemyGrid, 0);

var coords;
coords[0] = g.gridX[gY, gX];
coords[1] = g.gridY[gY];

return coords;
