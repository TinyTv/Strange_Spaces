

//scr_attack();


	
		/*   THIS IS WORM CODE DO NOT TOUCH
		if (place_meeting(x + 80, y, oTest) and isAttacking = false)
		{
			//change sprite and reset imageindex
			isAttacking  = true;
			sprite_index = spWorm1_attack_right;
			depth = -100;
			image_index = 0;
		}	
		
		//Attack
		if(isAttacking = true and sprite_index = spWorm1_attack_right)
		{
			if (image_index = 11)
				{
				instance_create_layer(x + 80, y, "Effects", oDmg1);
				audio_play_sound(sfx_worm_bite,2,false);
				}
				
			if (image_index = 22)
				{
				isAttacking = false;
				sprite_index = spWorm2_idle_right;
				depth = 2;
				}		
		}
		
		THIS IS WORM CODE DO NOT TOUCH  */
		
		
		//Take faceDirection, create object oBullet on the next grid from the oPlayer
		if (faceDirection = 0 and canAttack = true)
			{
				//Attack right
				
				sprite_index = spPlayer_attack_right;
				canAttack = false;
				attacking = true;
				audio_play_sound(sfx_player_attack,1,false);	
				
			}
			
			
				if (image_index = 10 and faceDirection = 0 and attacking = true)
				{
					instance_create_layer(x+80,y,"Bullets",oBullet);
			
					
				}
				
			
	if (image_index = 17)
	{
		canAttack = true;			
		attacking = false;
		state = states.idle;
	}				

