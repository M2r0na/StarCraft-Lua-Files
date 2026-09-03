function 액시드스포어5(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDD3 + a*4, d, math.abs(b - c))
	return string
end
