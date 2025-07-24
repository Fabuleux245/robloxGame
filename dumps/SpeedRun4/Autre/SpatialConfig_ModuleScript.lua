-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:22
-- Luau version 6, Types version 3
-- Time taken: 0.001090 seconds

-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("RobloxAppInteractionFeedbackConfig").Parent
local GetFFlagUseNewHapticServiceInUA = require(Parent.SharedFlags).GetFFlagUseNewHapticServiceInUA
local Sounds = require(Parent.SoundManager).Sounds
local module = {}
local tbl_4 = {
	Press = {
		Sound = Sounds.AppSelect.Name;
		Haptic = Enum.HapticEffectType.UIClick;
	};
}
local tbl_2 = {}
local Name = Sounds.AppHover1.Name
tbl_2.Sound = Name
if GetFFlagUseNewHapticServiceInUA() then
	Name = Enum.HapticEffectType.UIHover
else
	Name = Enum.HapticEffectType.UIClick
end
tbl_2.Haptic = Name
tbl_4.Hover = tbl_2
module.Default = tbl_4
local tbl_8 = {}
local tbl_7 = {}
Name = Sounds.NotificationHigh.Name
tbl_7.Sound = Name
Name = Enum.HapticEffectType.UIClick
tbl_7.Haptic = Name
tbl_8.Press = tbl_7
local tbl = {}
Name = Sounds.AppHover1.Name
tbl.Sound = Name
if GetFFlagUseNewHapticServiceInUA() then
	Name = Enum.HapticEffectType.UIHover
	-- KONSTANTWARNING: GOTO [93] #58
end
-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [91] 57. Error Block 22 start (CF ANALYSIS FAILED)
Name = Enum.HapticEffectType.UIClick
tbl.Haptic = Name
tbl_8.Hover = tbl
module.PlayExperienceButton = tbl_8
local tbl_6 = {}
local tbl_3 = {}
Name = Sounds.Purchase.Name
tbl_3.Sound = Name
Name = Enum.HapticEffectType.UIClick
tbl_3.Haptic = Name
tbl_6.Press = tbl_3
local tbl_5 = {}
Name = Sounds.AppHover1.Name
tbl_5.Sound = Name
if GetFFlagUseNewHapticServiceInUA() then
	Name = Enum.HapticEffectType.UIHover
else
	Name = Enum.HapticEffectType.UIClick
end
tbl_5.Haptic = Name
tbl_6.Hover = tbl_5
module.MakePurchase = tbl_6
do
	return module
end
-- KONSTANTERROR: [91] 57. Error Block 22 end (CF ANALYSIS FAILED)