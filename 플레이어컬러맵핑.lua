function 플레이어컬러맵핑(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F21C + a*4, d, math.abs(b - c))
	return string
end
