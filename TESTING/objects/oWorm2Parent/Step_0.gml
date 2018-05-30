if (WormHealth2 > 0)
{


			//Check right tile and Animation for attacking right
	if (place_meeting(x + 80, y, oTest) and WormAttackRight = 0 and WormAttackUp = 0 and WormAttackLeft = 0 and WormAttackDown = 0)
		{
			//attack windup to right
			WormAttackRight = 1;
			sprite_index = spWorm1_attack_right;
			alarm[0] = room_speed*2;
		}	
					
			//Attack right
	if (WormAttackRight = 1 and WormAlert2 = true and WormHealth2 > 0)
		{
			instance_create_layer(x + 80, y, "Effects", oDmg1);
			WormAttackRight = 0;
			WormAlert2 = false;
			sprite_index = spWorm2_idle_right;
		}				
					
	
			
			// Check tile above and animation for attacking up
	if (place_meeting(x, y - 80, oTest) and WormAttackRight = 0 and WormAttackUp = 0 and WormAttackLeft = 0 and WormAttackDown = 0)
					{
						//attack windup to up
						WormAttackUp = 1;
						sprite_index = spWorm1_attack_up;
						alarm[1] = room_speed*2;
					}	
					
			//attack up
	if (WormAttackUp = 1 and WormAlert2 = true and WormHealth2 > 0)
		{
			instance_create_layer(x, y - 80, "Effects", oDmg1);
			WormAttackUp = 0;
			WormAlert2 = false;
			sprite_index = spWorm2_idle_up;
		}		
		
	

						// Check tile left and animation for attacking left
	if (place_meeting(x - 80, y, oTest) and WormAttackRight = 0 and WormAttackUp = 0 and WormAttackLeft = 0 and WormAttackDown = 0)
		{
			//attack windup to left
			WormAttackLeft = 1;
			sprite_index = spWorm1_attack_left;
			image_speed = 0.7;
			alarm[2] = room_speed*2;
		}
					
			//attack left
	if (WormAttackLeft = 1 and WormAlert2 = true and WormHealth2 > 0)
		{
			instance_create_layer(x - 80, y, "Effects", oDmg1);
			WormAttackLeft = 0;
			WormAlert2 = false;
			sprite_index = spWorm2_idle_left;
		}
		
		
						// Check tile below and animation for attacking down
	if (place_meeting(x, y + 80, oTest) and WormAttackRight = 0 and WormAttackUp = 0 and WormAttackLeft = 0 and WormAttackDown = 0)
		{
			//mato hyökky alas tähä
			WormAttackDown = 1;
			sprite_index = spWorm1_attack_down;
			alarm[3] = room_speed*2;
		}
		
			// attack down		
	if (WormAttackDown = 1 and WormHealth2 > 0 and WormAlert2 = true)
		{
			instance_create_layer(x, y + 80, "Effects", oDmg1);
			WormAttackDown = 0;
			WormAlert2 = false;
			sprite_index = spWorm2_idle_down;
		}				

	
}

if (WormHealth2 = 0)
{
	instance_destroy()
}