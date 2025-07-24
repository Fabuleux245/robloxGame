-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:40
-- Luau version 6, Types version 3
-- Time taken: 0.001499 seconds

local String_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).String
return {
	getLocation = function(arg1, arg2) -- Line 27, Named "getLocation"
		--[[ Upvalues[1]:
			[1]: String_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_findOr_result1 = String_upvr.findOr(arg1.body, {"\r\n", '\r', '\n'})
		local var4
		while any_findOr_result1 ~= nil and any_findOr_result1.index < arg2 do
			var4 += 1
		end
		return {
			line = var4;
			column = arg2 + 1 - any_findOr_result1.index + string.len(any_findOr_result1.match);
		}
	end;
}