function 스파이더마인(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CD68 + a*4, d, math.abs(b - c))
	return string
end
