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
	
	if characters["Shiva"] ~= nil then
		characters["Shiva"]:UseSkill(3)
		characters["Shiva"]:UseSkill(2)
		characters["Shiva"]:UseSkill(1)
	end
	
	if characters["Danua"] ~= nil then
		characters["Danua"]:WithWaitTime(3000):UseSkill(1)
		characters["Danua"]:UseSkill(2)
		characters["Danua"]:WithWaitTime(3000):UseSkill(3)
		characters["Danua"]:UseSkill(2)
	end
	
	if characters["Zeta"] ~= nil then
		characters["Zeta"]:UseSkill(1)
		characters["Zeta"]:UseSkill(2)
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
		if character_1.skill_2_available and character_1.charge_gauge ~= 100 then
			character_1:UseSkill(1)
			character_1:UseSkill(2)
		end
		
		character_1:UseSkill(3)
		character_1:UseSkill(4)
	end
	
	if characters["Shiva"] ~= nil then
		characters["Shiva"]:UseSkill(3)
		characters["Shiva"]:UseSkill(2)
		characters["Shiva"]:UseSkill(1)
	end
	
	if characters["Danua"] ~= nil then
		characters["Danua"]:WithWaitTime(3000):UseSkill(1)
		characters["Danua"]:UseSkill(2)
		characters["Danua"]:WithWaitTime(3000):UseSkill(3)
		characters["Danua"]:UseSkill(2)
	end
	if characters["Zeta"] ~= nil then
		characters["Zeta"]:UseSkill(3)
		characters["Zeta"]:UseSkill(2)
	end
	
	
	Summon(6)
	Summon(5)
	Summon(1)
end
