-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:06
-- Luau version 6, Types version 3
-- Time taken: 0.001230 seconds

local React = require(script:FindFirstAncestor("AmpUpsell").Parent.React)
local useState_upvr = React.useState
local useEffect_upvr = React.useEffect
local UserInputService_upvr = game:GetService("UserInputService")
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: useState_upvr (readonly)
		[2]: useEffect_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(0)
	useEffect_upvr(function() -- Line 12
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: useState_upvr_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(function() -- Line 14
			--[[ Upvalues[2]:
				[1]: useState_upvr_result2_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			local var10
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var10 = UserInputService_upvr.OnScreenKeyboardSize.Y
				return var10
			end
			if not UserInputService_upvr.OnScreenKeyboardVisible or not INLINED() then
				var10 = 0
			end
			useState_upvr_result2_upvr(var10)
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