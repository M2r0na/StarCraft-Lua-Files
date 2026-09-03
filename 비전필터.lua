function 비전필터(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F0B0 + a*4, d, math.abs(b - c))
	return string
end
