function 플래이어동맹(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D634 + a*12, d, math.abs(b - c))
	return string
end
