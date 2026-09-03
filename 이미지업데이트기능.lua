function 이미지업데이트기능(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512510 + a*8, d, math.abs(b - c))
	return string
end
