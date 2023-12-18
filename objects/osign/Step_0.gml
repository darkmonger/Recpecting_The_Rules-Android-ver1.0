if (instance_exists(oPlayer)) && (point_in_circle(oPlayer.x,oPlayer.y,x,y,64))  && (!instance_exists(oText))
{
	nearby = true;
	if (device_mouse_check_button_pressed(0,mb_any))
	{
		with (instance_create_layer(x,y-64,layer,oText))
		{
			text = other.text;
			length = string_length(text);
		}
	
		with (oCamera)
		{
			follow = oPlayer.id;	
		}
	}
	
}else nearby = false;