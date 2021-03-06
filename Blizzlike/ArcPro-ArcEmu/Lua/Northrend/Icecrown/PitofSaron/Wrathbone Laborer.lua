--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Wrathbonelaborer_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Wrathbonelaborer_Blindingdirt", 15000, 0)
	pUnit:RegisterEvent("Wrathbonelaborer_Shovel", 25000, 0)
end

function Wrathbonelaborer_Blindingdirt(pUnit, Event)
	pUnit:CastSpellOnTarget(70302, pUnit:GetRandomPlayer(0))
end

function Wrathbonelaborer_Shovel(pUnit, Event)
	pUnit:CastSpellOnTarget(70280, pUnit:GetRandomPlayer(1))
end

function Wrathbonelaborer_OnDeath(pUnit, Event)
	pUnit:RemoveEvents()
end

function Wrathbonelaborer_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(36830, 1, "Wrathbonelaborer_OnCombat")
RegisterUnitEvent(36830, 2, "Wrathbonelaborer_OnLeaveCombat")
RegisterUnitEvent(36830, 4, "Wrathbonelaborer_OnDeath")