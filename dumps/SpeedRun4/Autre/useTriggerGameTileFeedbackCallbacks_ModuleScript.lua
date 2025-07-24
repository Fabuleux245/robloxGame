-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:14
-- Luau version 6, Types version 3
-- Time taken: 0.001389 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local useTriggerFeedback_upvr = require(Parent.InteractionFeedback).useTriggerFeedback
local React_upvr = require(Parent.React)
return function() -- Line 8, Named "useTriggerGameTileFeedbackCallbacks"
	--[[ Upvalues[2]:
		[1]: useTriggerFeedback_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var2_result1_upvr = useTriggerFeedback_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	return React_upvr.useCallback(function(arg1) -- Line 11
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var2_result1_upvr (readonly)
		]]
		local GuiState = arg1.GuiState
		if any_useRef_result1_upvr.current == Enum.GuiState.Press then
			var2_result1_upvr("Default", "Release")
		end
		if GuiState == Enum.GuiState.Hover then
			var2_result1_upvr("Default", "Hover")
		end
		if GuiState == Enum.GuiState.Press then
			var2_result1_upvr("Default", "Press")
		end
		any_useRef_result1_upvr.current = GuiState
	end, {var2_result1_upvr, any_useRef_result1_upvr}), React_upvr.useCallback(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var2_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current == Enum.GuiState.Press then
			var2_result1_upvr("Default", "Release")
		end
		any_useRef_result1_upvr.current = Enum.GuiState.Idle
	end, {var2_result1_upvr, any_useRef_result1_upvr})
end