//key_left = oLeft;
//key_right = ORight;
//key_jump = oJump;

//var move = key_right - key_left;

//hsp = move*walksp;


vsp = vsp + grv;





if (place_meeting(x+hspeed,y,oWall))
{
	while (!place_meeting(x+sign(hspeed),y,oWall))
	{
		x = x + sign(hspeed);
	
	
	}
	hspeed = 0;
	



}
x = x + hsp;

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
		//vspeed = 0;
		
		
	}
	vsp = 0;
	
	
	
	
}
y = y + vsp;




//Animation

//var aimside = sign(mouse_x - x);
//if (aimside != 0) image_xscale = aimside;


if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vspeed) > 0) image_index = 1; else image_index = 0;
}
else
{
	if (sprite_index == sPlayerA) 
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
			}
		}
	
	}
	image_speed = 1;
	if (hspeed == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
		//if (aimside != sign(hsp)) sprite_index = sPlayerRb;
	}
}

if (hspeed != 0) image_xscale = sign(hspeed);

