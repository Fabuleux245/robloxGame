-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:10
-- Luau version 6, Types version 3
-- Time taken: 0.001195 seconds

local React = require(script:FindFirstAncestor("Songbird").Parent.React)
local useBinding_upvr = React.useBinding
local useEffect_upvr = React.useEffect
return function(arg1) -- Line 10, Named "usePointerPosition"
	--[[ Upvalues[2]:
		[1]: useBinding_upvr (readonly)
		[2]: useEffect_upvr (readonly)
	]]
	local var2_result1, useBinding_upvr_result2_upvr = useBinding_upvr(Vector2.zero)
	useEffect_upvr(function() -- Line 13
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: useBinding_upvr_result2_upvr (readonly)
		]]
		if arg1.current then
			local any_Connect_result1_upvr = arg1.current.InputChanged:Connect(function(arg1_2) -- Line 15
				--[[ Upvalues[1]:
					[1]: useBinding_upvr_result2_upvr (copied, readonly)
				]]
				if 0 < arg1_2.Position.X or 0 < arg1_2.Position.Y then
					useBinding_upvr_result2_upvr(Vector2.new(arg1_2.Position.X, arg1_2.Position.Y))
				end
			end)
			return function() -- Line 21
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end
		any_Connect_result1_upvr = nil
		return any_Connect_result1_upvr
	end, {})
	return var2_result1
end