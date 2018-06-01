if (WormHealth2 > 0)
{
	//Attacking right
	//Check right tile and Animation for attacking right
	if (place_meeting(x + 80, y, oTest) and isAttacking = false)
		{
			//change sprite and reset imageindex
			isAttacking  = true;
			sprite_index = spWorm2_attack_right;
			depth = -100;
			image_index = 0;
		}	
		
	//Attack right
	if (isAttacking = true and sprite_index = spWorm2_attack_right)
	{
		if (image_index = 11)
			{
			instance_create_layer(x + 80, y, "Effects", oDmg1);
			audio_play_sound(sfx_worm_bite,2,false);
			}
				
		if (image_index = 22) //set idle when animation ends
			{
			isAttacking = false;
			sprite_index = spWorm2_idle_right;
			depth = 2;
			}		
	}
		
	
	//Attacking left
	//Check tile for collision
	if (place_meeting(x - 80, y, oTest) and isAttacking = false)
		{
			//change sprite and reset imageindex
			isAttacking  = true;
			sprite_index = spWorm2_attack_left;
			depth = -100;
			image_index = 0;
		}	
		
		//Attack left
		if (isAttacking = true and sprite_index = spWorm2_attack_left)
		{
			
		if (image_index = 11)
		{
			instance_create_layer(x - 80, y, "Effects", oDmg1);	
			audio_play_sound(sfx_worm_bite,2,false);
		}	
					
		if (image_index = 22)
			{
			isAttacking = false;
			sprite_index = spWorm2_idle_left;
			depth = 2;
			}		
		}


	//Attacking up
	//Check tile for collision
	if (place_meeting(x, y-80, oTest) and isAttacking = false)
		{
			//change sprite and reset imageindex
			isAttacking  = true;
			sprite_index = spWorm2_attack_up;
			depth = -100;
			image_index = 0;
		}	
		
		//Attack up
		if (isAttacking = true and sprite_index = spWorm2_attack_up)
		{
		if (image_index = 11)
		{
			instance_create_layer(x, y-80, "Effects", oDmg1);
			audio_play_sound(sfx_worm_bite,2,false);
		}
					
		if (image_index = 22)
			{
			isAttacking = false;
			sprite_index = spWorm2_idle_up;
			depth = 2;
			}		
		}
		
	//Attacking down
	//Check collision and Animation for attacking down
	if (place_meeting(x, y+80, oTest) and isAttacking = false)
		{
			//change sprite and reset imageindex
			isAttacking  = true;
			sprite_index = spWorm2_attack_down;
			depth = -100;
			image_index = 0;
		}	
		
	//Attack right
	if (isAttacking = true and sprite_index = spWorm2_attack_down)
	{
		if (image_index = 11)
			{
			instance_create_layer(x, y+80, "Effects", oDmg1);
			audio_play_sound(sfx_worm_bite,2,false);
			}
				
		if (image_index = 22) //set idle when animation ends
			{
			isAttacking = false;
			sprite_index = spWorm2_idle_down;
			depth = 2;
			}		
	}		
		
	
}

if (WormHealth2 = 0)
{
	instance_destroy()
}