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
	if character_1.charge_gauge ~= 100 then
		character_1:UseSkill(1)
		character_1:UseSkill(2)
	end
	character_1:UseSkill(3)
	character_1:UseSkill(4)
	
	if characters["Yuel"] ~= nil then
		characters["Yuel"]:UseSkill(3)
		characters["Yuel"]:UseSkill(2)
		characters["Yuel"]:UseSkill(1)
	end
	
	if characters["Grea"] ~= nil then
		characters["Grea"]:OnPartyMember(4):UseSkill(2)
		characters["Grea"]:UseSkill(2)
		characters["Grea"]:WithWaitTime(3000):UseSkill(1)
	end
	
	if characters["Lancalot"] ~= nil then
		characters["Lancalot"]:UseSkill(3)
		characters["Lancalot"]:UseSkill(2)
		characters["Lancalot"]:UseSkill(1)
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
	if character_1.charge_gauge ~= 100 then
		character_1:UseSkill(1)
		character_1:UseSkill(2)
	end
	character_1:UseSkill(3)
	character_1:UseSkill(4)
	end
	
	if characters["Yuel"] ~= nil then
		characters["Yuel"]:UseSkill(3)
		characters["Yuel"]:UseSkill(2)
		characters["Yuel"]:UseSkill(1)
	end
	
	if characters["Grea"] ~= nil then
		characters["Grea"]:WithWaitTime(3000):UseSkill(1)
		characters["Grea"]:OnPartyMember(4):UseSkill(2)
		characters["Grea"]:UseSkill(3)
	end
	if characters["Lancalot"] ~= nil then
		characters["Lancalot"]:UseSkill(3)
		characters["Lancalot"]:UseSkill(2)
		characters["Lancalot"]:UseSkill(1)
	end
	
	Summon(6)
	Summon(5)
	Summon(1)
end

if (enemy_1.hp_percentage <= 50 or turn >= 3) and booleans["backup called"] == nil then
	booleans["backup called"] = true
	RequestBackup()
end