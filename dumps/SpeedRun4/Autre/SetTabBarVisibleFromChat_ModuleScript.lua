-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:39
-- Luau version 6, Types version 3
-- Time taken: 0.000669 seconds

local AppTabBarRodux = script:FindFirstAncestor("AppTabBarRodux")
local ArgCheck_upvr = require(AppTabBarRodux.Parent.ArgCheck)
local SetTabBarVisible_upvr = require(AppTabBarRodux.Actions.SetTabBarVisible)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: SetTabBarVisible_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "boolean", "SetTabBarVisibleFromChat.isVisible")
	return function(arg1_2) -- Line 10
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetTabBarVisible_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		if not any_getState_result1.ChatAppReducer.ToggleChatPaused and any_getState_result1.TabBarVisible ~= arg1 then
			arg1_2:dispatch(SetTabBarVisible_upvr(arg1))
		end
	end
end