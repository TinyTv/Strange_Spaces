//DO NOT TOUCH

//Dash animations
// Change sprite based on what direction we're facing
if (faceDirection = 2) 
{
	sprite_index = spPlayer_dash_left;		
}
	
if (faceDirection = 0)
{
	sprite_index = spPlayer_dash_right;		
}
	
if (faceDirection = 1)
{
	sprite_index = spPlayer_dash_up;
		
}
	
if (faceDirection = 3)
{
	sprite_index = spPlayer_dash_down;
}
	

//Check stuff?!
if(hsp!=0)  //If hsp is NOT 0:
{
	if ((abs(hsp) - dashSpeed) <= 0) //if hsp is less or equal to 0, run:
	{
		x += hsp; 
		hsp = 0;
	}
	
	else
	{
		x += sign(hsp) * dashSpeed;
		hsp -= sign(hsp) * dashSpeed;
	}
}

//If not dashing horizontally, check if we're moving vertically:
else if(vsp!=0)
{
	if ((abs(vsp) - dashSpeed) <= 0)
	{
		y += vsp;	
		vsp = 0;
	}
	
	else
	{
		y += sign(vsp) * dashSpeed;
		vsp -= sign(vsp) * dashSpeed;
	}
}

//If not moving (hsp and vsp = 0), set idle
else state = states.idle;

