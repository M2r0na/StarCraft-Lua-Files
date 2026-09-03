function 네트워크대기시간옵션(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6556E4 + a*4, d, math.abs(b - c))
	return string
end
