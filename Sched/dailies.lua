-- Daily summons = 810 ap
-- Hard+ 45 x 6 = 270 ap
SetLuaScript("../scripts/hard_rsr.lua")
SetPreferredSummons("Kaguya,Lucifer")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305011/1", 45, 1)--h+ tia
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305021/1", 45, 1)--h+ colo
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305031/1", 45, 1)--h+ levi
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305041/1", 45, 1)--h+ yag
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305051/1", 45, 1)--h+ chev
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/305061/1", 45, 1)--h+ celes
-- Magnas 90 x 6 = 540 ap
SetLuaScript("../scripts/zoi_magna.lua")
SetPreferredSummons("Bahamut")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300051/1/0/18", 30, 3) --magna tia   
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300101/1/0/19", 30, 3) --magna colo  
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300161/1/0/20", 30, 3) --magna levi  
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300261/1/0/21", 30, 3) --magna yag 
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300271/1/0/26", 30, 3) --magna chev  
SetLuaScript("../scripts/light_magna.lua")
SetPreferredSummons("Lucifer")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/300281/1/0/31", 30, 3) --magna celes 

SetLuaScript("../scripts/wind_ex.lua")
SetPreferredSummons("Kaguya,White Rabbit,Grimnir,Tiamat Omega_2")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/102961/3", 50, 2) --Miscongeniality
SetLuaScript("../scripts/light_ex.lua")
SetPreferredSummons("Kaguya,Lucifer")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/102441/3", 50, 2) --Stength and Chivalry
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/102491/3", 50, 2) --Playing Cat and Mouse
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/102291/3", 80, 2) --Here Today, Gone Golonzo
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/101521/3", 80, 2) --Antiquarian Troubles
SetLuaScript("../scripts/just_attack.lua")
SetPreferredSummons("Kaguya,White Rabbit")
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/100631/3", 21, 5) --For Whom the Bell Tolls
RepeatQuest("http://game.granbluefantasy.jp/#quest/supporter/100221/3", 14, 5) --Special Op's Request

