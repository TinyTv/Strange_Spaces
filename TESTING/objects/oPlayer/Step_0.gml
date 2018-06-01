check_input()

switch (state)
{
	case states.idle:
		state_idle() 
		break;
	case states.move:
		state_move()
		break;
	case states.dash:
		state_dash()
		break;
	case states.death:
		state_death()
		break;
	case states.attack:
		state_attack()
		break;
}

//Checks the player health, kills the player if health less than or equal to 0
if (playerHealth <= 0)
	{
	state = states.death;	
	}
