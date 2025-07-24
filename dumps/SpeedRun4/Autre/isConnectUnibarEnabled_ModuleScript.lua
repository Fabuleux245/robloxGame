-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:37
-- Luau version 6, Types version 3
-- Time taken: 0.001373 seconds

local CorePackages = game:GetService("CorePackages")
local GetFFlagEnableAppChatInExperience_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatExperimentation
local GetShouldShowPlatformChatBasedOnPolicy_upvr = require(script:FindFirstAncestor("Chrome").Flags.GetShouldShowPlatformChatBasedOnPolicy)
local isConnectDropdownEnabled_upvr = require(script.Parent.isConnectDropdownEnabled)
local GetFFlagAppChatAddConnectUnibarForActiveSquad_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad
local SquadExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation
return function() -- Line 17
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[2]: InExperienceAppChatExperimentation_upvr (readonly)
		[3]: GetShouldShowPlatformChatBasedOnPolicy_upvr (readonly)
		[4]: isConnectDropdownEnabled_upvr (readonly)
		[5]: GetFFlagAppChatAddConnectUnibarForActiveSquad_upvr (readonly)
		[6]: SquadExperimentation_upvr (readonly)
	]]
	local GetFFlagEnableAppChatInExperience_upvr_result1 = GetFFlagEnableAppChatInExperience_upvr()
	if GetFFlagEnableAppChatInExperience_upvr_result1 then
		GetFFlagEnableAppChatInExperience_upvr_result1 = InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatChromeUnibarEntryPoint
		if GetFFlagEnableAppChatInExperience_upvr_result1 then
			GetFFlagEnableAppChatInExperience_upvr_result1 = GetShouldShowPlatformChatBasedOnPolicy_upvr()
		end
	end
	local var14 = GetFFlagEnableAppChatInExperience_upvr_result1
	if not var14 then
		var14 = isConnectDropdownEnabled_upvr()
		if var14 then
			var14 = GetFFlagAppChatAddConnectUnibarForActiveSquad_upvr()
			if var14 then
				var14 = SquadExperimentation_upvr.getSquadEntrypointsEnabled()
			end
		end
	end
	return var14
end