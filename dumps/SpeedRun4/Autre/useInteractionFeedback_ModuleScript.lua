-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:56
-- Luau version 6, Types version 3
-- Time taken: 0.001087 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local ControlState_upvr = require(Parent.Control.Enum.ControlState)
local function resolveInteractionType_upvr(arg1, arg2) -- Line 11, Named "resolveInteractionType"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var4
	if arg2 == ControlState_upvr.Pressed or arg2 == ControlState_upvr.SelectedPressed then
		var4 = "Press"
		return var4
	end
	if arg2 == ControlState_upvr.Hover or arg2 == ControlState_upvr.Selected or arg1 == ControlState_upvr.Default then
		var4 = "Hover"
		return var4
	end
	if arg1 == ControlState_upvr.Pressed or arg1 == ControlState_upvr.SelectedPressed then
		if arg2 ~= ControlState_upvr.Disabled then
			var4 = "Release"
			return var4
		end
	end
	do
		return nil
	end
	return var4
end
local React_upvr = require(Parent.Parent.Parent.React)
local FeedbackManagerInjectionContext_upvr = require(Parent_2.FeedbackManagerInjectionContext)
return function() -- Line 34, Named "useInteractionFeedback"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: FeedbackManagerInjectionContext_upvr (readonly)
		[3]: resolveInteractionType_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(FeedbackManagerInjectionContext_upvr)
	return React_upvr.useCallback(function(arg1, arg2, arg3) -- Line 37
		--[[ Upvalues[2]:
			[1]: resolveInteractionType_upvr (copied, readonly)
			[2]: any_useContext_result1_upvr (readonly)
		]]
		local resolveInteractionType_upvr_result1 = resolveInteractionType_upvr(arg2, arg3)
		if resolveInteractionType_upvr_result1 then
			any_useContext_result1_upvr(arg1 or "Default", resolveInteractionType_upvr_result1)
		end
	end, {any_useContext_result1_upvr})
end