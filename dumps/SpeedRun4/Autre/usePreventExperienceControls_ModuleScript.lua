-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:09
-- Luau version 6, Types version 3
-- Time taken: 0.000983 seconds

local tbl_2_upvr = {Enum.PlayerActions.CharacterForward, Enum.PlayerActions.CharacterBackward, Enum.PlayerActions.CharacterLeft, Enum.PlayerActions.CharacterRight, Enum.PlayerActions.CharacterJump, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift, Enum.KeyCode.Tab, Enum.UserInputType.Gamepad1, Enum.UserInputType.Gamepad2, Enum.UserInputType.Gamepad3, Enum.UserInputType.Gamepad4, Enum.UserInputType.Touch, Enum.UserInputType.Keyboard, Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2}
local useEffect_upvr = require(script:FindFirstAncestor("AppChat").Parent.React).useEffect
local ContextActionService_upvr = game:GetService("ContextActionService")
return function(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: useEffect_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	useEffect_upvr(function() -- Line 32
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: tbl_2_upvr (copied, readonly)
		]]
		if arg1 then
			ContextActionService_upvr:BindCoreActionAtPriority("AppChatDisableGameControls", function(arg1_2, arg2, arg3) -- Line 34
				if arg3.KeyCode == Enum.KeyCode.Escape then
					return Enum.ContextActionResult.Pass
				end
				return Enum.ContextActionResult.Sink
			end, false, Enum.ContextActionPriority.Low.Value, unpack(tbl_2_upvr))
		end
		return function() -- Line 43
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: ContextActionService_upvr (copied, readonly)
			]]
			if arg1 then
				ContextActionService_upvr:UnbindCoreAction("AppChatDisableGameControls")
			end
		end
	end, tbl)
end