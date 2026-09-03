function 그래픽회전여부(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x66E860 + a*1, d, math.abs(b - c))
	return string
end
