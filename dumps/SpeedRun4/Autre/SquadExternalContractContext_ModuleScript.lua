-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:55
-- Luau version 6, Types version 3
-- Time taken: 0.002708 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local module = {
	closeSquadPrompt = function() -- Line 48, Named "closeSquadPrompt"
	end;
}
local Promise_upvr = require(Parent.Promise)
function module.createConversation(arg1, arg2, arg3, arg4) -- Line 49
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject("No createConversation function supplied.")
	end
end
function module.createFriendConversation(arg1, arg2) -- Line 59
end
function module.disableSquadTopBanner(arg1, arg2) -- Line 60
end
function module.fetchParentChannelDetails(arg1, arg2) -- Line 61
	return nil
end
function module.fireSquadAnalytics(arg1, arg2) -- Line 64
	return arg1, arg2
end
function module.inviteToParentChannel(arg1, arg2, arg3) -- Line 67
	return nil
end
function module.navigateIntoSquadLobby(arg1, arg2) -- Line 70
end
function module.removeUserFromParentChannel(arg1, arg2, arg3) -- Line 71
	return nil
end
local function showSearchOverlay(arg1, arg2) -- Line 74, Named "setSquadPrompt"
end
module.setSquadPrompt = showSearchOverlay
function showSearchOverlay(arg1, arg2) -- Line 75
end
local var6 = showSearchOverlay
module.showSearchOverlay = var6
if require(Parent.SharedFlags).FFlagEnableSquadCoplayAnalytic then
	var6 = require(SquadsCore.Enums.SquadLocationEnum).Unknown
else
	var6 = nil
end
module.squadLocation = var6
function module.updateSquadViewFlags(arg1, arg2) -- Line 77
end
function module.useGetConversationFromId(arg1) -- Line 78
	return nil
end
function module.useIsChatEnabled() -- Line 81
	return false
end
function module.useIsLoadingChatSettings() -- Line 84
	return false
end
function module.useParentChannelHasGroupUp(arg1) -- Line 87
	return false
end
function module.useParentChannelHasSquadAccess(arg1) -- Line 90
	return false
end
function module.useParentChannelIsPartyVoiceEligible(arg1) -- Line 93
	return nil
end
function module.useParentChannelTitleSelector(arg1) -- Line 96
	return ""
end
local SquadRootViewType_upvr = require(SquadsCore.Enums.SquadRootViewType)
function module.useSquadRootView() -- Line 99
	--[[ Upvalues[1]:
		[1]: SquadRootViewType_upvr (readonly)
	]]
	return SquadRootViewType_upvr.None
end
function module.useSquadTopBannerDisabled() -- Line 102
	return false
end
function module.useSquadViewFlags() -- Line 105
	return 0
end
return require(Parent.React).createContext(module)