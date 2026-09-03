function 메인메뉴다이얼로그핸들(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F0DC + a*4, d, math.abs(b - c))
	return string
end
