-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:25
-- Luau version 6, Types version 3
-- Time taken: 0.000571 seconds

return {
	named = function(arg1) -- Line 16, Named "named"
		local var2_upvr
		if type(arg1) ~= "string" then
			var2_upvr = false
		else
			var2_upvr = true
		end
		assert(var2_upvr, "Symbols must be created using a string name!")
		var2_upvr = true
		local newproxy_result1 = newproxy(var2_upvr)
		var2_upvr = "Symbol(%s)":format(arg1)
		getmetatable(newproxy_result1).__tostring = function() -- Line 23
			--[[ Upvalues[1]:
				[1]: var2_upvr (readonly)
			]]
			return var2_upvr
		end
		return newproxy_result1
	end;
}