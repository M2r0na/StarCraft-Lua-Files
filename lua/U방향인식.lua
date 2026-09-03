function U방향인식(unitlndex,modifier,value) -- (unitlndex, modifier, value)
	tu = {}
	if modifier == "U" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, 0));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, 16777215));
	end
	if modifier == "UR" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, 536870912));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, 553648127));
	end
	if modifier == "R" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, 1073741824));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, 1090519039));
	end
	if modifier == "DR" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, 1610612736));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, 1627389951));
	end
	if modifier == "D" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, -2147483648));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, -2130706433));
	end
	if modifier == "DL" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, -1610612736));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, -1593835521));
	end
	if modifier == "L" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, -1073741824));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, -1056964609));
	end
	if modifier == "UL" then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, -536870912));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, -520093697));
	end
	if modifier == exactly then
		a = 16777215
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, exactly, math.abs((a*value) + (value+8388608))));
	end
	if modifier == 0 then
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, math.abs((16777215*value) + (value+0))));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, math.abs((16777215*value) + (value+16777215))));
	else
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtLeast, math.abs((16777215*value) + (value+1))));
		table.insert(tu, Memory(CUnit(unitlndex) + 0x48, AtMost, math.abs((16777215*value) + (value+16777215))));
	end
	return tu
end