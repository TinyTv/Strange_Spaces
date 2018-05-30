
//Checks wormhealth and if worm is alive, checks player position until there is collision
if (WormHealth2 > 0)
{
	//Player position tests
	if (isAttacking = false)
	{
		//Check right tile and Animation for attacking right
		if (place_meeting(x + 80, y, oTest))
			{
				//attack windup to right
				WormAttackRight = 1;
				sprite_index = spWorm1_attack_right;
				alarm[0] = 48;
			}	
				
							
			
		// Check tile above and animation for attacking up
		if (place_meeting(x, y - 80, oTest))
			{
				//attack windup to up
				WormAttackUp = 1;
				depth = -100;
				sprite_index = spWorm1_attack_up;
				alarm[1] = 48;
			}	
							

		// Check tile left and animation for attacking left
		if (place_meeting(x - 80, y, oTest))
		{
			//attack windup to left
			WormAttackLeft = 1;
			sprite_index = spWorm1_attack_left;
			depth = -100;			
			image_speed = 0.7;
			alarm[2] = 48;
		}			
		
		// Check tile below and animation for attacking down
		if (place_meeting(x, y + 80, oTest))
			{
				//Attack windup down
				WormAttackDown = 1;
				sprite_index = spWorm1_attack_down;			
				alarm[3] = 48;
			}			
	}


	//Attack checks are done here
	if(isAttacking=true)
	{
		
		//Attack right
		if (WormAttackRight = 1 and WormAlert2 = true and WormHealth2 > 0)
			{
				instance_create_layer(x + 80, y, "Effects", oDmg1);
				WormAttackRight = 0;
				WormAlert2 = false;
				depth = -100;
				sprite_index = spWorm2_idle_right;
			}				

		//attack up
		if (WormAttackUp = 1 and WormAlert2 = true and WormHealth2 > 0)
			{
				instance_create_layer(x, y - 80, "Effects", oDmg1);
				WormAttackUp = 0;
				WormAlert2 = false;
				sprite_index = spWorm2_idle_up;
				depth = -100;
			}		

		//attack left
		if (WormAttackLeft = 1 and WormAlert2 = true and WormHealth2 > 0)
			{
				instance_create_layer(x - 80, y, "Effects", oDmg1);
				WormAttackLeft = 0;
				WormAlert2 = false;
				sprite_index = spWorm2_placeholder;
				depth = -100;
			}

		// attack down		
		if (WormAttackDown = 1 and WormHealth2 > 0 and WormAlert2 = true)
			{
				instance_create_layer(x, y + 80, "Effects", oDmg1);
				sprite_index = spWorm2_idle_down;
				WormAttackDown = 0;
				WormAlert2 = false;			
			}
	}
}


//IF worm is dead, kills it
if (WormHealth2 <= 0)
{
	instance_destroy()
}
