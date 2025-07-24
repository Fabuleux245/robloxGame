-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:30
-- Luau version 6, Types version 3
-- Time taken: 0.002413 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local Foundation_upvr = dependencies.Foundation
local SquadsCore = dependencies.SquadsCore
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local var7_upvw
if GetFFlagEnableCrossExpVoice_upvr() then
	var7_upvw = require(Parent.CrossExperienceVoice).Hooks.useLastActiveParticipant
end
local React_upvr = dependencies.React
local SquadCoordinationUIChangesExperimentation_upvr = dependencies.SocialExperiments.SquadCoordinationUIChangesExperimentation
local FFlagIntroduceTopBannerPartyStates_upvr = require(Squads.Flags.FFlagIntroduceTopBannerPartyStates)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local FFlagIntroduceNameToOneToOneWaitingState_upvr = require(Squads.Flags.FFlagIntroduceNameToOneToOneWaitingState)
local Constants_upvr = SquadsCore.Common.Constants
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local UserProfiles_upvr = require(Parent.UserProfiles)
local useLocalization_upvr = dependencies.Hooks.useLocalization
local Cryo_upvr = require(Parent.Cryo)
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local FFlagBuilderIconsMigrationSquads_upvr = require(Squads.Flags.FFlagBuilderIconsMigrationSquads)
local View_upvr = Foundation_upvr.View
local HorizontalFacepileGroup_upvr = require(Squads.Common.HorizontalFacepileGroup)
function SquadTopBanner(arg1) -- Line 55
	--[[ Upvalues[20]:
		[1]: React_upvr (readonly)
		[2]: SquadCoordinationUIChangesExperimentation_upvr (readonly)
		[3]: FFlagIntroduceTopBannerPartyStates_upvr (readonly)
		[4]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[5]: var7_upvw (read and write)
		[6]: useTokens_upvr (readonly)
		[7]: useCurrentSquadParentChannelId_upvr (readonly)
		[8]: SquadExternalContractContext_upvr (readonly)
		[9]: useLocalUserId_upvr (readonly)
		[10]: FFlagIntroduceNameToOneToOneWaitingState_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: dependencyArray_upvr (readonly)
		[13]: UserProfiles_upvr (readonly)
		[14]: useLocalization_upvr (readonly)
		[15]: Cryo_upvr (readonly)
		[16]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[17]: Foundation_upvr (readonly)
		[18]: FFlagBuilderIconsMigrationSquads_upvr (readonly)
		[19]: View_upvr (readonly)
		[20]: HorizontalFacepileGroup_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 98 start (CF ANALYSIS FAILED)
	React_upvr.useEffect(function() -- Line 56
		--[[ Upvalues[1]:
			[1]: SquadCoordinationUIChangesExperimentation_upvr (copied, readonly)
		]]
		if SquadCoordinationUIChangesExperimentation_upvr.isLogExposureEnabled then
			SquadCoordinationUIChangesExperimentation_upvr.logExposure()
		end
	end, {})
	local var26
	if FFlagIntroduceTopBannerPartyStates_upvr and GetFFlagEnableCrossExpVoice_upvr() then
		var26 = var7_upvw()
	else
		var26 = nil
	end
	if not var26 or not var26.userId then
	end
	if FFlagIntroduceTopBannerPartyStates_upvr then
		-- KONSTANTWARNING: GOTO [30] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 98 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 26. Error Block 86 start (CF ANALYSIS FAILED)
	if FFlagIntroduceTopBannerPartyStates_upvr then
		local _
	else
	end
	if FFlagIntroduceTopBannerPartyStates_upvr then
	else
	end
	-- KONSTANTERROR: [28] 26. Error Block 86 end (CF ANALYSIS FAILED)
end
return SquadTopBanner