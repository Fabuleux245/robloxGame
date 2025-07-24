-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:37
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
local GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled = require(script:FindFirstAncestor("SocialLibraries").Flags.GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled)
local var3 = "FilteredScrollingList"
local tbl = {}
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled() then
	var3 = 0
else
	var3 = nil
end
tbl.searchBoxCornerRadius = var3
tbl.searchBoxHeight = 48
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled() then
	-- KONSTANTWARNING: GOTO [64] #44
end
-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [63] 43. Error Block 43 start (CF ANALYSIS FAILED)
tbl.searchBoxTopPadding = nil
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled() then
	-- KONSTANTWARNING: GOTO [72] #51
end
-- KONSTANTERROR: [63] 43. Error Block 43 end (CF ANALYSIS FAILED)