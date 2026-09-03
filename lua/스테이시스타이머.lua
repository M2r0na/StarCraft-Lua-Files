function 스테이시스타이머(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDC1 + a*4, d, math.abs(b - c))
	return string
end
