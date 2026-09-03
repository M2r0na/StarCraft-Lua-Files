function 쿨다운타이머(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D6F4 + a*4, d, math.abs(b - c))
	return string
end
