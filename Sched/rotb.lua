-- AIO ROTB Lua
print("OS time:"..os.time().."\n")
print("Start time:"..os.time{year=2019, month=4, day=24, hour=2}.."\n")
timeFromStart = (os.difftime(os.time(),os.time{year=2019, month=4, day=24, hour=2}))
print("timeFromStart "..timeFromStart.."\n")
timeFromStartMin = (os.difftime(os.time(),os.time{year=2019, month=4, day=24, hour=2})/60)
print("timeFromStartMin "..timeFromStartMin.."\n")
timeFromStartHrs = (os.difftime(os.time(),os.time{year=2019, month=4, day=24, hour=2})/3600)
print("timeFromStartHrs "..timeFromStartHrs.."\n")
tfsmod = math.floor(timeFromStartHrs%8)
print("tfsmod "..tfsmod.."\n")
eleidx = math.floor((timeFromStartHrs)/2)+1 --Adjust since we start with first element half over also lua arrays are retared and start with 1 so pad it.
print("eleidx "..eleidx.."\n")
minsremain = math.floor(120-(timeFromStartMin%120))
print("minsremain "..minsremain.."\n")
ROTBs = {    runs = 0,	}
xlelements = {1, 2, 3, 4,							--fire, water, earth, wind
			  2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1,		--repeat through schedule
			  3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2,		
			  4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3,
			  1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4,
			  1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3}
			  
			  
function ROTBs:new(k)
    k = k or {};setmetatable(k,self);self.__index = self;return k
end

function ROTBs:wet()
	--Xuanwu is wet so use dirt
	SetPreferredSummons("Godsworn_1,Uriel_1,Marduk_1,Yggdrasil_2")
	for i=1,3 do --[[Clear 3 Neptune raids]]
	SetLuaScript("../scripts/dirt_ex.lua")
	for x=1,8 do --[[Clear 8 Xuanwu raids to spawn Neptune]]
		RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711041/1", 20, 1)
		Assert4SymbolsPendantsBelow(30000)
	end
	SetLuaScript("../scripts/dirt_exp.lua")
	RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711051/1/0/5020", 30, 1)
	Assert4SymbolsPendantsBelow(30000)
	end
	return true;
end

function ROTBs:dirt()
	--Baihu is dirt so use wind!
	SetPreferredSummons("Tiamat_2,Grimnir_1")
	for i=1,3 do --[[Clear 3 Titan raids]]
	SetLuaScript("../scripts/wind_ex.lua")
	for x=1,8 do --[[Clear 8 Baihu raids to spawn Titan]]
		RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711141/1", 20, 1)
		Assert4SymbolsPendantsBelow(30000)
	end
	SetLuaScript("../scripts/wind_exp.lua")
	RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711151/1/0/5017", 30, 1)
	Assert4SymbolsPendantsBelow(30000)
	end	
	return true;
end

function ROTBs:wind()
	--Qinglong is wind so use fire!
	SetPreferredSummons("Shiva_1,Sylph Flutterspirit of Purity_1,Colossus_2")
	for i=1,3 do --[[Clear 3 Qinglong raids]]
	SetLuaScript("../scripts/fire_ex.lua")
	for x=1,8 do --[[Clear 8 Qinglong raids to spawn Zephyrus]]
		RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711091/1", 20, 1)
		Assert4SymbolsPendantsBelow(30000)
	end
	SetLuaScript("../scripts/fire_exp.lua")
	RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711101/1/0/5020", 30, 1)
	Assert4SymbolsPendantsBelow(30000)
	end	
	return true;
end

function ROTBs:fire()
	--Zhuque is fire so use wet!
	SetPreferredSummons("Europa_1,Poseidon_1,Gabriel_1,Leviathan_2")
	for i=1,3 do --[[Clear 3 Agni raids]]
	SetLuaScript("../scripts/water_ex.lua")
	for x=1,8 do --[[Clear 8 Zhuque raids to spawn Agni]]
		RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711191/1", 20, 1)
		Assert4SymbolsPendantsBelow(30000)
	end
	SetLuaScript("../scripts/water_exp.lua")
	RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/711151/1/0/5020", 30, 1)
	Assert4SymbolsPendantsBelow(30000)
	end
	return true;
end

rotb = ROTBs:new()

if xlelements[eleidx] == 1 then
print("fire time! ".."\n")
rotb:fire()
end
if xlelements[eleidx] == 2 then
print("Wet boss ".."\n")
rotb:wet()
end
if xlelements[eleidx] == 3 then
print("Dirt! ".."\n")
rotb:dirt()
end
if xlelements[eleidx] == 4 then
print("Wind! ".."\n")
rotb:wind()
end