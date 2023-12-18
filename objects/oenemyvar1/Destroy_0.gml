with (instance_create_layer(x,y,layer,oDeadVar1))
{
	direction = other.hitfrom;
	hsp = lengthdir_x(3,direction);
	vsp = lengthdir_y(3,direction)-2;
	image_xscale = sign(hsp);
}