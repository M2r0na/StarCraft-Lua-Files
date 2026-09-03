function 네트워크플레이어상태수식(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F0B8 + a*4, d, math.abs(b - c))
	return string
end
