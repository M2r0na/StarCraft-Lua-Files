function 유닛상태정보(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5193A0 + a*12, d, math.abs(b - c))
	return string
end
