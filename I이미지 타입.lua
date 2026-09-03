function I이미지타입(imagelndex,modifier,imagenumber) -- (imagelndex,modifier,imagenumber)
	if modifier == exactly then	
		string = Memory(CImage(imagelndex) + 0x08, Exactly, imagenumber);
	end
	if modifier == atleast then
		string = Memory(CImage(imagelndex) + 0x08, AtLeast, imagenumber);
	end
	if modifier == atmost then
		string = Memory(CImage(imagelndex) + 0x08, AtMost, imagenumber);
	end
	if modifier == setto then
		string = SetMemory(CImage(imagelndex) + 0x08, SetTo, imagenumber);
	end
	if modifier == add then
		string = SetMemory(CImage(imagelndex) + 0x08, Add, imagenumber);
	end
	if modifier == subtract then
		string = SetMemory(CImage(imagelndex) + 0x08, Subtract, imagenumber);
	end
	return string
end
