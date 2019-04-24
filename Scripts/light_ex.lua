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
	character_2:UseSkill(1)
	character_2:UseSkill(3)
	character_3:UseSkill(1)
	character_3:UseSkill(2)
	character_3:UseSkill(3)
	character_4:UseSkill(1)
	character_4:UseSkill(2)
	character_4:UseSkill(3)
	
end
if turn >= 2 then
	--[[Check HPP]]--
	lowchara = checkhp()
	if character_1:HasStatusEffect("1033") ~= true then
		if lowchara ~= 0 then
			UseGreenPotionOnPartyMember(lowchara)
			lowchara = checkhp()
		end
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
	if character_1.name ~= "!charnamehere!" then
		character_1:UseSkill(1)
		character_1:UseSkill(2)
		character_1:UseSkill(3)
		character_1:UseSkill(4)
	end
	
	character_2:UseSkill(1)
	character_2:UseSkill(3)
	if character_2:HasStatusEffect("6009") ~= true and character_1.name == "Lucio" then
		character_2:UseSkill(2)
	end
	if  character_1.name ~= "Lucio" then
		character_2:UseSkill(2)
	end	
	
	character_3:UseSkill(1)
	character_3:UseSkill(2)
	character_3:UseSkill(3)
	
	character_4:UseSkill(1)
	character_4:UseSkill(2)
	character_4:UseSkill(3)
	
	Summon(6)
	Summon(5)
	Summon(3)
end
