function U대기열단일인식(unitlndex,queuenumber,unitnumber) -- (unitlndex, queuenumber, unitnumber)
	tu = {}
	if queuenumber == 1 then
		table.insert(tu, Memory(cunit(unitlndex) + 0x98,Exactly,unitnumber + 228*256*256));
	end
	if queuenumber == 2 then
		table.insert(tu, Memory(cunit(unitlndex) + 0x98,AtLeast,unitnumber*256*256));
		table.insert(tu, Memory(cunit(unitlndex) + 0x98,AtMost,(unitnumber*256*256) + 228));
	end
	if queuenumber == 3 then
		table.insert(tu, Memory(cunit(unitlndex) + 0x9C,Exactly,unitnumber + 228*256*256));
	end
	if queuenumber == 4 then
		table.insert(tu, Memory(cunit(unitlndex) + 0x9C,AtLeast,unitnumber*256*256));
		table.insert(tu, Memory(cunit(unitlndex) + 0x9C,AtMost,(unitnumber*256*256) + 228));
	end
	if queuenumber == 5 then
		table.insert(tu, Memory(cunit(unitlndex) + 0xA0,Exactly,unitnumber + 228*256*256));
	end
	return tu
end