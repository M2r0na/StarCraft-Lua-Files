function 기술시간(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6563D8 + a*2, d, math.abs(b - c))
	return string
end
