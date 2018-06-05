depth = -100;
oPlayer.state = states.incapacitated;
timer -= 1;

if (playingSound = false)
{
audio_play_sound(sfx_cell_attack,6,false);
playingSound = true;
}

if (timer <= 0)
{
	oPlayer.state = states.death;
	timer = maxTimer;	
}
