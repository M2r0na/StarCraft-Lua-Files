function 스크립트ID(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x66EC48 + a*4, d, math.abs(b - c))
	return string
end
