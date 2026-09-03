function U√÷¥ÎΩØµÂ(unitnumber,modifier,value); -- (unitnumber, modifier, value);
	tu = {}
	if modifier == SetTo then
		table.insert(tu, SetMemory2(0x660E00 + unitnumber*2, SetTo, value));
	end
	if modifier == add then
		table.insert(tu, SetMemory2(0x660E00 + unitnumber*2, Add, value));
	end
	if modifier == subtract then
		table.insert(tu, SetMemory2(0x660E00 + unitnumber*2, Subtract, value));
	end
	if modifier == exactly then
		table.insert(tu, Memory2(0x660E00 + unitnumber*2, exactly, value));
	end
	if modifier == AtLeast then
		table.insert(tu, Memory2(0x660E00 + unitnumber*2, AtLeast, value));
	end
	if modifier == AtMost then
		table.insert(tu, Memory2(0x660E00 + unitnumber*2, AtMost, value));
	end
	return tu
end