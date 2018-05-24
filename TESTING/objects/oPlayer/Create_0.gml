gridSize = 80;
moveSpeed = 8;
dashDistance = 2; //dash moves the object 2 units (grids)
dashSpeed = 40;
global.dashCharge = 3;
//Can attack, other instances can change this
global.canAttack = true;

//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

depth = -2

playerHealth = 1

hsp = 0;
vsp = 0;
moveDirection = 0 //oPlayer has moved this direction
faceDirection = 0 //oPlayer is "facing" this direction

enum states
{
	idle,
	move,
	dash,
	death,
	attack,
	incapacitated,
}

state = states.idle;

