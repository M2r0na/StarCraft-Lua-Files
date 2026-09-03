function 건물생산크기(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x662860 + a*4, d, math.abs(b - c))
	return string
end
