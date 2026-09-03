function U생산크기(a,b,c) -- (UnitID,가로,세로)
	tu = {}	
	table.insert(tu, SetMemory(0x662860+a*4,SetTo,b+c*65536))	
	return tu
end
