if (state != states.move and state != states.dash and state != states.attack and state != states.incapacitated) //if state is not move or dash, check if a key is pressed:
	{
	
	//Player Movement right
	if (keyboard_check_pressed(ord("D")))
	{
		image_index = 0;
		moveDirection = 0;
		hsp = gridSize;
		vsp = 0;
		audio_play_sound(sfx_player_step,3,false);
		oPlayer.state = states.move;		
	}


	//Player movement left
		if (keyboard_check_pressed(ord("A")))
	{
		image_index = 0;
		moveDirection = 2;
		hsp = -gridSize;
		vsp = 0;
		oPlayer.state = states.move;
		audio_play_sound(sfx_player_step,3,false);
	}



	//Player movement up
	if (keyboard_check_pressed(ord("W")))
	{
		image_index = 0;
		moveDirection = 1;
		hsp = 0;
		vsp = -gridSize;
		oPlayer.state = states.move;
		audio_play_sound(sfx_player_step,3,false);
	}

	//Player movement down
	if (keyboard_check_pressed(ord("S")))
	{ 
		image_index = 0;
		moveDirection = 3;
		hsp = 0;
		vsp = gridSize;
		oPlayer.state = states.move;
		audio_play_sound(sfx_player_step,3,false);
	}
	
		
	
	//Turning faceDirection left 90 degrees
	if (keyboard_check_pressed(vk_left))
	{ 
		faceDirection = faceDirection+1
		if (faceDirection>3)
		{
			faceDirection = 0;
		}
		
	}
	
	//Turning faceDirection right 90 degrees
	if (keyboard_check_pressed(vk_right))
	{ 
		faceDirection = faceDirection-1
		if (faceDirection<0)
		{
			faceDirection = 3;
		}
	}
	
	
	//Attacking		
	if (keyboard_check_pressed(vk_space) and state = states.idle) 
	{
		state = states.attack;
	}
			
		
	//Player ability Dash 
    if (keyboard_check_pressed(vk_shift) and (global.dashCharge > 0))
    {

        var tempDashDistance = dashDistance;
        
        //Takes faceDirection and sets the direction of our dash for checking collisions
        hsp = lengthdir_x(dashDistance * gridSize, faceDirection * 90);
        vsp = lengthdir_y(dashDistance * gridSize, faceDirection * 90);
        
                           
			   
				   
        //Dash collision check for walls/blocks (oWall)
        for(var i = 0;i<dashDistance;i++)//If i is smaller than Distance = add 1 to i but keep i the same, until i is = to dashDistance.
        {
            //Collision:
            if (place_meeting(oTest.x + sign(hsp) + sign(hsp)*(i*gridSize), oTest.y + sign(vsp) + sign(vsp)*(i*gridSize), oWall))
                {
                    tempDashDistance = i; // If there's a wall before we can finish dashing, shorten the dash distance (using temporary variable)
					break;
			    } 
			
		 }   
		  
		//USE THIS CODE FOR DISABLING DASHING THROUGH ENEMIES OR OTHER SOLID OBJECTS
        //Dash collision check for oDmg1 = can't dash through object oDmg1
        for(var i = 0;i<dashDistance;i++)//If i is smaller than Distance = add 1 to i but keep i the same, until i is = to dashDistance.
        {
			
			//Special Worm 1 dash collision
			if (place_meeting(oTest.x + sign(hsp) + sign(hsp)*(i*gridSize), oTest.y + sign(vsp) + sign(vsp)*(i*gridSize), oWorm1))
                {
                    tempDashDistance = i; // If there's a wall before we can finish dashing, shorten the dash distance (using temporary variable)
					break;
			   } 	  
			   
			   
            //Worm2 dash collision
            if (place_meeting(oTest.x + sign(hsp) + sign(hsp)*(i*gridSize), oTest.y + sign(vsp) + sign(vsp)*(i*gridSize), oWorm2))
                {
                    tempDashDistance = i; // If there's a wall before we can finish dashing, shorten the dash distance (using temporary variable)
					break;
			   }   		
			
		}  
		  	    
                
		//Set hsp and vsp again and dash
        hsp = lengthdir_x(tempDashDistance * gridSize, faceDirection * 90);
        vsp = lengthdir_y(tempDashDistance * gridSize, faceDirection * 90);
		state = states.dash; //sets the state to dash
		global.dashCharge -= 1;
		audio_play_sound(sfx_player_dash,2,false);
		
		if(global.dashCharge < 3)
		{
			alarm[0] = 60;
		}     
    }
		
	//Collisions for normal movement		
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
			
		if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWorm1))
				{
						//if colliding, set state to idle and reset horizontal & vertical speeds
					state = states.idle;
					hsp = 0;
					vsp = 0; 	
				}
			
			
		if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWorm2))
				{
						//if colliding, set state to idle and reset horizontal & vertical speeds
					state = states.idle;
					hsp = 0;
					vsp = 0; 	
				}
				
				
		//THIS IS FOR TESTING COLLISION BOXES		
		if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oDAMAGETEST))
				{
						//if colliding, set state to idle and reset horizontal & vertical speeds
					state = states.death;
					hsp = 0;
					vsp = 0; 	
				}	
				
	}
			
	//Collision with oHazard block kills the player 
	//if (place_meeting(oTest.x + sign(hsp), oTest.y + sign(vsp),oHazard))
	//	{
	//	state = states.death;
	//	state_death()
	//	}
				
}

		
