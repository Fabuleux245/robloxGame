-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:07
-- Luau version 6, Types version 3
-- Time taken: 0.000739 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React = require(Parent.React)
local useState_upvr = React.useState
local useExternalEvent_upvr = require(Parent.RoactUtils).Hooks.useExternalEvent
local AppChatVisible_upvr = require(AppChat.App.AppChatVisible)
local useCallback_upvr = React.useCallback
return function(arg1) -- Line 14, Named "useIsAppChatVisible"
	--[[ Upvalues[4]:
		[1]: useState_upvr (readonly)
		[2]: useExternalEvent_upvr (readonly)
		[3]: AppChatVisible_upvr (readonly)
		[4]: useCallback_upvr (readonly)
	]]
	local var4_result1_upvr, var4_result2_upvr = useState_upvr(arg1 or false)
	useExternalEvent_upvr(AppChatVisible_upvr.BindableEvent.Event, function(arg1_2) -- Line 17
		--[[ Upvalues[2]:
			[1]: var4_result1_upvr (readonly)
			[2]: var4_result2_upvr (readonly)
		]]
		if arg1_2 ~= var4_result1_upvr then
			var4_result2_upvr(arg1_2)
		end
	end, {var4_result1_upvr})
	return var4_result1_upvr, useCallback_upvr(function() -- Line 23
		--[[ Upvalues[1]:
			[1]: var4_result2_upvr (readonly)
		]]
		var4_result2_upvr(false)
	end, {var4_result2_upvr})
end