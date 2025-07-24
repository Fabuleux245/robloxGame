-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:53
-- Luau version 6, Types version 3
-- Time taken: 0.001608 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local module = {
	closeSquadPrompt = function() -- Line 12, Named "closeSquadPrompt"
	end;
}
local Promise_upvr = require(SquadsCore.Parent.Promise)
function module.createConversation(arg1, arg2, arg3, arg4) -- Line 15
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 21
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject("No createConversation function supplied.")
	end
end
function module.createFriendConversation(arg1, arg2) -- Line 25
end
function module.fetchParentChannelDetails(arg1, arg2) -- Line 28
	return nil
end
function module.inviteToParentChannel(arg1, arg2, arg3) -- Line 31
	return function(arg1_3) -- Line 32
		return nil
	end
end
function module.navigateIntoSquadLobby(arg1, arg2) -- Line 36
end
function module.removeUserFromParentChannel(arg1, arg2, arg3) -- Line 39
	return function(arg1_4) -- Line 40
		return nil
	end
end
function module.setSquadPrompt(arg1, arg2) -- Line 44
end
function module.showSearchOverlay(arg1, arg2) -- Line 47
end
function module.useIsChatEnabled() -- Line 50
	return false
end
function module.useGetConversationFromId(arg1) -- Line 53
	return nil
end
function module.useParentChannelHasGroupUp(arg1) -- Line 56
	return false
end
function module.useParentChannelHasSquadAccess(arg1) -- Line 59
	return false
end
function module.useParentChannelTitleSelector(arg1) -- Line 62
	return ""
end
function module.useParentChannelIsPartyVoiceEligible(arg1) -- Line 65
	return nil
end
local SquadRootViewType_upvr = require(SquadsCore.Enums.SquadRootViewType)
function module.useSquadRootView() -- Line 68
	--[[ Upvalues[1]:
		[1]: SquadRootViewType_upvr (readonly)
	]]
	return SquadRootViewType_upvr.None
end
function module.useSquadTopBannerManager() -- Line 71
	return {
		disableSquadTopBanner = function(arg1, arg2) -- Line 73, Named "disableSquadTopBanner"
		end;
		useSquadTopBannerDisabled = function() -- Line 74, Named "useSquadTopBannerDisabled"
			return false
		end;
	}
end
return module