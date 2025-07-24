-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:11
-- Luau version 6, Types version 3
-- Time taken: 0.000575 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local EnumScreens_upvr = require(AppChat.EnumScreens)
local RoactNavigation_upvr = require(AppChat.Parent.RoactNavigation)
return function(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[2]:
		[1]: EnumScreens_upvr (readonly)
		[2]: RoactNavigation_upvr (readonly)
	]]
	local tbl_3 = {
		index = 2;
	}
	local tbl_2 = {}
	local tbl_6 = {
		routeName = EnumScreens_upvr.ChatConversation;
	}
	local tbl = {}
	tbl.conversationId = arg2
	tbl_6.params = tbl
	local tbl_5 = {
		routeName = EnumScreens_upvr.SquadLobby;
	}
	local tbl_4 = {}
	tbl_4.conversationId = arg2
	tbl_4.extraParams = arg3
	tbl_5.params = tbl_4
	tbl_2[1] = RoactNavigation_upvr.Actions.navigate(tbl_6)
	tbl_2[2] = RoactNavigation_upvr.Actions.navigate(tbl_5)
	tbl_3.actions = tbl_2
	arg1.navigate(EnumScreens_upvr.ChatLanding, nil, RoactNavigation_upvr.StackActions.reset(tbl_3))
end