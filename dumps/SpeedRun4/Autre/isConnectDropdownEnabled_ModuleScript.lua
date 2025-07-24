-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:37
-- Luau version 6, Types version 3
-- Time taken: 0.000723 seconds

local CorePackages = game:GetService("CorePackages")
local GetFFlagEnableAppChatInExperience_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatExperimentation
local GetShouldShowPlatformChatBasedOnPolicy_upvr = require(script:FindFirstAncestor("Chrome").Flags.GetShouldShowPlatformChatBasedOnPolicy)
return function() -- Line 12
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[2]: InExperienceAppChatExperimentation_upvr (readonly)
		[3]: GetShouldShowPlatformChatBasedOnPolicy_upvr (readonly)
	]]
	local GetFFlagEnableAppChatInExperience_upvr_result1 = GetFFlagEnableAppChatInExperience_upvr()
	if GetFFlagEnableAppChatInExperience_upvr_result1 then
		GetFFlagEnableAppChatInExperience_upvr_result1 = InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatChromeDropdownEntryPoint
		if GetFFlagEnableAppChatInExperience_upvr_result1 then
			GetFFlagEnableAppChatInExperience_upvr_result1 = GetShouldShowPlatformChatBasedOnPolicy_upvr()
		end
	end
	return GetFFlagEnableAppChatInExperience_upvr_result1
end