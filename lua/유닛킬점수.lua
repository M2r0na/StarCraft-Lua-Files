function 유닛킬점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581E74 + a*4, d, math.abs(b - c))
	return string
end
