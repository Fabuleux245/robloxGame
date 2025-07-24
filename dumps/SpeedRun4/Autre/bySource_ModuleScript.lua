-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:50
-- Luau version 6, Types version 3
-- Time taken: 0.000831 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local RecommendationSourceCreated_upvr = require(Parent_2.Actions.RecommendationSourceCreated)
local llama_upvr = require(Parent.llama)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: RecommendationSourceCreated_upvr (readonly)
		[4]: llama_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[RecommendationSourceCreated_upvr.name] = function(arg1_2, arg2) -- Line 15
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local recommendationIds = arg2.payload.recommendationIds
			if not recommendationIds then
				recommendationIds = {}
			end
			return llama_upvr.Dictionary.join(arg1_2, {
				[arg2.payload.source] = llama_upvr.List.reduce(recommendationIds, function(arg1_3, arg2_2) -- Line 22
					arg1_3[tostring(arg2_2)] = true
					return arg1_3
				end, {});
			})
		end;
	})
end