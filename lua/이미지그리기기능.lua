function 이미지그리기기능(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5125A0 + a*12, d, math.abs(b - c))
	return string
end
