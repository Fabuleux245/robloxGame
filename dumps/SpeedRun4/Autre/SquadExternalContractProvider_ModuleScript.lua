-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:56
-- Luau version 6, Types version 3
-- Time taken: 0.002367 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local SharedFlags = require(Parent.SharedFlags)
local React_upvr = require(Parent.React)
local SquadViewFlags_upvr = require(script.Parent.SquadViewFlags)
local FFlagEnableSquadTopBannerWideMode_upvr = SharedFlags.FFlagEnableSquadTopBannerWideMode
local Analytics_upvr = require(SquadsCore.Analytics)
local useCurrentSquadId_upvr = require(SquadsCore.Hooks).useCurrentSquadId
local Cryo_upvr = require(Parent.Cryo)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SquadExternalContractContext_upvr = require(script.Parent.SquadExternalContractContext)
local FFlagEnableSquadCoplayAnalytic_upvr = SharedFlags.FFlagEnableSquadCoplayAnalytic
return function(arg1) -- Line 30
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: SquadViewFlags_upvr (readonly)
		[3]: FFlagEnableSquadTopBannerWideMode_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: useCurrentSquadId_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: SquadExternalContractContext_upvr (readonly)
		[9]: FFlagEnableSquadCoplayAnalytic_upvr (readonly)
	]]
	local var14 = SquadViewFlags_upvr
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(var14.None)
	if FFlagEnableSquadTopBannerWideMode_upvr then
		var14 = arg1.contract.useSquadTopBannerManager()
	else
		var14 = React_upvr.useMemo
		var14 = var14(function() -- Line 35
			return {
				disableSquadTopBanner = function(arg1_2, arg2) -- Line 37, Named "disableSquadTopBanner"
				end;
				useSquadTopBannerDisabled = function() -- Line 38, Named "useSquadTopBannerDisabled"
					return false
				end;
			}
		end, {})
	end
	local useCurrentSquadId_upvr_result1_upvr = useCurrentSquadId_upvr()
	local any_useMemo_result1_upvr = React_upvr.useMemo(Analytics_upvr.Analytics, {})
	local module = {}
	local tbl = {
		closeSquadPrompt = arg1.contract.closeSquadPrompt;
		createFriendConversation = arg1.contract.createFriendConversation;
		createConversation = arg1.contract.createConversation;
		disableSquadTopBanner = var14.disableSquadTopBanner;
		fetchParentChannelDetails = arg1.contract.fetchParentChannelDetails;
		fireSquadAnalytics = React_upvr.useCallback(function(arg1_3, arg2) -- Line 46
			--[[ Upvalues[4]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: useCurrentSquadId_upvr_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: any_useMemo_result1_upvr (readonly)
			]]
			any_useMemo_result1_upvr.fireAnalyticsEvent(arg1_3, Cryo_upvr.Dictionary.join(arg2, {
				squadId = useCurrentSquadId_upvr_result1_upvr;
				squadLocation = arg1.squadLocation;
			}))
		end, dependencyArray_upvr(useCurrentSquadId_upvr_result1_upvr, arg1.squadLocation));
		inviteToParentChannel = arg1.contract.inviteToParentChannel;
		navigateIntoSquadLobby = arg1.contract.navigateIntoSquadLobby;
		removeUserFromParentChannel = arg1.contract.removeUserFromParentChannel;
		setSquadPrompt = arg1.contract.setSquadPrompt;
	}
	local showSearchOverlay = arg1.contract.showSearchOverlay
	tbl.showSearchOverlay = showSearchOverlay
	if FFlagEnableSquadCoplayAnalytic_upvr then
		showSearchOverlay = arg1.squadLocation
	else
		showSearchOverlay = nil
	end
	tbl.squadLocation = showSearchOverlay
	tbl.updateSquadViewFlags = React_upvr.useCallback(function(arg1_4, arg2) -- Line 69
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		if arg2 then
			any_useState_result2_upvr(function(arg1_5) -- Line 71
				--[[ Upvalues[1]:
					[1]: arg1_4 (readonly)
				]]
				return bit32.bor(arg1_5, arg1_4)
			end)
		else
			any_useState_result2_upvr(function(arg1_6) -- Line 75
				--[[ Upvalues[1]:
					[1]: arg1_4 (readonly)
				]]
				return bit32.band(arg1_6, bit32.bnot(arg1_4))
			end)
		end
	end, {})
	tbl.useGetConversationFromId = arg1.contract.useGetConversationFromId
	tbl.useParentChannelHasGroupUp = arg1.contract.useParentChannelHasGroupUp
	tbl.useParentChannelHasSquadAccess = arg1.contract.useParentChannelHasSquadAccess
	tbl.useParentChannelIsPartyVoiceEligible = arg1.contract.useParentChannelIsPartyVoiceEligible
	tbl.useParentChannelTitleSelector = arg1.contract.useParentChannelTitleSelector
	tbl.useSquadRootView = arg1.contract.useSquadRootView
	tbl.useSquadTopBannerDisabled = var14.useSquadTopBannerDisabled
	tbl.useIsChatEnabled = arg1.contract.useIsChatEnabled
	tbl.useIsLoadingChatSettings = arg1.contract.useIsLoadingChatSettings
	tbl.useSquadViewFlags = React_upvr.useCallback(function() -- Line 89
		--[[ Upvalues[1]:
			[1]: any_useState_result1_upvr (readonly)
		]]
		return any_useState_result1_upvr
	end, {any_useState_result1_upvr})
	module.value = tbl
	return React_upvr.createElement(SquadExternalContractContext_upvr.Provider, module, arg1.children)
end