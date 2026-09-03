function 게임모드(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x596904 + a*2, d, math.abs(b - c))
	return string
end
