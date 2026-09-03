function 일시정지개수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D718 + a*1, d, math.abs(b - c))
	return string
end
