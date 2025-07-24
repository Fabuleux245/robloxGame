-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:34
-- Luau version 6, Types version 3
-- Time taken: 0.001023 seconds

local Parent = script.Parent.Parent
local PlatformEnum_upvr = require(Parent.Enums.PlatformEnum)
local IsVRAppBuild_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).IsVRAppBuild
local FTUXConstants_upvr = require(Parent.Resources.FTUXConstants)
function IsFTUXExperience(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: PlatformEnum_upvr (readonly)
		[2]: IsVRAppBuild_upvr (readonly)
		[3]: FTUXConstants_upvr (readonly)
	]]
	if arg1 == PlatformEnum_upvr.QuestVR then
		local var3_result1 = IsVRAppBuild_upvr()
		if var3_result1 then
			if tostring(game.PlaceId) ~= FTUXConstants_upvr[PlatformEnum_upvr.QuestVR].ExperienceIds.PlaceId then
				var3_result1 = false
			else
				var3_result1 = true
			end
		end
		return var3_result1
	end
	return false
end
return IsFTUXExperience