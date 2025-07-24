-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:09
-- Luau version 6, Types version 3
-- Time taken: 0.000683 seconds

return {
	maybe = function(arg1) -- Line 10, Named "maybe"
		local xpcall_result1, xpcall_result2, xpcall_result3 = xpcall(function() -- Line 12
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1(), true
		end, function() -- Line 14
		end)
		if xpcall_result3 then
			return xpcall_result2
		end
		return nil
	end;
}