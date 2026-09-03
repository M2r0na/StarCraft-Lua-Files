function PColor(player, color)
    pcolor_dst = 0x581D76 + 8 * player
    return SetMemory(pcolor_dst - 2, SetTo, color * 0x10000)
end

function MColor(...)
local Colors = {0, 0, 111, 165, 159, 164, 156, 19, 84, 135, 185, 136, 134, 51, 0, 0}
local check = {0, 0, 0, 0}
local arguments = {...}
local ret = {}
  for key, value in pairs(arguments) do
    check[math.floor((value[1]+2) / 4) + 1] = 1
    Colors[value[1] + 3] = value[2]
  end
  for i,o in ipairs(check) do
    if o == 1 then
      c = Colors[4*i-3] + 256*Colors[4*i-2] + 65536*Colors[4*i-1] + 16777216*Colors[4*i]
      ret[#ret+1]=SetMemory(0x581DD0 + 4*i, SetTo, c)
    end
  end
return ret
end