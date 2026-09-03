function 프로토스최대인구(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5822C4 + a*4, d, math.abs(b - c))
	return string
end
