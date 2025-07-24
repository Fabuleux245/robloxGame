-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:53
-- Luau version 6, Types version 3
-- Time taken: 0.000980 seconds

local React = require(script.Parent.Parent.Parent.React)
local useState_upvr = React.useState
local UserInputService_upvr = game:GetService("UserInputService")
local useEffect_upvr = React.useEffect
return function() -- Line 11
	--[[ Upvalues[3]:
		[1]: useState_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: useEffect_upvr (readonly)
	]]
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(UserInputService_upvr.KeyboardEnabled)
	useEffect_upvr(function() -- Line 14
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: useState_upvr_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = UserInputService_upvr:GetPropertyChangedSignal("KeyboardEnabled"):Connect(function() -- Line 15
			--[[ Upvalues[2]:
				[1]: useState_upvr_result2_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			useState_upvr_result2_upvr(UserInputService_upvr.KeyboardEnabled)
		end)
		return function() -- Line 19
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return useState_upvr_result1
end