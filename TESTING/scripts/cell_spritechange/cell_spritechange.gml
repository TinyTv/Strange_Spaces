if (sawPlayer = true && speed = 0)
	{
		switch (cell_direction(oPlayer.x, oPlayer.y, 90))
		{
			case 0:
			case 360:
			sprite_index = spCell_turn_right;
			break;
			case 90:
			sprite_index = spCell_turn_up;
			break;
			case 180:
			sprite_index = spCell_turn_left;
			break;
			case 270:
			sprite_index = spCell_turn_down;
			break;
		}
	}
if (sawPlayer = false)
sprite_index = spCell_idle;