function 유닛컬러테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581D76 + a*8, d, math.abs(b - c))
	return string
end
