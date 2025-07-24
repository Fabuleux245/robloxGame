-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:10
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local RoactNavigation_upvr = require(AppChat.Parent.RoactNavigation)
local EnumScreens_upvr = require(AppChat.EnumScreens)
return function(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[2]:
		[1]: RoactNavigation_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl_5 = {
		routeName = EnumScreens_upvr.ChatConversation;
	}
	local tbl = {}
	tbl.conversationId = arg2
	tbl_5.params = tbl
	local tbl_4 = {
		routeName = EnumScreens_upvr.SquadLobby;
	}
	local tbl_3 = {}
	tbl_3.conversationId = arg2
	tbl_3.extraParams = arg3
	tbl_4.params = tbl_3
	tbl_2[1] = RoactNavigation_upvr.Actions.navigate({
		routeName = EnumScreens_upvr.ChatLanding;
	})
	tbl_2[2] = RoactNavigation_upvr.Actions.navigate(tbl_5)
	tbl_2[3] = RoactNavigation_upvr.Actions.navigate(tbl_4)
	arg1.reset(tbl_2, 3)
end