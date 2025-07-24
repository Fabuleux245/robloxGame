-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:57
-- Luau version 6, Types version 3
-- Time taken: 0.000911 seconds

local React_upvr = require(script:FindFirstAncestor("FocusNavigationUtils").Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	React_upvr.useEffect(function() -- Line 11
		--[[ Upvalues[4]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		local any_Connect_result1_upvr_2 = UserInputService_upvr.TextBoxFocused:Connect(function(arg1_2) -- Line 12
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			any_useState_result2_upvr(arg1_2)
			if arg1 then
				arg1(arg1_2)
			end
		end)
		local any_Connect_result1_upvr = UserInputService_upvr.TextBoxFocusReleased:Connect(function(arg1_3) -- Line 20
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
			]]
			any_useState_result2_upvr(nil)
			if arg2 then
				arg2(arg1_3)
			end
		end)
		return function() -- Line 28
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_2 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, {any_useState_result2_upvr})
	return any_useState_result1
end