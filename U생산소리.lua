function U생산소리(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x661FC0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661FC0 + a*2, d, math.abs(b - c))
	end
	return string
end
