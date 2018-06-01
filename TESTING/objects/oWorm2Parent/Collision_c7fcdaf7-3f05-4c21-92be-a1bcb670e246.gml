WormHealth2 = WormHealth2 - 1;
image_index = 0;
image_speed = 0.5; 
audio_play_sound(sfx_worm_growl,5,false);
alarm[0] = 20;
instance_destroy(oBullet);