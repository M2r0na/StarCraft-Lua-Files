function 회전반경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CCCC + a*4, d, math.abs(b - c))
	return string
end
