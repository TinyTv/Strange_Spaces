/// @description changes oFallingBlock to oHazard -> kills player
// You can write your code in this editor
if (BlockBreaking = 1)
	{
		alarm[2] = room_speed * 0.5;
		instance_change(oHazard,false);
	}