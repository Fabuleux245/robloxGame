-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:54
-- Luau version 6, Types version 3
-- Time taken: 0.001339 seconds

local Parent = script.Parent.Parent.Parent
local Dash_upvr = require(Parent.Dash)
local React_upvr = require(Parent.React)
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
return function() -- Line 12
	--[[ Upvalues[3]:
		[1]: Dash_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RobloxGui_upvr (readonly)
	]]
	if _G.__TEST_SUITE_PACKAGE__ or _G.__TESTEZ_RUNNING_TEST__ then
		return Dash_upvr.noop
	end
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: RobloxGui_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		local Sound_upvr = Instance.new("Sound")
		Sound_upvr.Name = "ShutterSound"
		Sound_upvr.Parent = RobloxGui_upvr
		Sound_upvr.Volume = 1
		Sound_upvr.SoundId = "rbxassetid://10066921516"
		any_useRef_result1_upvr.current = Sound_upvr
		return function() -- Line 28
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: Sound_upvr (readonly)
			]]
			any_useRef_result1_upvr.current = nil
			Sound_upvr:Destroy()
		end
	end, {})
	return React_upvr.useCallback(function() -- Line 34
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:Play()
		end
	end, {})
end