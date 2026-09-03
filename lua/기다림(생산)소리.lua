function 기다림(생산)소리(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x661FC0 + a*2, d, math.abs(b - c))
	return string
end
