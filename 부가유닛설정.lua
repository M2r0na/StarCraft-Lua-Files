function 부가유닛설정(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6607C0 + a*2, d, math.abs(b - c))
	return string
end
