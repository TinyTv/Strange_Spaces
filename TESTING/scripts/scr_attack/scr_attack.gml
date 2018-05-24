if(global.canAttack = true)
{			

		instance_create_depth(0,0,1,oAttackTimer);
		
		//Take faceDirection, create object oBullet on the next grid from the oPlayer
		if (faceDirection = 0)
			{
				//Attack right
				instance_create_layer(x+80,y,"Bullets",oBullet);
				sprite_index = spPlayer_attack_right;
				image_speed = 0.7;
			}
	
	
		if (faceDirection = 1)
			{
				//Attack up
				instance_create_layer(x,y-80,"Bullets",oBullet);
				sprite_index = spPlayer_attack_up;
				image_speed = 0.7;
			}
	
	
		if (faceDirection = 2) 
			{
				//Attack left
				instance_create_layer(x-80,y,"Bullets",oBullet);
				sprite_index = spPlayer_attack_left;
				image_speed = 0.7;
			}
	

		if (faceDirection = 3)
			{
				//Attack down
				instance_create_layer(x,y+80,"Bullets",oBullet);
				sprite_index = spPlayer_attack_down;
				image_speed = 0.7;
			}
}