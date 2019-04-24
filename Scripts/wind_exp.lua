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
	
	if characters["Jeanne d'Arc"] ~= nil then
		characters["Jeanne d'Arc"]:UseSkill(1)
		characters["Jeanne d'Arc"]:OnPartyMember(3):UseSkill(2)
		characters["Jeanne d'Arc"]:UseSkill(3)
	end
	
	if characters["Yuisis"] ~= nil then
		characters["Yuisis"]:UseSkill(1)
		characters["Yuisis"]:UseSkill(2)
	end
	
	if characters["Yuel"] ~= nil and characters["Monika"] ~= nil then
		characters["Yuel"]:UseSkill(1)
		characters["Yuel"]:UseSkill(2)
		characters["Monika"]:UseSkill(1)
		characters["Monika"]:UseSkill(2)
		characters["Monika"]:UseSkill(3)
	end
	
end
if turn >= 2 then
	--[[Check HPP]]--
	lowchara = checkhp()
	if characters["Yuel"] ~= nil and lowchara ~= 0 then 
		--[[Use Yuel's heal--]] 
		characters["Yuel"]:WithWaitTime(3000):UseSkill(3)
		lowchara = checkhp()
	end 
	if lowchara ~= 0 then
		UseGreenPotionOnPartyMember(lowchara)
		lowchara = checkhp()
	end
	if lowchara ~= 0 then
		UseSupportPotion()
		lowchara = checkhp()
	end
	if lowchara ~= 0 then
		UseBluePotion()
		lowchara = checkhp()
	end
  
	
	if characters["Jeanne d'Arc"] ~= nil then
		characters["Jeanne d'Arc"]:UseSkill(1)
		characters["Jeanne d'Arc"]:OnPartyMember(3):UseSkill(2)
		characters["Jeanne d'Arc"]:UseSkill(3)
	end
	if characters["Yuisis"] ~= nil then
		characters["Yuisis"]:UseSkill(3)
		if characters["Yuisis"].charge_gauge >= 100 then
			characters["Yuisis"]:UseSkill(2)
		end
	end
	if characters["Yuel"] ~= nil and characters["Yuel"].charge_gauge >= 30 then
		characters["Yuel"]:UseSkill(1)
		characters["Yuel"]:UseSkill(2)
	end
	if characters["Monika"] ~= nil then
		characters["Monika"]:UseSkill(1)
		characters["Monika"]:UseSkill(2)
		characters["Monika"]:UseSkill(3)
	end
	

	--[[Mechanic Buff+Mist and ougi charge]]--
	if character_1.name == "!charnamehere!" then
		if character_1.skill_2_available and character_1.charge_gauge ~= 100 then
			character_1:UseSkill(1)
			character_1:UseSkill(2)
		end
		
		character_1:UseSkill(3)
		character_1:UseSkill(4)
	end
	Summon(6)
end

if (enemy_1.hp_percentage <= 50 or turn >= 6) and booleans["backup called"] == nil then
	booleans["backup called"] = true
	RequestBackup()
end