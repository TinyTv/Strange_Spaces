//Destroy the bullet
instance_destroy(oBullet);

global.canAttack = true;
instance_destroy();
oPlayer.state = states.idle;
