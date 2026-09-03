function 데스테이블시작(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58A364 + a*4, d, math.abs(b - c))
	return string
end
