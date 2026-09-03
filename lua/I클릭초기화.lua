function I클릭초기화(playernumber,modifier,unitlndex) -- (playernumber,modifier,unitlndex)
	if modifier == setto then
		e = 0x6284E8 + 0x30*playernumber
		string = SetMemory(e - e%4, SetTo, 0)
	else
	if modifier == exactli then
		e = 0x6284E8 + 0x30*playernumber
		string = Memory(e - e%4, Exactly, 0)
		end
	end
	return string
end
