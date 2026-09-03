function 킬유닛수치테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5878A4 + a*4, d, math.abs(b - c))
	return string
end
