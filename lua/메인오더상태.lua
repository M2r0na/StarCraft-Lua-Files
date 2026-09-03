function 메인오더상태(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CCF6 + a*4, d, math.abs(b - c))
	return string
end
