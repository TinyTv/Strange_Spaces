//Idle animations
// Change sprite based on what direction we're facing
if (faceDirection = 2) 
{
	sprite_index = spPlayer_idle_left;		
}
	
if (faceDirection = 0)
{
	sprite_index = spPlayer_idle_right;		
}
	
if (faceDirection = 1)
{
	sprite_index = spPlayer_idle_up;
		
}
	
if (faceDirection = 3)
{
	sprite_index = spPlayer_idle_down;
}


if (state = states.idle)
	{
		
	if (place_meeting(oTest.x + sign(hsp), oTest.y + sign (vsp), oFallingBlock))
		{
			event_perform_object(oPlayer, ev_alarm, 0);
		}
		
		//Collision with oHazard block kills the player 
	if (place_meeting(oTest.x + sign(hsp), oTest.y + sign(vsp),oHazard))
		{
		state = states.death;
		state_death()
	
		}
						
		else state = states.idle;
					
}
