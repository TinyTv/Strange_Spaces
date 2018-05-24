gridSize = 80;
depth = 1;
state = states.idle;

//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;