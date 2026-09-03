function 세력이름(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D5BC + a*30, d, math.abs(b - c))
	return string
end
