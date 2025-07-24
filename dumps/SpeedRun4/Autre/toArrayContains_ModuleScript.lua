-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:54
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

local Parent = script.Parent.Parent
local arrayContains_upvr = require(Parent.luaUtils.arrayContains)
local inspect_upvr = require(Parent.Parent.LuauPolyfill).util.inspect
return function(arg1, arg2, arg3) -- Line 20, Named "toArrayContains"
	--[[ Upvalues[2]:
		[1]: arrayContains_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	local var2_result1 = arrayContains_upvr(arg1, arg2, arg3)
	local var5 = ""
	if not var2_result1 then
		var5 = "received tbl: "..inspect_upvr(arg2).." expected item to be in table: "..inspect_upvr(arg1)
	end
	return {
		pass = var2_result1;
		message = var5;
	}
end