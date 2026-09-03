function 커서파일이름수식어(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512708 + a*4, d, math.abs(b - c))
	return string
end
