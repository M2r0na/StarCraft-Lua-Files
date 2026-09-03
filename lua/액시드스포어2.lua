function 액시드스포어2(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDD0 + a*4, d, math.abs(b - c))
	return string
end
