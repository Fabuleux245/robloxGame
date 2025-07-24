-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:22
-- Luau version 6, Types version 3
-- Time taken: 0.002099 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local getFStringSocialAddFriendsPageLayer_upvr = dependencies.getFStringSocialAddFriendsPageLayer
local any_extend_result1 = dependencies.Roact.PureComponent:extend("AddFriendsLayerExposure")
function any_extend_result1.init(arg1) -- Line 22
	arg1.state = {
		layerExposedOnMount = false;
	}
end
function any_extend_result1.didMount(arg1) -- Line 28
	arg1:setState({
		layerExposedOnMount = true;
	})
end
local FFlagEnablePYMKSectionForAll_upvr = require(FriendsLanding.Flags.FFlagEnablePYMKSectionForAll)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: FFlagEnablePYMKSectionForAll_upvr (readonly)
	]]
	local state = arg1.state
	if state.layerExposedOnMount then
		local module = {}
		if FFlagEnablePYMKSectionForAll_upvr then
			state = nil
		else
			state = arg1.props.shouldShowPYMKSection
		end
		module.shouldShowPYMKSection = state
		state = arg1.props.initialRequestsRows
		module.initialRequestsRows = state
		state = arg1.props.addFriendsPageSearchbarEnabled
		module.addFriendsPageSearchbarEnabled = state
		state = arg1.props.friendRequestScoringVariant
		module.friendRequestScoringVariant = state
		state = arg1.props.pymkEnabledForConsole
		module.pymkEnabledForConsole = state
		return arg1.props.renderChild(module)
	end
	return nil
end
local game_DefineFastString_result1_upvr = game:DefineFastString("FriendRequestSortingIXPVariant", "treatment")
return dependencies.RoactAppExperiment.connectUserLayer({getFStringSocialAddFriendsPageLayer_upvr()}, function(arg1, arg2) -- Line 48
	--[[ Upvalues[2]:
		[1]: getFStringSocialAddFriendsPageLayer_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	local var13 = arg1[getFStringSocialAddFriendsPageLayer_upvr()]
	if not var13 then
		var13 = {}
	end
	local var14 = game_DefineFastString_result1_upvr
	local var15 = var13[var14]
	if var15 == "largerWindow" then
		var14 = 5
	else
		var14 = 2
	end
	return {
		initialRequestsRows = var14;
		addFriendsPageSearchbarEnabled = var13.show_add_friends_page_search_bar;
		friendRequestScoringVariant = var15;
		pymkEnabledForConsole = var13.enable_pymk_for_console;
	}
end)(any_extend_result1)