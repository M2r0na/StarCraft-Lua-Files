function 건설점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581F64 + a*4, d, math.abs(b - c))
	return string
end
