if (WormHealth2 > 0)
{	
	
	//Attacking right
	//Check right tile and Animation for attacking right
	if (place_meeting(x + 80, y, oTest) and isAttacking = false)
	{
		//change sprite and reset imageindex
		isAttacking  = true;
		sprite_index = spWorm1_attack_right;		
		image_index = 0;
	}	
		
	//Attack
	if(isAttacking = true and sprite_index = spWorm1_attack_right)
	{
		if (image_index = image_number - 13)
			{
			instance_create_layer(x + 80, y, "Effects", oDmg1);
			depth = -100;
			audio_play_sound(sfx_worm_bite,2,false);
			}
				
		if (image_index = image_number - 2)
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
		sprite_index = spWorm1_attack_left;	
		image_index = 0;
	}	
		
	//Attack left
	if(isAttacking = true and sprite_index = spWorm1_attack_left)
	{
	if (image_index = image_number - 13)
	{
		instance_create_layer(x - 80, y, "Effects", oDmg1);
		depth = -100;
		audio_play_sound(sfx_worm_bite,2,false);
	}	
					
	if (image_index = image_number - 2)
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
		sprite_index = spWorm1_attack_up;		
		image_index = 0;
	}	
		
	//Attack up
	if(isAttacking = true and sprite_index = spWorm1_attack_up)
	{
	if (image_index = image_number - 13)
	{
		instance_create_layer(x, y-80, "Effects", oDmg1);
		depth = -100;
		audio_play_sound(sfx_worm_bite,2,false);
	}
					
	if (image_index = image_number - 2)
		{
		isAttacking = false;
		sprite_index = spWorm2_idle_up;
		depth = 2;
		}		
	}
			
	//Attacking down
	//Check tile for collision
	if (place_meeting(x, y+80, oTest) and isAttacking = false)
	{
		//change sprite and reset imageindex
		isAttacking  = true;
		sprite_index = spWorm1_attack_down;
		image_index = 0;
	}	
		
	//Attack down
	if(isAttacking = true and sprite_index = spWorm1_attack_down)
	{
	if (image_index = image_number - 13)
	{
		instance_create_layer(x, y+80, "Effects", oDmg1);
		depth = -100;
		audio_play_sound(sfx_worm_bite,2,false);
	}
					
	if (image_index = image_number - 2)
		{
		isAttacking = false;
		sprite_index = spWorm2_idle_down;
		}
		
	else if(!instance_exists(oPlayer))
		{
			isAttacking = false;
			sprite_index = spWorm2_idle_down;
		}
	
	}

}

if (WormHealth2 <= 0)
{
	instance_destroy()
}


