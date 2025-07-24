-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:23
-- Luau version 6, Types version 3
-- Time taken: 0.000760 seconds

local Parent = script.Parent.Parent
local instanceof_upvr = require(Parent.instanceof)
local Parent_upvr = require(script.Parent)
local reduce_upvr = require(Parent.Array.reduce)
return function(arg1) -- Line 9, Named "coerceToTable"
	--[[ Upvalues[3]:
		[1]: instanceof_upvr (readonly)
		[2]: Parent_upvr (readonly)
		[3]: reduce_upvr (readonly)
	]]
	if not instanceof_upvr(arg1, Parent_upvr) then
		return arg1
	end
	return reduce_upvr(arg1:entries(), function(arg1_2, arg2) -- Line 15
		arg1_2[arg2[1]] = arg2[2]
		return arg1_2
	end, {})
end