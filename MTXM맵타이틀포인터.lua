function MTXM맵타이틀포인터(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5993C4 + a*4, d, math.abs(b - c))
	return string
end
