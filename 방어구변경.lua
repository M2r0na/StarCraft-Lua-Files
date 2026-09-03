function 방어구변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6535D0 + a*1, d, math.abs(b - c))
	return string
end
