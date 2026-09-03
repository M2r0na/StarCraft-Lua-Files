function ·±Ã³¹æ(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x51CE88 + a*4, d, math.abs(b - c))
	return string
end
