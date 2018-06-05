gridSize = 80;
moveSpeed = 6;
dashDistance = 2; //dash moves the object 2 units (grids)
dashSpeed = 10; 
global.dashCharge = 3;

//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

depth = -2
visible = true;

playerHealth = 1
playerHealth = 1;

global.canAttack = true;
attacking = false;

hsp = 0;
vsp = 0;
moveDirection = 0 //oPlayer is moving in this direction
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

