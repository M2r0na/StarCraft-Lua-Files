function I착지시연기(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x666778 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666778 + a*4, d, math.abs(b - c))
	end
	return string
end
