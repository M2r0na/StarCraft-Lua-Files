function 네트워크최대버퍼사이즈(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F0D8 + a*4, d, math.abs(b - c))
	return string
end
