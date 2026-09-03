function 생성유닛점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581E14 + a*4, d, math.abs(b - c))
	return string
end
