function 스타트로케이션(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D720 + a*4, d, math.abs(b - c))
	return string
end
