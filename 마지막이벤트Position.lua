function 마지막이벤트Position(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57FD34 + a*8, d, math.abs(b - c))
	return string
end
