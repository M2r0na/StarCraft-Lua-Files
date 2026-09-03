function 무기이름변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6572E0 + a*2, d, math.abs(b - c))
	return string
end
