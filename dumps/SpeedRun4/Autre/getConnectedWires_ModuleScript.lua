-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:23
-- Luau version 6, Types version 3
-- Time taken: 0.000368 seconds

return function(arg1, arg2) -- Line 1, Named "getConnectedWires"
	local pcall_result1, pcall_result2 = pcall(function() -- Line 2
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1:GetConnectedWires(arg2)
	end)
	if pcall_result1 then
		return pcall_result2
	end
	return {}
end