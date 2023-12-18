with (oPlayer)
{
	vspeed += jump_vsp;	
		
		
		//Jumping
canjump-=1;

if (place_meeting(x,y+1,oWall))
{
	canjump = 10;
}

if (canjump > 0) 
{
	vspeed = -7;	
}

}