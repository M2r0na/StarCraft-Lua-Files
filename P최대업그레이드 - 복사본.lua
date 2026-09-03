function P최대업그레이드(a,b,c) -- (Player, Upnum, Upcount)
	if b < 46 then
		if c > 0 then
			string = SetMemory2(0x58D088 + 0x2E*a + b, Add, c)
		else
			string = SetMemory2(0x58D088 + 0x2E*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F278 + 0xF*a + b - 46, Add, c)
		else
			string = SetMemory2(0x58F278 + 0xF*a + b - 46, Subtract, math.abs(c))
		end
	end
	return string
end