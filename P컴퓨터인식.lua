function P컴퓨터인식(playernumber,Value) -- (playernumber,Code[0=Human,1=Computer])
	if Value == 0 then
	string = MemoryX(0x57EEE8+0x24*playernumber,Exactly,2,0x000000FF);
	else
	string = MemoryX(0x57EEE8+0x24*playernumber,Exactly,1,0x000000FF);
	end
	return string
end
