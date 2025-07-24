-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:07
-- Luau version 6, Types version 3
-- Time taken: 0.000791 seconds

local Parent = script:FindFirstAncestor("Achievements").Parent
local MakeOmniRecommendationsRequest_upvr = require(Parent.GraphQlShared).MakeOmniRecommendationsRequest
local Promise_upvr = require(Parent.Promise)
local Dash_upvr = require(Parent.Dash)
return function(arg1, arg2) -- Line 44
	--[[ Upvalues[3]:
		[1]: MakeOmniRecommendationsRequest_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Dash_upvr (readonly)
	]]
	return MakeOmniRecommendationsRequest_upvr(arg1, "Home", '0', nil, nil, nil, {tostring(100000003)}):andThen(function(arg1_2) -- Line 47
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Dash_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		if arg1_2.responseBody == nil then
			return Promise_upvr.reject("Response has no body.")
		end
		local sorts = arg1_2.responseBody.sorts
		if not sorts then
			return Promise_upvr.reject("Response has no sorts.")
		end
		local pairs_result1, pairs_result2, pairs_result3 = pairs(sorts)
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 32. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 32. Error Block 10 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 21. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [43.8]
		-- KONSTANTERROR: [28] 21. Error Block 6 end (CF ANALYSIS FAILED)
	end)
end