-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:57
-- Luau version 6, Types version 3
-- Time taken: 0.000528 seconds

local deepContains_upvr = require(script.Parent.Parent.luaUtils.deepContains)
local inspect_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).util.inspect
return function(arg1, arg2) -- Line 20, Named "toObjectContain"
	--[[ Upvalues[2]:
		[1]: deepContains_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	local var1_result1 = deepContains_upvr(arg1, arg2)
	local var4 = ""
	if not var1_result1 then
		var4 = "received tbl: "..inspect_upvr(arg2).." expected item to be in table: "..inspect_upvr(arg1)
	end
	return {
		pass = var1_result1;
		message = var4;
	}
end