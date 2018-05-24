if (state != states.move and state != states.dash) //if state is not move or dash, check if a key is pressed:
	{
		
	//Player Movement right
	if (keyboard_check_pressed(vk_right)) 
	{
		moveDirection = 0;
		hsp = gridSize;
		vsp = 0;
	}


	//Player movement left
		if (keyboard_check_pressed(vk_left))
	{
		moveDirection = 2;
		hsp = -gridSize;
		vsp = 0;
	}


	//Player movement up/down
	if (keyboard_check_pressed(vk_up))
	{
		moveDirection = 1;
		hsp = 0;
		vsp = -gridSize;
	}

	if (keyboard_check_pressed(vk_down))
	{ 
		moveDirection = 3;
		hsp = 0;
		vsp = gridSize;
	}
	
	//Player ability Dash 
	if (keyboard_check_pressed(vk_shift))
	{ 
		var tempDashDistance = dashDistance;
		
		//Takes moveDirection and sets the direction of our dash
		hsp = lengthdir_x(dashDistance * gridSize, moveDirection * 90);
		vsp = lengthdir_y(dashDistance * gridSize, moveDirection * 90);
		state = states.dash; //sets the state to dash
				
			
		//Dash collision check 
		for(var i = 0;i<dashDistance;i++)//If i is smaller than Distance = add 1 to i but keep i the same, until i is = to dashDistance.
		{
			//Collision:
			if (place_meeting(oTest.x + sign(hsp) + sign(hsp)*(i*gridSize), oTest.y + sign(vsp) + sign(vsp)*(i*gridSize), oWall))
				{
					tempDashDistance = i++;
				}
		}	
		
		hsp = lengthdir_x(tempDashDistance * gridSize, moveDirection * 90);
		vsp = lengthdir_y(tempDashDistance * gridSize, moveDirection * 90);
		return;
		
	}
		
	if (vsp !=0 or hsp !=0)//If is moving:
	{
			//Collision check
	if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWall))
			{
				 //if colliding, set state to idle and reset horizontal & vertical speeds
				state = states.idle;
				hsp = 0;
				vsp = 0; 
			}
				
				else state = states.move;
	}
	
	else 
	{
		state = states.idle;	
	}
}
