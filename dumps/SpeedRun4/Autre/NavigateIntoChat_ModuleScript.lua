-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:12
-- Luau version 6, Types version 3
-- Time taken: 0.001253 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_upvr = {{
	name = require(Parent.RobloxAppEnums).AppPage.Chat;
}}
local NavigateToRoute_upvr = require(Parent.NavigationRodux).Thunks.NavigateToRoute
local NavigateIntoChat_upvr = require(AppChat.Actions.NavigateIntoChat)
local getFFlagEnableStandaloneAppChat_upvr = require(AppChat.Flags.getFFlagEnableStandaloneAppChat)
local EnumScreens_upvr = require(AppChat.EnumScreens)
return function(arg1, arg2) -- Line 21
	--[[ Upvalues[5]:
		[1]: NavigateToRoute_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: NavigateIntoChat_upvr (readonly)
		[4]: getFFlagEnableStandaloneAppChat_upvr (readonly)
		[5]: EnumScreens_upvr (readonly)
	]]
	return function(arg1_2) -- Line 22
		--[[ Upvalues[7]:
			[1]: NavigateToRoute_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: NavigateIntoChat_upvr (copied, readonly)
			[5]: getFFlagEnableStandaloneAppChat_upvr (copied, readonly)
			[6]: EnumScreens_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local var11 = arg2
		arg1_2:dispatch(NavigateToRoute_upvr(tbl_upvr, var11))
		local tbl = {}
		if getFFlagEnableStandaloneAppChat_upvr() then
			var11 = EnumScreens_upvr.ChatConversation
		else
			var11 = EnumScreens_upvr.RoactChat
		end
		tbl.screen = var11
		tbl.params = arg1
		arg1_2:dispatch(NavigateIntoChat_upvr(tbl))
	end
end