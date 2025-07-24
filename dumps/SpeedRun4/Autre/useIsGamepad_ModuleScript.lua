-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:40
-- Luau version 6, Types version 3
-- Time taken: 0.001425 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local isGamepadInput_upvr = require(script.Parent.Parent.isGamepadInput)
local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local useExternalEvent_upvr = require(script.Parent.useExternalEvent)
return function(arg1) -- Line 13, Named "useIsGamepad"
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: isGamepadInput_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useExternalEvent_upvr (readonly)
	]]
	local var5_upvr = arg1
	if not var5_upvr then
		var5_upvr = UserInputService_upvr
	end
	local function wasLastInputGamepad_upvr() -- Line 16, Named "wasLastInputGamepad"
		--[[ Upvalues[2]:
			[1]: var5_upvr (readonly)
			[2]: isGamepadInput_upvr (copied, readonly)
		]]
		return isGamepadInput_upvr(var5_upvr:GetLastInputType())
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(wasLastInputGamepad_upvr)
	useExternalEvent_upvr(var5_upvr.LastInputTypeChanged, React_upvr.useCallback(function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: isGamepadInput_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local isGamepadInput_upvr_result1 = isGamepadInput_upvr(arg1_2)
		if isGamepadInput_upvr_result1 ~= nil then
			any_useState_result2_upvr(isGamepadInput_upvr_result1)
		end
	end))
	React_upvr.useEffect(function() -- Line 34
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: wasLastInputGamepad_upvr (readonly)
		]]
		any_useState_result2_upvr(wasLastInputGamepad_upvr())
	end, {})
	return any_useState_result1
end