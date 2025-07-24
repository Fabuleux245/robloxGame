-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:13
-- Luau version 6, Types version 3
-- Time taken: 0.000778 seconds

local Parent = script.Parent.Parent
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 8, Named "validateHSR"
	--[[ Upvalues[2]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	if arg2.bypassFlags and arg2.bypassFlags.skipValidateHSR then
		return true
	end
	local descendants = arg1:GetDescendants()
	table.insert(descendants, arg1)
	for _, v in descendants do
		if v:IsA("BaseWrap") and not v:IsHSRReady() then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateHSR_HSRDataNotReady, nil, arg2)
			FailureReasonsAccumulator_upvr.new():updateReasons(false, {`Missing HSR data for {v:GetFullName()}. Please, try again.`})
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end