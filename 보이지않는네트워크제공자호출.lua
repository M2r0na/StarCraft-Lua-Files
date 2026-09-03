function 보이지않는네트워크제공자호출(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F090 + a*4, d, math.abs(b - c))
	return string
end
