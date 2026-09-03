function 멈추는거리변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6C9930 + a*4, d, math.abs(b - c))
	return string
end
