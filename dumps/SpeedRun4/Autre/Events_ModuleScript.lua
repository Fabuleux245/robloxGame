-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:22
-- Luau version 6, Types version 3
-- Time taken: 0.001169 seconds

local Parent = script.Parent.Parent
local PlatformEnum = require(Parent.Enums.PlatformEnum)
local var3 = require(Parent.Resources.FTUXEventTypes)[PlatformEnum.QuestVR]
local module = {}
local tbl_2 = {}
local tbl = {}
local HapticFeedbackTwiceEvent = var3.HapticFeedbackTwiceEvent
tbl[1] = var3.MovementTooltipEvent
tbl[2] = var3.MoveToGoalEvent
tbl[3] = var3.SoundFeedbackEvent
tbl[4] = HapticFeedbackTwiceEvent
local tbl_3 = {}
if require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.FFlagVRBottomBarHighlightedLeaveGameIcon) then
	HapticFeedbackTwiceEvent = var3.LeaveGameIconHighlightEvent
else
	HapticFeedbackTwiceEvent = var3.SoundFeedbackEvent
end
tbl_3[1] = var3.SoundFeedbackEvent
tbl_3[2] = HapticFeedbackTwiceEvent
tbl_2[1] = {var3.PerspectiveTooltipEvent, var3.FirstPersonToggleEvent, var3.HapticFeedbackEvent}
tbl_2[2] = tbl
tbl_2[3] = {var3.HapticFeedbackEvent, var3.SoundFeedbackEvent}
tbl_2[4] = tbl_3
module[PlatformEnum.QuestVR] = tbl_2
return module