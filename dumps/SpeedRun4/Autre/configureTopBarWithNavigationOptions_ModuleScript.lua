-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:28
-- Luau version 6, Types version 3
-- Time taken: 0.001202 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local Roact_upvr = require(Parent.Roact)
local TopBarContext_upvr = require(AppChat.TopBarContext)
local ArgCheck_upvr = require(Parent.ArgCheck)
local createChatTopBar_upvr = require(AppChat.createChatTopBar)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 56
	--[[ Upvalues[6]:
		[1]: RoactNavigation_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: TopBarContext_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
		[5]: createChatTopBar_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	local module = {}
	local any_getActiveChildNavigationOptions_result1_upvr = RoactNavigation_upvr.getActiveChildNavigationOptions(arg1)
	function module.render(arg1_2) -- Line 59
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: createChatTopBar_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: any_getActiveChildNavigationOptions_result1_upvr (readonly)
		]]
		local state = arg1.state
		local any_getScreenTopBar_result1 = arg1_2.getScreenTopBar(state.routes[state.index].routeName)
		ArgCheck_upvr.isType(any_getScreenTopBar_result1, "table", "screenTopBar")
		local module_2 = {}
		module_2.navigation = arg1
		return createChatTopBar_upvr(Cryo_upvr.Dictionary.join(any_getScreenTopBar_result1, any_getActiveChildNavigationOptions_result1_upvr, module_2))
	end
	return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module)
end