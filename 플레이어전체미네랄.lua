function 플레이어전체미네랄(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F180 + a*4, d, math.abs(b - c))
	return string
end
