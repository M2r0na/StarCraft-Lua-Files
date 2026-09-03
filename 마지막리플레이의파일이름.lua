function 마지막리플레이의파일이름(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FF900 + a*12, d, math.abs(b - c))
	return string
end
