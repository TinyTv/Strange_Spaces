/// @description Insert description here
// You can write your code in this editor


//Destroy player and hitbox
instance_destroy(oPlayer);
instance_destroy(oTest);



//Create the spawnTimer object that makes a new object oPlayer and oTest after a delay
instance_create_depth(0,0,5,oSpawnTimer);
