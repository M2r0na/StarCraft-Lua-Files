function U대기열단일초기화(unitlndex,queuenumber,unitnumber) -- (unitlndex, queuenumber, unitnumber)
	tu = {}
	if queuenumber == 0 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA4, SetTo, 1507584));
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x98, SetTo, 14942436));
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x9C, SetTo, 14942436));
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA0, SetTo, 14942436));
	end
	if queuenumber == 1 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA4, SetTo, 1507584));
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x98, Add, (228 - unitnumber)));
	end
	if queuenumber == 2 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x98, Add, (228 - unitnumber)*256*256));
	end
	if queuenumber == 3 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x9C, Add, (228 - unitnumber)));
	end
	if queuenumber == 4 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0x9C, Add, (228 - unitnumber)*256*256));
	end
	if queuenumber == 5 then
		table.insert(tu, SetMemory(CUnit(unitlndex) + 0xA0, Add, (228 - unitnumber)));
	end
	return tu
end