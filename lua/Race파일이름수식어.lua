function Race파일이름수식어(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512700 + a*8, d, math.abs(b - c))
	return string
end
