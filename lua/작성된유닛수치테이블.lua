function 작성된유닛수치테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x584DE4 + a*4, d, math.abs(b - c))
	return string
end
