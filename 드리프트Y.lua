function 드리프트Y(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDF7 + a*4, d, math.abs(b - c))
	return string
end
