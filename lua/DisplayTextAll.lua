function DisplayTextAll(Text) -- (Text)
	local t = {}
	for _i = 1, 8 do
	table.insert(t, DisplayText(Text))
	table.insert(t, SetMemoryX(0x6509B0, Add, 1, 0x7))
	end
	return t
end