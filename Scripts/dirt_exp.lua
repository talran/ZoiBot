--[[Generic script for any element GW 2-turn EX+ kill
Front line: --]]
function checkhp()
	islow = 0
	if character_1.hp_percentage < 50 then 
		islow = 1; 
	elseif character_2.hp_percentage < 50 then 
		islow = 2;
	elseif character_3.hp_percentage < 50 then 
		islow = 3;
	elseif character_4.hp_percentage < 50 then 
		islow = 4;
	end 
	return islow;
end

EnableChargeAttack()
if turn == 1 then
	Summon(6)
	character_1:UseSkill(1)
	character_1:UseSkill(2)
	character_1:UseSkill(3)
	character_1:UseSkill(4)
	
	if characters["Rosetta"] ~= nil then
		characters["Rosetta"]:UseSkill(3)
		characters["Rosetta"]:UseSkill(2)
		characters["Rosetta"]:UseSkill(1)
	end
	
	if characters["De La Fille"] ~= nil then
		characters["De La Fille"]:WithWaitTime(3000):UseSkill(1)
		characters["De La Fille"]:UseSkill(2)
		characters["De La Fille"]:OnPartyMember(4):UseSkill(3)
	end
	
	if characters["Alexiel"] ~= nil then
		characters["Alexiel"]:UseSkill(3)
		characters["Alexiel"]:UseSkill(2)
		characters["Alexiel"]:UseSkill(1)
	end
	
	
	
end
if turn >= 2 then
	--[[Check HPP]]--
	lowchara = checkhp()
	if lowchara ~= 0 then
		UseGreenPotionOnPartyMember(lowchara)
		lowchara = checkhp()
	end
	--[[Mechanic Buff+Mist and ougi charge]]--
	if character_1.name == "!charnamehere!" then
		character_1:UseSkill(1)
		character_1:UseSkill(2)
		character_1:UseSkill(3)
		character_1:UseSkill(4)
	end
	
	if characters["Rosetta"] ~= nil then
		characters["Rosetta"]:UseSkill(3)
		characters["Rosetta"]:UseSkill(2)
		characters["Rosetta"]:UseSkill(1)
	end
	
	if characters["De La Fille"] ~= nil then
		characters["De La Fille"]:WithWaitTime(3000):UseSkill(1)
		characters["De La Fille"]:OnPartyMember(4):UseSkill(2)
		characters["De La Fille"]:UseSkill(3)
	end
	if characters["Alexiel"] ~= nil then
		characters["Alexiel"]:UseSkill(3)
		characters["Alexiel"]:UseSkill(2)
		characters["Alexiel"]:UseSkill(1)
	end
	
	Summon(6)
	Summon(5)
	Summon(1)
end

if (enemy_1.hp_percentage <= 50 or turn >= 3) and booleans["backup called"] == nil then
	booleans["backup called"] = true
	RequestBackup()
end