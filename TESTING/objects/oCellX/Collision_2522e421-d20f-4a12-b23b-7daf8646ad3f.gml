depth = -100;
oPlayer.state = states.incapacitated;
timer -= 1;
if (timer <= 0)
{
	oPlayer.state = states.death;
	timer = maxTimer;
}



