-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:06
-- Luau version 6, Types version 3
-- Time taken: 0.000594 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("AppChat").Parent.ArgCheck)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "string", "patternMatcher.string")
	ArgCheck_upvr.isType(arg2, "string", "patternMatcher.pattern")
	local any_find_result1, any_find_result2 = arg1:lower():find(arg2)
	if not any_find_result1 then
		return false, nil
	end
	return true, {
		prefix = arg1:sub(1, any_find_result1 - 1);
		suffix = arg1:sub(any_find_result2 + 1);
	}
end