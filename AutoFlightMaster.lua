---------------------------------------------
-- Canel Auras & Dismount at Flight Master --
---------------------------------------------
-- Author: Bapes
---------------------------------------------

local spell = Spell:CreateFromSpellID(403789)
local spellName

-- -- Get Metamorphosis spell name
spell:ContinueOnSpellLoad(function()
    spellName = spell:GetSpellName()
end)

CreateFrame("Frame", "TaxiOpenEventFrame", UIParent)
TaxiOpenEventFrame:RegisterEvent("TAXIMAP_OPENED")
TaxiOpenEventFrame:RegisterEvent("ADDON_LOADED")
TaxiOpenEventFrame:SetScript("OnEvent", function(self, event, ...)

	if (event == "ADDON_LOADED") then
		local addonName = ...
		if (addonName == "AutoFlightMaster") then
			print("|cff00CCFF AutoFlightMaster loaded by Bapes! If you have any questions, comments, or suggestions, please don't hesitate to connect with me on Discord (Bapes) or CurseForge. Enjoy your journey with AutoFlightMaster! |r")
		end
	end

	if ( event == "TAXIMAP_OPENED" ) then
		CancelSpellByName(spellName)

		if ( IsMounted() ) then
			Dismount();
		end
	end
end)
