function 플레이어7선택그룹(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x628608 + a*4, d, math.abs(b - c))
	return string
end
