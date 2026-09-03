function 플레이어이름(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57EE9C + a*25, d, math.abs(b - c))
	return string
end
