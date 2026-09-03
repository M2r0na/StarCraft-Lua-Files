function 총포인터구축(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FFF60 + a*8, d, math.abs(b - c))
	return string
end
