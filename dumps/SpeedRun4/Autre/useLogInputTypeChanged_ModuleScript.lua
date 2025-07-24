-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:11
-- Luau version 6, Types version 3
-- Time taken: 0.000642 seconds

local UiShellEvents = script:FindFirstAncestor("UiShellEvents")
local Parent = UiShellEvents.Parent
local useInputType_upvr = require(Parent.RoactUtils).Hooks.useInputType
local React_upvr = require(Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
local logInputTypeChanged_upvr = require(UiShellEvents.Analytics.logInputTypeChanged)
return function(arg1, arg2) -- Line 8, Named "useLogInputTypeChanged"
	--[[ Upvalues[4]:
		[1]: useInputType_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: logInputTypeChanged_upvr (readonly)
	]]
	local useInputType_upvr_result1_upvr = useInputType_upvr()
	React_upvr.useEffect(function() -- Line 11
		--[[ Upvalues[5]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: logInputTypeChanged_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: useInputType_upvr_result1_upvr (readonly)
			[5]: arg2 (readonly)
		]]
		local tbl = {
			inputType = useInputType_upvr_result1_upvr;
			gamepadConnected = UserInputService_upvr:GetGamepadConnected(Enum.UserInputType.Gamepad1);
		}
		tbl.playSessionId = arg2
		logInputTypeChanged_upvr(arg1, "inputTypeChanged", tbl)
	end, {useInputType_upvr_result1_upvr})
end