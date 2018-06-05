//Dash animations
// Change sprite based on what direction we're facing

if (oPlayer.faceDirection = 2) 
{
	sprite_index = spPlayer_dash_left;		
}
	
if (oPlayer.faceDirection = 0)
{
	sprite_index = spPlayer_dash_right;		
}
	
if (oPlayer.faceDirection = 1)
{
	sprite_index = spPlayer_dash_up;
		
}
	
if (oPlayer.faceDirection = 3)
{
	sprite_index = spPlayer_dash_down;
}


if (image_index >= image_number - 4)
	{
	oPlayer.visible = true;
	instance_destroy();
	}

