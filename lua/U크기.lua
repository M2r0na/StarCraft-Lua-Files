function UÅ©±â(a,b,c,d,e) -- (UnitID,Left,Right,Up,Down)
	tu = {}	
	table.insert(tu, SetMemory(0x6617C8+a*8,SetTo,b+d*65536))	
	table.insert(tu, SetMemory(0x6617C8+a*8+4,SetTo,c+e*65536))
	return tu
end