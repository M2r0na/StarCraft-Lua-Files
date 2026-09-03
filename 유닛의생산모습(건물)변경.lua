function 유닛의생산모습(건물)변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6610B0 + a*4, d, math.abs(b - c))
	return string
end
