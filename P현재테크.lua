function P현재테크(a,b,c) -- (Player, Upnum, Upcount)
	if b < 24 then
		if c > 0 then
			string = SetMemory2(0x58CF44 + 0x18*a + b, Add, c)
		else
			string = SetMemory2(0x58CF44 + 0x18*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F140 + 0x14*a + b - 24, Add, c)
		else
			string = SetMemory2(0x58F140 + 0x14*a + b - 24, Subtract, math.abs(c))
		end
	end
	return string
end