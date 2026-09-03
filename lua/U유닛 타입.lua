function U¿Ø¥÷≈∏¿‘(unitlndex,modifier,unitnumber) -- (unitlndex,modifier,unitnumber)
	if modifier == exactly then	
		string = Memory2(cunit(unitlndex) + 0x64,Exactly,unitnumber);
	end
	if modifier == atleast then
		string = Memory2(cunit(unitlndex) + 0x64,AtLeast,unitnumber);
	end
	if modifier == atmost then
		string = Memory2(cunit(unitlndex) + 0x64,AtMost,unitnumber);
	end
	if modifier == setto then
		string = SetMemory2(cunit(unitlndex) + 0x64,SetTo,unitnumber);
	end
	if modifier == add then
		string = SetMemory2(cunit(unitlndex) + 0x64,Add,unitnumber);
	end
	if modifier == subtract then
		string = SetMemory2(cunit(unitlndex) + 0x64,Subtract,unitnumber);
	end
	return string
end
