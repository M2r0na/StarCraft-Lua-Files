function 플레이어1선택그룹(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6284E8 + a*4, d, math.abs(b - c))
	return string
end
