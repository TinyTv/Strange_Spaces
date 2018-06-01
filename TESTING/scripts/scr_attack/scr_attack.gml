if(global.canAttack = true)
{
		
		
		instance_create_depth(0,0,1,oAttackTimer);
		image_index = 0;
		
		//Take faceDirection, create object oBullet on the next grid from the oPlayer
		//RIGHT
		if (faceDirection = 0)
			{
				sprite_index = spPlayer_attack_right;
				audio_play_sound(sfx_player_attack,1,false);				
			}			
			
			//UP
		if (faceDirection = 1)
			{
				
				sprite_index = spPlayer_attack_up;
				audio_play_sound(sfx_player_attack,1,false);
				
			}
	
		//LEFT
		if (faceDirection = 2) 
			{
				
				sprite_index = spPlayer_attack_left;
				audio_play_sound(sfx_player_attack,1,false);
				
			}
	
		//DOWN
		if (faceDirection = 3)
			{
				
				sprite_index = spPlayer_attack_down;
				audio_play_sound(sfx_player_attack,1,false);
				
			}
			

			
}

if (!instance_exists(oBullet))
{
	if (image_index = image_number - 7)
	{
		//RIGHT
		if (faceDirection = 0)
		{
		instance_create_layer(x+80,y,"Bullets",oBullet);
		}
	
		//UP
		if(faceDirection = 1)
		{
		instance_create_layer(x,y-80,"Bullets",oBullet);
		}
	
		//LEFT
		if(faceDirection = 2)
		{
		instance_create_layer(x-80,y,"Bullets",oBullet);
		}
	
		//DOWN
		if(faceDirection = 3)
		{
		instance_create_layer(x,y+80,"Bullets",oBullet);
		}
	}
}

			
	
	