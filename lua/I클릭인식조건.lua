function I클릭인식조건(playernumber,modifier,unitlndex) -- (unitlndex, modifier, unitlndex)
	if unitlndex == 0 then	
		a = 5885096	
	else
		a = 6456296
	end
	string = Memory(0x6284E8 + 0x30*playernumber, Exactly, a - (336*unitlndex));
	return string
end
