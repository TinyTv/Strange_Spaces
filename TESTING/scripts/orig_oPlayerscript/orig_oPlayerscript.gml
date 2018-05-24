//Create-koodi oPlayer original
gridSize = 80;
moveSpeed = 8;

isMoving = false;
moveTimer = 0;


hsp = 0;
vsp = 0;




//Step-eventin koodi oPlayer original



//Player Movement right
if (isMoving == false) //isMoving false = tsekkaa painetaanko näppäintä?
{
	if (keyboard_check_pressed(vk_right)) //jos painetaan näppäintä isMoving = true
	{
		isMoving = true;
		moveTimer = gridSize;
		hsp = moveSpeed;
		vsp = 0;
	}
}

//horizontal collision 
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);//not colliding, move horizontally
	}
	//while-loop condition is met = koskee oWalliin:
	isMoving = false;
}

//Player movement left
if (isMoving == false)
{
	if (keyboard_check_pressed(vk_left))
	{
		isMoving = true;
		moveTimer = gridSize;
		hsp = -moveSpeed;
		vsp = 0;
	}
}
//horizontal collision 
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);//not colliding, move horizontally
	}
	//while-loop condition is met:
	isMoving = false;
}


//Player movement up/down
if (keyboard_check_pressed(vk_up))
{
	isMoving = true;
	moveTimer = gridSize;
	hsp = 0;
	vsp = -moveSpeed;
}

if (keyboard_check_pressed(vk_down))
{ 
	isMoving = true;
	moveTimer = gridSize;
	hsp = 0;
	vsp = moveSpeed;
}

//Vertical collision 
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);//not colliding, move vertically
	}
	//while-loop condition is met:
	isMoving = false;
}


//Checks if the player can move. True = moves the player.
if(isMoving == true)
{ 
	x += hsp;
	y += vsp;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) isMoving = false; 
}
