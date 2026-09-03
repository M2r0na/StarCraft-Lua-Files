function I클릭인식액션(playernumber,modifier,unitlndex) -- (unitlndex, modifier, unitlndex)
	if unitlndex == 0 then	
		a = 5885096	
	else
		a = 6456296
	end
	string = SetMemory(0x6284E8 + 0x30*playernumber, SetTo, a - (336*unitlndex));
	return string
end
