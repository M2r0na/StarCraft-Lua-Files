function U현재체력(unitlndex,modifier,value) -- (unitlndex, modifier, value)
	tu = {}
	if modifier == SetTo then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x8, SetTo, value*256));
	end
	if modifier == add then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x8, Add, value*256));
	end
	if modifier == subtract then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x8, Subtract, value*256));
	end
	if modifier == exactly then
		a = 0.99609375*256
		table.insert(tu, Memory(CUnit(unitlndex) + 0x8, AtLeast, value*256));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x8, AtMost, value*256 + a));
	end
	if modifier == AtLeast then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x8, AtLeast, value*256));
	end
	if modifier == AtMost then
		b = 0.99609375*256
		table.insert(tu, Memory(CUnit(unitlndex) + 0x8, AtMost, value*256 + b));
	end
	return tu
end