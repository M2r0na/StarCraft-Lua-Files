function 맵파일이름(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57FD3C + a*260, d, math.abs(b - c))
	return string
end
