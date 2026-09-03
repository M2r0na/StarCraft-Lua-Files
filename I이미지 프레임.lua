function I이미지프레임(imagelndex,modifier,value) -- (imagelndex,modifier,value)
	if modifier == exactly then	
		string = Memory(CImage(imagelndex) + 0x18, Exactly, value*65536);
	end
	if modifier == atleast then
		string = Memory(CImage(imagelndex) + 0x18, AtLeast, value*65536);
	end
	if modifier == atmost then
		string = Memory(CImage(imagelndex) + 0x18, AtMost, value*65536);
	end
	if modifier == setto then
		string = SetMemory(CImage(imagelndex) + 0x18, SetTo, value*65536);
	end
	if modifier == add then
		string = SetMemory(CImage(imagelndex) + 0x18, Add, value*65536);
	end
	if modifier == subtract then
		string = SetMemory(CImage(imagelndex) + 0x18, Subtract, value*65536);
	end
	return string
end
