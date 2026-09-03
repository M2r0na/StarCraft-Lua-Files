function 에너지수치(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CD48 + a*4, d, math.abs(b - c))
	return string
end
