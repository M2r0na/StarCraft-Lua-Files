function U현재마나(unitlndex,modifier,value) -- (unitlndex,modifier,value)
	tu = {}
	if modifier == SetTo then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA0, SetTo, value*16777216));
	end
	if modifier == add then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA0, Add, value*16777216));
	end
	if modifier == subtract then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA0, Subtract, value*16777216));
	end
	if modifier == exactly then
		a = 116777215
		table.insert(tu, Memory(CUnit(unitlndex) + 0xA0, AtLeast, value*16777216));
		table.insert(tu, Memory(CUnit(unitlndex) + 0xA0, AtMost, value*16777216 + a));
	end
	if modifier == AtLeast then
		table.insert(tu, Memory(CUnit(unitlndex) + 0xA0, AtLeast, value*16777216));
	end
	if modifier == AtMost then
		b = 16777215
		table.insert(tu, Memory(CUnit(unitlndex) + 0xA0, AtMost, value*16777216 + b));
	end
	return tu
end