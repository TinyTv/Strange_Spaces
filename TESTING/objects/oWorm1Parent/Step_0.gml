if (Worm1Health > 0)
{
	
////////////////////////////////////////////////////////////////////////////////////////////////////	

			//Check right tile and Animation for attacking right
	if (place_meeting(oWorm1.x + 80, oWorm1.y, oTest) and !instance_exists(oWormSpecialTimer))
					{
						//attack windup to right
						instance_create_depth(0, 0, 1, oWormSpecialTimer);
						WormAttackRight = 1;
					}	
					
			//Attack right
	if (WormAttackRight = 1 and global.WormAlert1 = true and Worm1Health > 0)
		{
			instance_create_layer(oWorm1.x + 80, oWorm1.y, "Effects", oDmg1);
			instance_create_layer(oWorm1.x + 80, oWorm1.y - 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x + 80, oWorm1.y + 80, "Effects", oDmg1);
			WormAttackRight = 0;
		}				
					
////////////////////////////////////////////////////////////////////////////////////////////////////		
			
			// Check tile above and animation for attacking up
	if (place_meeting(oWorm1.x, oWorm1.y - 80, oTest) and !instance_exists(oWormSpecialTimer))
					{
						//attack windup to up
						instance_create_depth(0, 0, 1, oWormSpecialTimer);
						WormAttackUp = 1;
					}	
					
			//attack up
	if (WormAttackUp = 1 and global.WormAlert1 = true and Worm1Health > 0)
		{
			instance_create_layer(oWorm1.x, oWorm1.y - 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x - 80, oWorm1.y - 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x + 80, oWorm1.y - 80, "Effects", oDmg1);
			WormAttackUp = 0;
		}		
		
////////////////////////////////////////////////////////////////////////////////////////////////////		

						// Check tile left and animation for attacking left
	if (place_meeting(oWorm1.x - 80, oWorm1.y, oTest) and !instance_exists(oWormSpecialTimer))
					{
						//attack windup to left
						instance_create_depth(0, 0, 1, oWormSpecialTimer);
						WormAttackLeft = 1;
					}
			//attack left
	if (WormAttackLeft = 1 and global.WormAlert1 = true and Worm1Health > 0)
		{
			instance_create_layer(oWorm1.x - 80, oWorm1.y, "Effects", oDmg1);
			instance_create_layer(oWorm1.x - 80, oWorm1.y - 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x - 80, oWorm1.y + 80, "Effects", oDmg1);
			WormAttackLeft = 0;
		}
		
////////////////////////////////////////////////////////////////////////////////////////////////////			
		
						// Check tile below and animation for attacking down
	if (place_meeting(oWorm1.x, oWorm1.y + 80, oTest) and !instance_exists(oWormSpecialTimer))
					{
						//mato hyökky alas tähä
						instance_create_depth(0, 0, 1, oWormSpecialTimer);
						WormAttackDown = 1;
					}
			// attack down		
	if (WormAttackDown = 1 and global.WormAlert1 = true and Worm1Health > 0)
		{
			instance_create_layer(oWorm1.x, oWorm1.y + 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x - 80, oWorm1.y + 80, "Effects", oDmg1);
			instance_create_layer(oWorm1.x + 80, oWorm1.y + 80, "Effects", oDmg1);
			WormAttackDown = 0;
		}				

////////////////////////////////////////////////////////////////////////////////////////////////////	
}

if (Worm1Health = 0)
{
	instance_destroy()
}