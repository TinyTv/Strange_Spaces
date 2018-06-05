gridSize = 80;
moveSpeed = 6;
dashDistance = 2; //dash moves the object 2 units (grids)
dashSpeed = 10; 
global.dashCharge = 3;

keyleft = keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(ord("D"));
keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(ord("S"));
attackKey = keyboard_check_pressed(vk_space);
dashkey = keyboard_check_pressed(vk_shift);


//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

depth = -2
visible = true;

playerHealth = 1;

global.canAttack = true;
attacking = false;

hsp = 0;
vsp = 0;
moveDirection = 0; //oPlayer is moving in this direction
faceDirection = 0; //oPlayer is "facing" this direction = shoot/dash this direction

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

