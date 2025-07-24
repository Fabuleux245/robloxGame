-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:51
-- Luau version 6, Types version 3
-- Time taken: 0.001483 seconds

local function _() -- Line 36, Named "newChildrenMap"
	return {}
end
local React_upvr = require(script.Parent.Parent.Parent.React)
local useIdFallback_upvr = require(script.Parent.utils).useIdFallback
local PresenceContext_upvr = require(script.Parent.PresenceContext)
return function(arg1) -- Line 40, Named "PresenceChild"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: useIdFallback_upvr (readonly)
		[3]: PresenceContext_upvr (readonly)
	]]
	if not arg1.children or typeof(arg1.children) == "string" then
		error("PresenceChild: children must be a React.Element")
	end
	if not arg1.children.type then
		error("PresenceChild: children must be a React.Element")
	end
	local var8
	if arg1.onExitComplete and typeof(arg1.onExitComplete) ~= "function" and not arg1.onExitComplete._isMockFunction then
		error("PresenceChild: onExitComplete must be a function")
	end
	local isPresent = arg1.isPresent
	local current_upvr = React_upvr.useRef({}).current
	local presenceId = arg1.presenceId
	if not presenceId then
		presenceId = useIdFallback_upvr()
	end
	local onExitComplete_upvr = arg1.onExitComplete
	if isPresent == false then
		var8 = false
	else
		var8 = true
	end
	if isPresent ~= nil then
		for i, _ in pairs(current_upvr) do
			current_upvr[i] = false
			local _
		end
	end
	return React_upvr.createElement(PresenceContext_upvr.Provider, {
		value = {
			id = presenceId;
			isPresent = var8;
			passThroughData = arg1.passThroughData;
			onExitComplete = function(arg1_2) -- Line 76, Named "handleExitComplete"
				--[[ Upvalues[2]:
					[1]: current_upvr (readonly)
					[2]: onExitComplete_upvr (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				current_upvr[arg1_2] = true
				local pairs_result1, pairs_result2, pairs_result3_2 = pairs(current_upvr)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [12] 12. Error Block 4 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [12] 12. Error Block 4 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [9] 9. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.6]
				-- KONSTANTERROR: [9] 9. Error Block 2 end (CF ANALYSIS FAILED)
			end;
		};
	}, arg1.children)
end