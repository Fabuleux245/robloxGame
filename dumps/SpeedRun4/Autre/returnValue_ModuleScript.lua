-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:13
-- Luau version 6, Types version 3
-- Time taken: 0.000573 seconds

return function(arg1, arg2, arg3) -- Line 1
	local module = {}
	module.pass = arg1
	local var3
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var3 = arg2
		return var3
	end
	if not arg1 or not INLINED() then
		var3 = arg3
		if not var3 then
			var3 = arg2
		end
	end
	module.message = var3
	return module
end