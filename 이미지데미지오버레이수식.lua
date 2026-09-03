function 이미지데미지오버레이수식(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x520244 + a*4, d, math.abs(b - c))
	return string
end
