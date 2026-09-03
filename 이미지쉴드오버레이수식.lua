function 이미지쉴드오버레이수식(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x52E5C8 + a*64, d, math.abs(b - c))
	return string
end
