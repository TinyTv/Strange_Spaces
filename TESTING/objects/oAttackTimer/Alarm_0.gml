//Destroy the bullet
//instance_destroy(oBullet);

global.canAttack = true;

if(instance_exists(oPlayer))
{
oPlayer.state = states.idle;
instance_destroy();
}

else instance_destroy();