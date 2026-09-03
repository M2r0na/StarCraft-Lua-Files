function 이동플래그(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CCC8 + a*4, d, math.abs(b - c))
	return string
end
