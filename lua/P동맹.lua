function Pµ¿¸Í(Players,PlayersID,modifier,value) -- (PlayersID, PlayersID, modifier, value)
if value == "A" then
	a = 42
end
if value == "E" then
	a = 36
end
if value == "AV" then
	a = 29
end

if value > 0 then
	a = value
end
	if modifier == SetTo then
		e = 0x58D634 + Players*12+PlayersID
		string = SetMemory(e - e%4, SetTo, a)
	else
		if b < c then	
			d = Add	
		else
			d = Subtract
		end
		string = SetMemory2(0x58D634 + Players*12+PlayersID, modifier, a)
	end
	return string
end
