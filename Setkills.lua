function Setkills(Players,Modify,Value,Unit) -- (Players,Modify,Value,Unit)
	local t = {}
	Unit = ParseUnit(Unit)
	Players = ParsePlayer(Players)
	if Players == 13 then
	table.insert(t, SetMemory(0x6509B0, Add, -12 * 228))
	table.insert(t, SetDeaths(CurrentPlayer, Modify, Value, Unit))
	table.insert(t, SetMemory(0x6509B0, Add, 12 * 228))
	else
	table.insert(t, SetMemory(0x5878A4+Players*0x04+Unit*0x30,Modify,Value))
	end
	return t
end