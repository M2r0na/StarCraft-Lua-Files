function 플레이어선택원컬러(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581D6A + a*1, d, math.abs(b - c))
	return string
end
