-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:14
-- Luau version 6, Types version 3
-- Time taken: 0.001560 seconds

local new = require(script.Parent["ReactFiberStack.new"])
local module = {
	InvisibleParentSuspenseContext = 1;
	ForceSuspenseFallback = 2;
}
local any_createCursor_result1_upvr = new.createCursor(0)
module.suspenseStackCursor = any_createCursor_result1_upvr
function module.hasSuspenseContext(arg1, arg2) -- Line 59
	local var4
	if bit32.band(arg1, arg2) == 0 then
		var4 = false
	else
		var4 = true
	end
	return var4
end
function module.setDefaultShallowSuspenseContext(arg1) -- Line 66
	return bit32.band(arg1, 1)
end
function module.setShallowSuspenseContext(arg1, arg2) -- Line 72
	return bit32.bor(bit32.band(arg1, 1), arg2)
end
function module.addSubtreeSuspenseContext(arg1, arg2) -- Line 82
	return bit32.bor(arg1, arg2)
end
local push_upvr = new.push
function module.pushSuspenseContext(arg1, arg2) -- Line 89
	--[[ Upvalues[2]:
		[1]: push_upvr (readonly)
		[2]: any_createCursor_result1_upvr (readonly)
	]]
	push_upvr(any_createCursor_result1_upvr, arg2, arg1)
end
local pop_upvr = new.pop
function module.popSuspenseContext(arg1) -- Line 93
	--[[ Upvalues[2]:
		[1]: pop_upvr (readonly)
		[2]: any_createCursor_result1_upvr (readonly)
	]]
	pop_upvr(any_createCursor_result1_upvr, arg1)
end
return module