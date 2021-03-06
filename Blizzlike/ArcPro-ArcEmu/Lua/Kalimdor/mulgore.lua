--[[ ArcPro Speculation License - 
This software is provided as free and open source by the
team of The ArcPro Speculation Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Author: ArcPro Speculation
~~End of License... Please Stand By...
-- ArcPro Speculation, January 19, 2011 - 2013. ]]

function VentureCoSupervisor_OnCombat(Unit, Event)
	Unit:RegisterEvent("VentureCoSupervisor_BattleShout", 10000, 2)
end

function VentureCoSupervisor_BattleShout(pUnit, Event) 
	pUnit:CastSpell(6673) 
end

function VentureCoSupervisor_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function VentureCoSupervisor_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2979, 1, "VentureCoSupervisor_OnCombat")
RegisterUnitEvent(2979, 2, "VentureCoSupervisor_OnLeaveCombat")
RegisterUnitEvent(2979, 4, "VentureCoSupervisor_OnDied")

function WirySwoop_OnCombat(Unit, Event)
	Unit:RegisterEvent("WirySwoop_Swoop", 6000, 0)
end

function WirySwoop_WirySwoop(pUnit, Event) 
	pUnit:CastSpell(5708) 
end

function WirySwoop_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function WirySwoop_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2969, 1, "WirySwoop_OnCombat")
RegisterUnitEvent(2969, 2, "WirySwoop_OnLeaveCombat")
RegisterUnitEvent(2969, 4, "WirySwoop_OnDied")

function Arrachea_OnCombat(Unit, Event)
	Unit:RegisterEvent("Arrachea_HeadButt", 10000, 0)
end

function Arrachea_HeadButt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function Arrachea_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Arrachea_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(3058, 1, "Arrachea_OnCombat")
RegisterUnitEvent(3058, 2, "Arrachea_OnLeaveCombat")
RegisterUnitEvent(3058, 4, "Arrachea_OnDied")

function BaelApp_OnCombat(Unit, Event)
	--Unit:SendChatMessage(12, 0, "Gor eft mitta ta gor-skalf")
	if(Unit:GetHealthPct() < 15) then
		Unit:FullCastSpell(2052)
	end
end

function BaelApp_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

function BaelApp_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2990, 1, "BaelApp_OnCombat")
RegisterUnitEvent(2990, 2, "BaelApp_OnLeaveCombat")
RegisterUnitEvent(2990, 4, "BaelApp_OnDead")

function Mazzranache_OnCombat(Unit, Event)
	Unit:RegisterEvent("Mazzranache_DeadlyPoison", 10000, 0)
	Unit:RegisterEvent("Mazzranache_RushingCharge", 8000, 0)
end

function Mazzranache_DeadlyPoison(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(3538, pUnit:GetMainTank()) 
end

function Mazzranache_RushingCharge(pUnit, Event) 
	pUnit:CastSpell(6268) 
end

function Mazzranache_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Mazzranache_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(3068, 1, "Mazzranache_OnCombat")
RegisterUnitEvent(3068, 2, "Mazzranache_OnLeaveCombat")
RegisterUnitEvent(3068, 4, "Mazzranache_OnDied")

function SisterHatelash_OnCombat(Unit, Event)
	Unit:RegisterEvent("SisterHatelash_LightningBarrier", 1000, 1)
	Unit:RegisterEvent("SisterHatelash_LightningBolt", 8000, 0)
end

function SisterHatelash_LightningBarrier(pUnit, Event) 
	pUnit:CastSpell(6960) 
end

function SisterHatelash_LightningBolt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function SisterHatelash_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function SisterHatelash_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(5785, 1, "SisterHatelash_OnCombat")
RegisterUnitEvent(5785, 2, "SisterHatelash_OnLeaveCombat")
RegisterUnitEvent(5785, 4, "SisterHatelash_OnDied")

function Snagglespear_OnCombat(Unit, Event)
	Unit:RegisterEvent("Snagglespear_Net", 10000, 0)
end

function Snagglespear_Net(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(12024, pUnit:GetClosestPlayer()) 
end

function Snagglespear_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Snagglespear_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(5786, 1, "Snagglespear_OnCombat")
RegisterUnitEvent(5786, 2, "Snagglespear_OnLeaveCombat")
RegisterUnitEvent(5786, 4, "Snagglespear_OnDied")

function Swoop_OnCombat(Unit, Event)
	Unit:RegisterEvent("Swoop_Swoop", 6000, 0)
end

function Swoop_Swoop(pUnit, Event) 
	pUnit:CastSpell(5708) 
end

function Swoop_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Swoop_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2970, 1, "Swoop_OnCombat")
RegisterUnitEvent(2970, 2, "Swoop_OnLeaveCombat")
RegisterUnitEvent(2970, 4, "Swoop_OnDied")

function TheRake_OnCombat(Unit, Event)
	Unit:RegisterEvent("TheRake_MuscleTear", 8000, 0)
end

function TheRake_MuscleTear(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(12166, pUnit:GetClosestPlayer()) 
end

function TheRake_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function TheRake_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(5807, 1, "TheRake_OnCombat")
RegisterUnitEvent(5807, 2, "TheRake_OnLeaveCombat")
RegisterUnitEvent(5807, 4, "TheRake_OnDied")

--Bristleback Battleboar
function BristlebackBattleboar_OnCombat(Unit, Event)
	Unit:RegisterEvent("BristlebackBattleboar_BoarCharge", 8000, 0)
end

function BristlebackBattleboar_BoarCharge(pUnit, Event) 
	pUnit:CastSpell(3385) 
end

function BristlebackBattleboar_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function BristlebackBattleboar_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2954, 1, "BristlebackBattleboar_OnCombat")
RegisterUnitEvent(2954, 2, "BristlebackBattleboar_OnLeaveCombat")
RegisterUnitEvent(2954, 4, "BristlebackBattleboar_OnDied")

--Bristleback Interloper
function BristlebackInterloper_OnCombat(Unit, Event)
	Unit:RegisterEvent("BristlebackInterloper_MuscleTear", 10000, 0)
end

function BristlebackInterloper_MuscleTear(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function BristlebackInterloper_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function BristlebackInterloper_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(3232, 1, "BristlebackInterloper_OnCombat")
RegisterUnitEvent(3232, 2, "BristlebackInterloper_OnLeaveCombat")
RegisterUnitEvent(3232, 4, "BristlebackInterloper_OnDied")

--Bristleback Shaman
function BristlebackShaman_OnCombat(Unit, Event)
	Unit:RegisterEvent("BristlebackShaman_LightningBolt", 5000, 0)
end

function BristlebackShaman_LightningBolt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function BristlebackShaman_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function BristlebackShaman_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2953, 1, "BristlebackShaman_OnCombat")
RegisterUnitEvent(2953, 2, "BristlebackShaman_OnLeaveCombat")
RegisterUnitEvent(2953, 4, "BristlebackShaman_OnDied")

--Galak Outrunner
function GalakOutrunner_OnCombat(Unit, Event)
	Unit:RegisterEvent("GalakOutrunner_Shot", 6000, 0)
end

function GalakOutrunner_Shot(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakOutrunner_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function GalakOutrunner_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2968, 1, "GalakOutrunner_OnCombat")
RegisterUnitEvent(2968, 2, "GalakOutrunner_OnLeaveCombat")
RegisterUnitEvent(2968, 4, "GalakOutrunner_OnDied")

--
function ElderPlainstrider_OnCombat(Unit, Event)
	Unit:RegisterEvent("ElderPlainstrider_DustCloud", 20000, 0)
end

function ElderPlainstrider_DustCloud(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(7272, pUnit:GetClosestPlayer()) 
end

function ElderPlainstrider_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function ElderPlainstrider_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2957, 1, "ElderPlainstrider_OnCombat")
RegisterUnitEvent(2957, 2, "ElderPlainstrider_OnLeaveCombat")
RegisterUnitEvent(2957, 4, "ElderPlainstrider_OnDied")

--
function KodoBull_OnCombat(Unit, Event)
	Unit:RegisterEvent("KodoBull_Tramble", 6000, 0)
end

function KodoBull_Tramble(pUnit, Event) 
	pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoBull_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function KodoBull_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2973, 1, "KodoBull_OnCombat")
RegisterUnitEvent(2973, 2, "KodoBull_OnLeaveCombat")
RegisterUnitEvent(2973, 4, "KodoBull_OnDied")

--
function KodoCalf_OnCombat(Unit, Event)
	Unit:RegisterEvent("KodoCalf_RushingCharge", 10000, 0)
end

function KodoCalf_RushingCharge(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(6268, pUnit:GetMainTank()) 
end

function KodoCalf_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function KodoCalf_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2972, 1, "KodoCalf_OnCombat")
RegisterUnitEvent(2972, 2, "KodoCalf_OnLeaveCombat")
RegisterUnitEvent(2972, 4, "KodoCalf_OnDied")

--
function KodoMatriarch_OnCombat(Unit, Event)
	Unit:RegisterEvent("KodoMatriarch_Tramble", 6000, 0)
end

function KodoMatriarch_Tramble(pUnit, Event) 
	pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoMatriarch_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function KodoMatriarch_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2974, 1, "KodoMatriarch_OnCombat")
RegisterUnitEvent(2974, 2, "KodoMatriarch_OnLeaveCombat")
RegisterUnitEvent(2974, 4, "KodoMatriarch_OnDied")

--Palemane Poacher
function PalemanePoacher_OnCombat(Unit, Event)
	Unit:RegisterEvent("PalemanePoacher_QuickShot", 10000, 0)
	Unit:RegisterEvent("PalemanePoacher_Shoot", 6000, 0)
end

function PalemanePoacher_QuickShot(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(1516, pUnit:GetMainTank()) 
end

function PalemanePoacher_Shoot(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function PalemanePoacher_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function PalemanePoacher_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2951, 1, "PalemanePoacher_OnCombat")
RegisterUnitEvent(2951, 2, "PalemanePoacher_OnLeaveCombat")
RegisterUnitEvent(2951, 4, "PalemanePoacher_OnDied")

--Palemane Skinner
function PalemaneSkinner_OnCombat(pUnit, Event)
local sayflip = math.random(1, 2)
	if(sayflip == 1) then
		pUnit:SendChatMessage(12, 0, "Grr... fresh meat!")
	elseif(sayflip == 2) then
		pUnit:SendChatMessage(12, 0, "More bones to gnaw on...")
	end
	pUnit:RegisterEvent("PalemaneSkinner_Spell", 8000, 1)
end

function PalemaneSkinner_Spell(pUnit, Event)
	pUnit:FullCastSpell(774)
end

function PalemaneSkinner_LeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2950, 1, "PalemaneSkinner_OnCombat")
RegisterUnitEvent(2950, 2, "PalemaneSkinner_LeaveCombat")

--Palemane Tanner
function PalemaneTanner_OnCombat(pUnit, Event)
local sayflip = math.random(1, 2)
	if(sayflip == 1) then
		pUnit:SendChatMessage(12, 0, "Grr... fresh meat!")
	elseif(sayflip == 2) then
		pUnit:SendChatMessage(12, 0, "More bones to gnaw on...")
	end
	pUnit:RegisterEvent("PalemaneTanner_Wrath", 3500, 0)
end

function PalemaneTanner_Wrath(pUnit, Event)
	pUnit:FullCastSpellOnTarget(9739, pUnit:GetClosestPlayer())
end

function PalemaneTanner_LeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2949, 1, "PalemaneTanner_OnCombat")
RegisterUnitEvent(2949, 2, "PalemaneTanner_LeaveCombat")

--Prairie Wolf Alfa, Prairie Wolf
function Wolves_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Wolves_Bite", 5000, 0)
	pUnit:RegisterEvent("Wolves_Howl", 9000, 1)
end

function Wolves_Bite(pUnit, Event)
	pUnit:FullCastSpellOnTarget(17255, pUnit:GetClosestPlayer())
end

function Wolves_Howl(pUnit, Event)
	pUnit:FullCastSpellOnTarget(5781, pUnit:GetClosestPlayer())
end

function Wolves_LeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2959, 1, "Wolves_OnCombat")
RegisterUnitEvent(2959, 2, "Wolves_LeaveCombat")
RegisterUnitEvent(2958, 1, "Wolves_OnCombat")
RegisterUnitEvent(2958, 2, "Wolves_LeaveCombat")
RegisterUnitEvent(2960, 1, "Wolves_OnCombat")
RegisterUnitEvent(2960, 2, "Wolves_LeaveCombat")

--
function SeerGraytongue_OnCombat(Unit, Event)
	Unit:RegisterEvent("SeerGraytongue_MarkoftheWild", 1000, 1)
end

function SeerGraytongue_MarkoftheWild(pUnit, Event) 
	pUnit:CastSpell(1126) 
end

function SeerGraytongue_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function SeerGraytongue_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2982, 1, "SeerGraytongue_OnCombat")
RegisterUnitEvent(2982, 2, "SeerGraytongue_OnLeaveCombat")
RegisterUnitEvent(2982, 4, "SeerGraytongue_OnDied")

--
function SeerRavenfeather_OnCombat(Unit, Event)
	Unit:RegisterEvent("SeerRavenfeather_RockSkin", 10000, 0)
end

function SeerRavenfeather_RockSkin(pUnit, Event) 
	pUnit:CastSpell(8314) 
end

function SeerRavenfeather_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function SeerRavenfeather_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(5888, 1, "SeerRavenfeather_OnCombat")
RegisterUnitEvent(5888, 2, "SeerRavenfeather_OnLeaveCombat")
RegisterUnitEvent(5888, 4, "SeerRavenfeather_OnDied")

--
function SeerWiserunner_OnCombat(Unit, Event)
	Unit:RegisterEvent("SeerWiserunner_MarkoftheWild", 1000, 1)
end

function SeerWiserunner_MarkoftheWild(pUnit, Event) 
pUnit:CastSpell(1126) 
end

function SeerWiserunner_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function SeerWiserunner_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2984, 1, "SeerWiserunner_OnCombat")
RegisterUnitEvent(2984, 2, "SeerWiserunner_OnLeaveCombat")
RegisterUnitEvent(2984, 4, "SeerWiserunner_OnDied")

--
function TalonedSwoop_OnCombat(Unit, Event)
	Unit:RegisterEvent("TalonedSwoop_Swoop", 6000, 0)
end

function TalonedSwoop_TalonedSwoop(pUnit, Event) 
	pUnit:CastSpell(5708) 
end

function TalonedSwoop_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function TalonedSwoop_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2971, 1, "TalonedSwoop_OnCombat")
RegisterUnitEvent(2971, 2, "TalonedSwoop_OnLeaveCombat")
RegisterUnitEvent(2971, 4, "TalonedSwoop_OnDied")

--Windfury Matriach
function WindfuryMatriarch_OnCombat(Unit, Event)
	Unit:RegisterEvent("WindfuryMatriarch_LightningBolt", 8000, 0)
	Unit:RegisterEvent("WindfuryMatriarch_HealingWave", 15000, 0)
end

function WindfuryMatriarch_LightningBolt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function WindfuryMatriarch_HealingWave(pUnit, Event) 
	pUnit:CastSpell(332) 
end

function WindfuryMatriarch_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function WindfuryMatriarch_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2965, 1, "WindfuryMatriarch_OnCombat")
RegisterUnitEvent(2965, 2, "WindfuryMatriarch_OnLeaveCombat")
RegisterUnitEvent(2965, 4, "WindfuryMatriarch_OnDied")

--Windfury Sorceress
function WindfurySorceress_OnCombat(Unit, Event)
	Unit:RegisterEvent("WindfurySorceress_Frostbolt", 8000, 0)
end

function WindfurySorceress_Frostbolt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(13322, pUnit:GetMainTank()) 
end

function WindfurySorceress_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function WindfurySorceress_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2964, 1, "WindfurySorceress_OnCombat")
RegisterUnitEvent(2964, 2, "WindfurySorceress_OnLeaveCombat")
RegisterUnitEvent(2964, 4, "WindfurySorceress_OnDied")

--Windfury Wind Witch
function WindWitch_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("WindWitch_Wave", 12000, 1)
	pUnit:RegisterEvent("Matr_Bolt", 3000, 0)
end

function WindWitch_Wave(pUnit, Event)
	pUnit:FullCastSpell(6982)
end

function WindWitch_Bolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer())
end

function WindWitch_LeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2963, 1, "WindWitch_OnCombat")
RegisterUnitEvent(2963, 2, "WindWitch_LeaveCombat")