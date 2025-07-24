-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:11
-- Luau version 6, Types version 3
-- Time taken: 0.000847 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local InputUtilities_upvr = require(Parent_2.Utils.InputUtilities)
local useExternalEvent_upvr = require(Parent.UIBlox).Core.Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
return function() -- Line 13
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: InputUtilities_upvr (readonly)
		[3]: useExternalEvent_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	useExternalEvent_upvr(UserInputService_upvr.InputBegan, React_upvr.useCallback(function(arg1) -- Line 16
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if InputUtilities_upvr.isTouchInput(arg1) then
			any_useState_result2_upvr(true)
		end
	end, {any_useState_result2_upvr}))
	useExternalEvent_upvr(UserInputService_upvr.InputEnded, React_upvr.useCallback(function(arg1) -- Line 22
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if InputUtilities_upvr.isTouchInput(arg1) then
			any_useState_result2_upvr(false)
		end
	end, {any_useState_result2_upvr}))
	return any_useState_result1
end