function 리플레이속도제한기(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FF90C + a*4, d, math.abs(b - c))
	return string
end
