function P업그레이드인식(PlayerN ,UpgradeN, Value, DeathsN ,Action1,Action2,Action3,Action4,Action5,Action6,Action7,Action8,Action9,Action10,Action11,Action12,Action13,Action14,Action15,Action16) -- (플레이어, 업그레이드번호, 값, 데스값번호, 액션1, 액션2 , 액션3 , 액션4 ....) 값을 정확히 기입하시오.

Trigger {
	players = {PlayerN},
	actions = {
		SetDeaths(CurrentPlayer,SetTo,0,DeathsN);
		PreserveTrigger();
	}
}


if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 0 then
for j = 23,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Memory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), AtLeast, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Subtract, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Add,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 1 then
for j = 15,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Memory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), AtLeast, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Subtract, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Add,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 2 then
for j = 7,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Memory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), AtLeast, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Subtract, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Add,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 3 then
end
end
end
end


Trigger {
	players = {PlayerN},
	conditions = {
		Memory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), AtLeast, 256^(UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*Value);
	},
	actions = {
		Action1;
		Action2;
		Action3;
		Action4;
		Action5;
		Action6;
		Action7;
		Action8;
		Action9;
		Action10;
		Action11;
		Action12;
		Action13;
		Action14;
		Action15;
		Action16;
	}
}

if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 0 then
for j = 23,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Deaths(CurrentPlayer,AtLeast,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j, DeathsN);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Add, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Subtract,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 1 then
for j = 15,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Deaths(CurrentPlayer,AtLeast,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j, DeathsN);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Add, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Subtract,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 2 then
for j = 7,0,-1 do
Trigger {
	players = {PlayerN},
	conditions = {
		Deaths(CurrentPlayer,AtLeast,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j, DeathsN);
	},
	actions = {
		SetMemory(0x58D2B0 + 0x04*math.floor(UpgradeN*0.25) + 0x30*PlayerN - 0x04*math.floor((PlayerN+(math.floor(UpgradeN*0.5+1) - math.floor((UpgradeN*0.5+1)*0.5)*2))*0.5), Add, 256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j);
		SetDeaths(CurrentPlayer,Subtract,256^(1 + UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25))*2^j,DeathsN);
		PreserveTrigger();
	}
}
end
else
if (UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4) - 4*math.floor((UpgradeN + (2*PlayerN - math.floor(PlayerN*0.5)*4))*0.25)) == 3 then
end
end
end
end
end