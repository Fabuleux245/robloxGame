-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:50
-- Luau version 6, Types version 3
-- Time taken: 0.001442 seconds

local Parent = script:FindFirstAncestor("ScrollTelemetry").Parent
local t = require(Parent.t)
local ArgCheck_upvr = require(Parent.ArgCheck)
local any_strictInterface_result1_upvr_2 = t.strictInterface({
	distance = t.number;
	screenSizeX = t.number;
	screenSizeY = t.number;
	scrollAreaSize = t.number;
	scrollDepth = t.optional(t.number);
	startDepth = t.optional(t.number);
	startPos = t.number;
	scrollDuration = t.number;
})
local any_strictInterface_result1_upvr = t.strictInterface({
	distance = t.number;
	screenSizeX = t.number;
	screenSizeY = t.number;
	scrollAreaSize = t.number;
	scrollDepth = t.optional(t.number);
	startDepth = t.optional(t.number);
	startPos = t.number;
	scrollDuration = t.number;
	sortPos = t.number;
	gameSetTypeId = t.string;
	gameSetTargetId = t.optional(t.number);
})
local mutedError_upvr = require(Parent.Loggers).mutedError
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2, arg3, arg4) -- Line 33
	--[[ Upvalues[5]:
		[1]: ArgCheck_upvr (readonly)
		[2]: any_strictInterface_result1_upvr_2 (readonly)
		[3]: any_strictInterface_result1_upvr (readonly)
		[4]: mutedError_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	ArgCheck_upvr.isType(arg2, "string", "eventContext")
	local var11 = "unknown"
	local var12
	if arg3 == Enum.ScrollingDirection.Y then
		var11 = "vertical"
		var12 = any_strictInterface_result1_upvr_2
	elseif arg3 == Enum.ScrollingDirection.X then
		var11 = "horizontal"
		var12 = any_strictInterface_result1_upvr
	elseif arg3 == Enum.ScrollingDirection.XY then
		mutedError_upvr(`Direction {arg3.Name} is an unsupported option for feedScroll event`)
	end
	if var12 then
		local var12_result1, var12_result2 = var12(arg4)
		if not var12_result1 then
			mutedError_upvr(var12_result2)
			-- KONSTANTWARNING: GOTO [54] #44
		end
	else
		mutedError_upvr(`Missing interface for unknown direction {arg3.Name} to type check feedScroll event parameters`)
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 44. Error Block 14 start (CF ANALYSIS FAILED)
	arg1:sendEventDeferred(arg2, "feedScroll", Cryo_upvr.Dictionary.join(arg4, {
		direction = var11;
	}))
	-- KONSTANTERROR: [54] 44. Error Block 14 end (CF ANALYSIS FAILED)
end