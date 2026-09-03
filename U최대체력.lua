function U최대체력(unitnumber,modifier,value) -- (unitnumber, modifier, value)
	tu = {}
	if modifier == SetTo then
		table.insert(tu, SetMemory(0x662350 + unitnumber*4, SetTo, value*256));
	end
	if modifier == add then
		table.insert(tu, SetMemory(0x662350 + unitnumber*4, Add, value*256));
	end
	if modifier == subtract then
		table.insert(tu, SetMemory(0x662350 + unitnumber*4, Subtract, value*256));
	end
	if modifier == exactly then
		table.insert(tu, Memory(0x662350 + unitnumber*4, exactly, value*256));
	end
	if modifier == AtLeast then
		table.insert(tu, Memory(0x662350 + unitnumber*4, AtLeast, value*256));
	end
	if modifier == AtMost then
		table.insert(tu, Memory(0x662350 + unitnumber*4, AtMost, value*256));
	end
	return tu
end