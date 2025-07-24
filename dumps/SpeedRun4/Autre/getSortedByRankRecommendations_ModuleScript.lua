-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:05
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local Parent = script.Parent.Parent
local function var2_upvr(arg1, arg2) -- Line 10
	local var3
	if arg1.rank >= arg2.rank then
		var3 = false
	else
		var3 = true
	end
	return var3
end
local getDeepValue_upvr = require(Parent.getDeepValue)
local llama_upvr = require(Parent.Parent.llama)
return function(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: getDeepValue_upvr (readonly)
		[2]: llama_upvr (readonly)
		[3]: var2_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2, arg2) -- Line 20
		--[[ Upvalues[4]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
			[3]: llama_upvr (copied, readonly)
			[4]: var2_upvr (copied, readonly)
		]]
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1_2, string.format("%s.recommendations.byUserId.%s", keyPath_upvr, arg2))
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		return llama_upvr.List.sort(llama_upvr.Dictionary.values(getDeepValue_upvr_result1), var2_upvr)
	end
end