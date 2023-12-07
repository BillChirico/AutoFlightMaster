--------------------------------------
-- Canel Auras & Dismount at Flight Master --
--------------------
-- Author: Bapes
--------------------------------------

--- Event frame for opening and closing the taxi map.
CreateFrame("Frame", "TaxiOpenEventFrame", UIParent)
TaxiOpenEventFrame:RegisterEvent("TAXIMAP_OPENED")
TaxiOpenEventFrame:SetScript("OnEvent", function(self, event, ...)

	if ( event == "TAXIMAP_OPENED" ) then
		CancelSpellByName('Metamorphosis')

		if ( IsMounted() ) then
			Dismount();
		end
	end
end)