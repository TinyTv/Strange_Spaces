if (Worm2Health > 0)
{
	
////////////////////////////////////////////////////////////////////////////////////////////////////	

			//Check right tile and Animation for attacking right
	if (place_meeting(oWorm2.x + 80, oWorm2.y, oTest) and !instance_exists(oWormBasicTimer))
					{
						//attack windup to right
						instance_create_depth(0, 0, 1, oWormBasicTimer);
						WormAttackRight = 1;
					}	
					
			//Attack right
	if (WormAttackRight = 1 and global.WormAlert2 = true and Worm2Health > 0)
		{
			instance_create_layer(oWorm2.x + 80, oWorm2.y, "Effects", oDmg1);
			WormAttackRight = 0;
		}				
					
////////////////////////////////////////////////////////////////////////////////////////////////////		
			
			// Check tile above and animation for attacking up
	if (place_meeting(oWorm2.x, oWorm2.y - 80, oTest) and !instance_exists(oWormBasicTimer))
					{
						//attack windup to up
						instance_create_depth(0, 0, 1, oWormBasicTimer);
						WormAttackUp = 1;
					}	
					
			//attack up
	if (WormAttackUp = 1 and global.WormAlert2 = true and Worm2Health > 0)
		{
			instance_create_layer(oWorm2.x, oWorm2.y - 80, "Effects", oDmg1);
			WormAttackUp = 0;
		}		
		
////////////////////////////////////////////////////////////////////////////////////////////////////		

						// Check tile left and animation for attacking left
	if (place_meeting(oWorm2.x - 80, oWorm2.y, oTest) and !instance_exists(oWormBasicTimer))
					{
						//attack windup to left
						instance_create_depth(0, 0, 1, oWormBasicTimer);
						WormAttackLeft = 1;
					}
			//attack left
	if (WormAttackLeft = 1 and global.WormAlert2 = true and Worm2Health > 0)
		{
			instance_create_layer(oWorm2.x - 80, oWorm2.y, "Effects", oDmg1);
			WormAttackLeft = 0;
		}
		
////////////////////////////////////////////////////////////////////////////////////////////////////			
		
						// Check tile below and animation for attacking down
	if (place_meeting(oWorm2.x, oWorm2.y + 80, oTest) and !instance_exists(oWormBasicTimer))
					{
						//mato hyökky alas tähä
						instance_create_depth(0, 0, 1, oWormBasicTimer);
						WormAttackDown = 1;
					}
			// attack down		
	if (WormAttackDown = 1 and global.WormAlert2 = true and Worm2Health > 0)
		{
			instance_create_layer(oWorm2.x, oWorm2.y + 80, "Effects", oDmg1);
			WormAttackDown = 0;
		}				

////////////////////////////////////////////////////////////////////////////////////////////////////	
}

if (Worm2Health = 0)
{
	instance_destroy()
}