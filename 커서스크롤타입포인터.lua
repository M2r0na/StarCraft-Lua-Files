function 커서스크롤타입포인터(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512754 + a*2, d, math.abs(b - c))
	return string
end
