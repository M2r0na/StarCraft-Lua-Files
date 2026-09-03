function Memory2X(a,b,c)
if a%4 == 0 then
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFF)
else if a%4 == 1 then
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFF00)
else if a%4 == 2 then
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFF0000)
else
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFF000000)
end
end
end
return string
end
  
function SetMemory2X(a,b,c)
if a%4 == 0 then
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFF)
else if a%4 == 1 then
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFF00)
else if a%4 == 2 then
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFF0000)
else
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFF000000)
end
end
end
return string
end

function Memory3X(a,b,c)
if a%4 == 0 then
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFFFF)
else if a%4 == 2 then
 string = MemoryX(a - a%4, b, c*256^(a%4),0xFFFF0000)
end
end
return string
end

function SetMemory3X(a,b,c)
if a%4 == 0 then
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFFFF)
else if a%4 == 2 then
 string = SetMemoryX(a - a%4, b, c*256^(a%4),0xFFFF0000)
end
end
return string
end


function X업그레이드인식(Player, Modifier, UpgradeID, Value) -- (Player, Modifier, UpgradeID, Value)
local p = ParsePlayer(Player)
if UpgradeID < 46 then
 string = Memory2X(0x58D2B0+UpgradeID+0x2E*p, Modifier, Value);
else
 string = Memory2X(0x58F32C+UpgradeID-46+0xF*p, Modifier, Value);
end
return string
end

function X업그레이드대입(Player, Modifier, UpgradeID, Value) -- (Player, Modifier, UpgradeID, Value)
local p = ParsePlayer(Player)
if UpgradeID < 46 then
 string = SetMemory2X(0x58D2B0+UpgradeID+0x2E*p, Modifier, Value);
else
 string = SetMemory2X(0x58F32C+UpgradeID-46+0xF*p, Modifier, Value);
end
return string
end

function X테크인식(Player, Modifier, TechID, Value) -- (Player, Modifier, TechID, Value)
local p = ParsePlayer(Player)
if TechID < 24 then
 string = Memory2X(0x58CF44+TechID+0x18*p, Modifier, Value);
else
 string = Memory2X(0x58F140+TechID-24+0x14*p, Modifier, Value);
end
return string
end

function X테크대입(Player, Modifier, TechID, Value) -- (Player, Modifier, TechID, Value)
local p = ParsePlayer(Player)
if TechID < 24 then
 string = SetMemory2X(0x58CF44+TechID+0x18*p, Modifier, Value);
else
 string = SetMemory2X(0x58F140+TechID-24+0x14*p, Modifier, Value);
end
return string
end

function X컴퓨터인식(playernumber,Value) -- (playernumber,Code[0=Human,1=Computer])
local p = ParsePlayer(Player)
	if Value == 0 then
	string = MemoryX(0x57EEE8+0x24*p,Exactly,2,0x000000FF);
	else
	string = MemoryX(0x57EEE8+0x24*p,Exactly,1,0x000000FF);
	end
	return string
end