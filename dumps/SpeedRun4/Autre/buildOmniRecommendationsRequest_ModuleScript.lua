-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:02
-- Luau version 6, Types version 3
-- Time taken: 0.000854 seconds

local function _(arg1) -- Line 11, Named "makeNetworkImpl"
	return function(arg1_2, arg2, arg3) -- Line 12
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1(arg1_2, {
			body = arg3.postBody;
			method = "POST";
			headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			};
		})
	end
end
local MakeOmniRecommendationsRequest_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.GraphQlShared).MakeOmniRecommendationsRequest
return function(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: MakeOmniRecommendationsRequest_upvr (readonly)
	]]
	local function var7_upvr(arg1_3, arg2, arg3) -- Line 12
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1(arg1_3, {
			body = arg3.postBody;
			method = "POST";
			headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			};
		})
	end
	return function(arg1_4, arg2, arg3, arg4) -- Line 26
		--[[ Upvalues[2]:
			[1]: MakeOmniRecommendationsRequest_upvr (copied, readonly)
			[2]: var7_upvr (readonly)
		]]
		return MakeOmniRecommendationsRequest_upvr(var7_upvr, arg1_4, arg2, arg3, arg4)
	end
end