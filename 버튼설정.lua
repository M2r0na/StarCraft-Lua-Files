function 버튼설정(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CD3C + a*4, d, math.abs(b - c))
	return string
end
