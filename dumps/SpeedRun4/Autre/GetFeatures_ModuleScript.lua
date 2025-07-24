-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:30
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

local Parent = script.Parent.Parent
local PlatformEnum_upvr = require(Parent.Enums.PlatformEnum)
local EnableSafetyBubbleDummy_upvr = require(Parent.Features.EnableSafetyBubbleDummy)
function GetFeatures(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: PlatformEnum_upvr (readonly)
		[2]: EnableSafetyBubbleDummy_upvr (readonly)
	]]
	if arg1 == PlatformEnum_upvr.QuestVR then
		EnableSafetyBubbleDummy_upvr()
	end
end
return GetFeatures