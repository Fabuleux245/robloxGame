-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:26
-- Luau version 6, Types version 3
-- Time taken: 0.001361 seconds

game:DefineFastInt("NewInGameMenuPercentRollout3", 0)
game:DefineFastString("NewInGameMenuForcedUserIds", "")
game:DefineFastFlag("NewInGameMenuDisabledInVR", false)
local VRService_upvr = game:GetService("VRService")
local isInExperienceUIVREnabled_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local Players_upvr = game:GetService("Players")
local IsExperienceMenuABTestEnabled_upvr = require(script.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager_upvr = require(script.Parent.ExperienceMenuABTestManager)
return function() -- Line 20
	--[[ Upvalues[5]:
		[1]: VRService_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[5]: ExperienceMenuABTestManager_upvr (readonly)
	]]
	local var10
	if var10 then
		var10 = isInExperienceUIVREnabled_upvr
		if var10 then
			var10 = false
			return var10
		end
		var10 = true
		return var10
	end
	var10 = Players_upvr.LocalPlayer
	while not var10 do
		Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
		var10 = Players_upvr.LocalPlayer
	end
	for i in game:GetFastString("NewInGameMenuForcedUserIds"):gmatch("%d+") do
		if tonumber(i) == var10.UserId then
			return true
		end
	end
	if IsExperienceMenuABTestEnabled_upvr() and ExperienceMenuABTestManager_upvr.default:isV3MenuEnabled() then
		return true
	end
	local UserId = var10.UserId
	if UserId % 100 >= game:GetFastInt("NewInGameMenuPercentRollout3") then
		UserId = false
	else
		UserId = true
	end
	if UserId then
		i = true
		return i
	end
	return false
end