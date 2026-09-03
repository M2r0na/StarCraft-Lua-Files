function EMP쇼크웨이브미사일(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDE0 + a*4, d, math.abs(b - c))
	return string
end
