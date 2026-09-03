function U°ø°ÝÄðÅ¸ÀÓ(unitlndex,modifier,value) -- (unitlndex, modifier, value)
	tu = {}
	if modifier == SetTo then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x54, SetTo, value*65536));
	end
	if modifier == add then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x54, Add, value*65536));
	end
	if modifier == subtract then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x54, Subtract, value*65536));
	end
	if modifier == exactly then
		a = 1
		table.insert(tu, Memory(CUnit(unitlndex) + 0x54, AtLeast, value*65536));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x54, AtMost, value*65536 - a));
	end
	if modifier == AtLeast then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x54, AtLeast, value*65536));
	end
	if modifier == AtMost then
		b = 1
		table.insert(tu, Memory(CUnit(unitlndex) + 0x54, AtMost, value*65536 - b));
	end
	return tu
end