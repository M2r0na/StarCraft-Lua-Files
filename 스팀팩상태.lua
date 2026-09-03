function ½ºÆÀÆÑ»óÅÂ(unitlndex,modifier,value) -- (unitlndex,modifier,value)
	if modifier == exactly then	
		string = Memory2(cunit(unitlndex) + 0x114,Exactly,value*256);
	end
	if modifier == atleast then
		string = Memory2(cunit(unitlndex) + 0x114,AtLeast,value*256);
	end
	if modifier == atmost then
		string = Memory2(cunit(unitlndex) + 0x114,AtMost,value*256);
	end
	if modifier == setto then
		string = SetMemory2(cunit(unitlndex) + 0x114,SetTo,value*256);
	end
	if modifier == add then
		string = SetMemory2(cunit(unitlndex) + 0x114,Add,value*256);
	end
	if modifier == subtract then
		string = SetMemory2(cunit(unitlndex) + 0x114,Subtract,value*256);
	end
	return string
end
