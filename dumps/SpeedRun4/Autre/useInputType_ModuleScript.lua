-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:40
-- Luau version 6, Types version 3
-- Time taken: 0.000934 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local UserInputService_upvr = game:GetService("UserInputService")
local getInputGroup_upvr = require(Parent.InputType).getInputGroup
local React_upvr = require(Parent.React)
local useExternalEvent_upvr = require(script.Parent.useExternalEvent)
return function(arg1) -- Line 13, Named "useInputType"
	--[[ Upvalues[4]:
		[1]: UserInputService_upvr (readonly)
		[2]: getInputGroup_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useExternalEvent_upvr (readonly)
	]]
	local var6_upvr = arg1
	if not var6_upvr then
		var6_upvr = UserInputService_upvr
	end
	local function getLastInputType_upvr() -- Line 16, Named "getLastInputType"
		--[[ Upvalues[2]:
			[1]: var6_upvr (readonly)
			[2]: getInputGroup_upvr (copied, readonly)
		]]
		return getInputGroup_upvr(var6_upvr:GetLastInputType())
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(getLastInputType_upvr)
	useExternalEvent_upvr(var6_upvr.LastInputTypeChanged, React_upvr.useCallback(function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: getInputGroup_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local getInputGroup_upvr_result1 = getInputGroup_upvr(arg1_2)
		if getInputGroup_upvr_result1 ~= nil then
			any_useState_result2_upvr(getInputGroup_upvr_result1)
		end
	end))
	React_upvr.useEffect(function() -- Line 34
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: getLastInputType_upvr (readonly)
		]]
		any_useState_result2_upvr(getLastInputType_upvr())
	end, {})
	return any_useState_result1
end