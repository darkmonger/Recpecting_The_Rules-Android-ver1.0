x = oPlayer.x;
y = oPlayer.y+10;
image_angle = point_direction(x,y,device_mouse_x(1),device_mouse_y(1));


firingdelay = firingdelay - 1;

if (device_mouse_check_button(1,mb_left)) && (firingdelay < 0)
{
	firingdelay = 5;
	recoil = 4;
	ScreenShake(2,10);
	audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
	audio_play_sound(snShot,5,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		spd = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
}

recoil = max(0, recoil - 1);

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1
}
else
{
	image_yscale = 1;
}
