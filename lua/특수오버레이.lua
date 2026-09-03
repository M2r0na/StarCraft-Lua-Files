function 특수오버레이(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x667B00 + a*4, d, math.abs(b - c))
	return string
end
