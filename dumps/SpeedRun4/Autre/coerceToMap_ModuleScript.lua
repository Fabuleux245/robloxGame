-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:22
-- Luau version 6, Types version 3
-- Time taken: 0.000537 seconds

local Parent = script.Parent.Parent
local instanceof_upvr = require(Parent.instanceof)
local Parent_2_upvr = require(script.Parent)
local Object_upvr = require(Parent.Object)
return function(arg1) -- Line 9, Named "coerceToMap"
	--[[ Upvalues[3]:
		[1]: instanceof_upvr (readonly)
		[2]: Parent_2_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = arg1
		return var5
	end
	if not instanceof_upvr(arg1, Parent_2_upvr) or not INLINED() then
		var5 = Parent_2_upvr.new(Object_upvr.entries(arg1))
	end
	return var5
end