-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.000963 seconds

local arrayContains_upvr = require(script.Parent.Parent.luaUtils.arrayContains)
local inspect_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).util.inspect
return function(arg1, arg2, arg3) -- Line 20, Named "toHaveSameMembers"
	--[[ Upvalues[2]:
		[1]: arrayContains_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	local var7
	if #arg1 ~= #arg2 then
		var7 = false
	else
		var7 = true
	end
	if not var7 then
		return {
			pass = false;
			message = "Received array length %s / expected length %s":format(tostring(#arg1), tostring(#arg2));
		}
	end
	for _, v in ipairs(arg2) do
		if not arrayContains_upvr(arg1, v, arg3) then
			return {
				pass = false;
				message = "Expected item %s to be in Array %s":format(inspect_upvr(v), inspect_upvr(arg1));
			}
		end
	end
	return {
		pass = true;
		message = "";
	}
end