//Snaps to coordinates
x = round(oSpawn.x / oSpawn.gridSize) * oSpawn.gridSize;
y = round(oSpawn.y / oSpawn.gridSize) * oSpawn.gridSize;

instance_create_depth(x,y,-2,oPlayer);
instance_create_depth(x,y,-1,oTest);

