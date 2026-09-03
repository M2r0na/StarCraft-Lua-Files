function X¹è¼Ó(x,modifier,value) -- (ID, modifier, value)
if value == 0 then
	a = 42
end
if value == 1 then
	a = 36
end
if value == 2 then
	a = 29
end
if value == 3 then
	a = 21
end
if value == 4 then
	a = 12
end
if value == 5 then
	a = 1
end
if value > 5 then
	a = value
end
	if modifier == setto then
		string = SetMemory(0x5124F0, SetTo, a)
	end
	if modifier == exactly then
		string = Memory(0x5124F0, Exactly, a)
	end
	if modifier == add then
		string = SetMemory(0x5124F0, Add, a)
	end
	if modifier == subtract then
		string = SetMemory(0x5124F0, Subtract, a)
	end
	if modifier == atleast then
		string = Memory(0x5124F0, AtLeast, a)
	end
	if modifier == atmost then
		string = Memory(0x5124F0, AtMost, a)
	end
	return string
end
