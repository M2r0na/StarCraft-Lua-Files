function U그룹플래그(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6637A0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6637A0 + a*1, d, math.abs(b - c))
	end
	return string
end
