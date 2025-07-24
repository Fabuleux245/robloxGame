-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:27
-- Luau version 6, Types version 3
-- Time taken: 0.001341 seconds

local module_upvr = {}
local getCalls_upvr = require(script.Parent.getCalls)
local fmtArgs_upvr = require(script.Parent.fmtArgs)
function module_upvr.args(arg1, arg2) -- Line 10
	--[[ Upvalues[2]:
		[1]: getCalls_upvr (readonly)
		[2]: fmtArgs_upvr (readonly)
	]]
	local getCalls_upvr_result1 = getCalls_upvr(arg1)
	local len = #getCalls_upvr_result1
	local var8
	if len == 0 then
		var8 = false
		return var8, "mock was not called"
	end
	var8 = nil
	for i = 1, len do
		local arg2_result1, arg2_result2 = arg2(getCalls_upvr_result1[i].args)
		var8 = arg2_result2
		if arg2_result1 then
			return true
		end
	end
	if not var8 then
		i = fmtArgs_upvr(getCalls_upvr_result1[len].args)
		var8 = i.." did not match"
	end
	if 1 < len then
		i = len - 1
		var8 = var8.." (+"..i.." other calls)"
	end
	return false, var8
end
local cmpLiteralArgs_upvr = require(script.Parent.cmpLiteralArgs)
function module_upvr.literals(arg1, ...) -- Line 36
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: cmpLiteralArgs_upvr (readonly)
	]]
	local packed_upvr = table.pack(...)
	return module_upvr.args(arg1, function(arg1_2) -- Line 38
		--[[ Upvalues[2]:
			[1]: cmpLiteralArgs_upvr (copied, readonly)
			[2]: packed_upvr (readonly)
		]]
		return cmpLiteralArgs_upvr(packed_upvr, arg1_2)
	end)
end
local cmpPredicateArgs_upvr = require(script.Parent.cmpPredicateArgs)
function module_upvr.predicates(arg1, ...) -- Line 43
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: cmpPredicateArgs_upvr (readonly)
	]]
	local packed_upvr_2 = table.pack(...)
	return module_upvr.args(arg1, function(arg1_3) -- Line 45
		--[[ Upvalues[2]:
			[1]: cmpPredicateArgs_upvr (copied, readonly)
			[2]: packed_upvr_2 (readonly)
		]]
		return cmpPredicateArgs_upvr(packed_upvr_2, arg1_3)
	end)
end
return module_upvr