function 시네마틱파일이름집합체(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512690 + a*4, d, math.abs(b - c))
	return string
end
