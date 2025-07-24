-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:26
-- Luau version 6, Types version 3
-- Time taken: 0.000725 seconds

local dependencies = require(script:FindFirstAncestor("ContactImporter").dependencies)
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local Dash_upvr = dependencies.Dash
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	local var6 = arg2
	if not var6 then
		var6 = {}
	end
	local getDeepValue_upvr_result1_upvr = getDeepValue_upvr(var6, "hasSentRequest")
	if not getDeepValue_upvr_result1_upvr then
		getDeepValue_upvr_result1_upvr = {}
	end
	local var8 = arg1
	if not var8 then
		var8 = {}
	end
	return Dash_upvr.map(var8, function(arg1_2) -- Line 11
		--[[ Upvalues[2]:
			[1]: Dash_upvr (copied, readonly)
			[2]: getDeepValue_upvr_result1_upvr (readonly)
		]]
		return Dash_upvr.join(arg1_2, {
			hasSentRequest = getDeepValue_upvr_result1_upvr[arg1_2.contactId];
			isMatchedContact = true;
		})
	end)
end