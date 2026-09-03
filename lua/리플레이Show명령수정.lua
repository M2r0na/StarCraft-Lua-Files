function 리플레이Show명령수정(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FF948 + a*32, d, math.abs(b - c))
	return string
end
