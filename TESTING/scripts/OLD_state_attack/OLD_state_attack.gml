
//Create oBullet on the instances layer
instance_create_layer(x,y,"Bullets",oBullet);


//Create object AttackTimer, which calculates if you're able to attack or not 
instance_create_depth(0,0,1,oAttackTimer);


