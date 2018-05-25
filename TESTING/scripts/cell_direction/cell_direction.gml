///@description
///arg0 x
///arg1 y
///arg2 angle

var a = argument0;
var b = argument1;
var c = argument2;
var d;

d = point_direction(x,y,a,b);
d = round (d/c) * c;
return d;