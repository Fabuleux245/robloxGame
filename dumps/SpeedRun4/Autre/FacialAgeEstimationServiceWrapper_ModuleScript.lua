-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:10
-- Luau version 6, Types version 3
-- Time taken: 0.001177 seconds

local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("FacialAgeEstimationServiceAvailable")
local var2_upvr
if game_GetEngineFeature_result1_upvr then
	var2_upvr = game:GetService("FacialAgeEstimationService")
else
	var2_upvr = nil
end
local module_2 = {
	isAvailable = function() -- Line 13, Named "isAvailable"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: var2_upvr (readonly)
		]]
		local var4 = game_GetEngineFeature_result1_upvr
		if var4 then
			var4 = var2_upvr:IsAvailable()
		end
		return var4
	end;
}
local Promise_upvr = require(script:FindFirstAncestor("AmpUpsell").Parent.Promise)
function module_2.startFlow(arg1, arg2) -- Line 16
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: var2_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 17
		--[[ Upvalues[3]:
			[1]: var2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 18
			--[[ Upvalues[3]:
				[1]: var2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			local module = {}
			module.inquiryId = arg1
			module.sessionToken = arg2
			return var2_upvr:InquiryAsync(module)
		end)
		if not pcall_result1 then
			arg2_2(pcall_result2)
		else
			local resultType = pcall_result2.resultType
			if resultType == Enum.FacialAgeEstimationResultType.Complete then
				arg1_2(arg1)
				return
			end
			if resultType == Enum.FacialAgeEstimationResultType.Cancel then
				arg2_2({
					resultType = resultType;
				})
				return
			end
			if resultType == Enum.FacialAgeEstimationResultType.Error then
				arg2_2({
					resultType = resultType;
				})
			end
		end
	end)
end
return module_2