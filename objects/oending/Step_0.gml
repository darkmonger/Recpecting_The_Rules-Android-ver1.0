//Move player towards center
layer_x("TitleAssets", min(layer_get_x("TitleAssets")+1,RES_W * 0.5 - 32));

//Progress Text
letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));

//Next Line
if (letters >= length) && (device_mouse_check_button_pressed(0,mb_any))
{
	if (currentline+1 == array_length_1d(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART);	
	}
	else
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}
