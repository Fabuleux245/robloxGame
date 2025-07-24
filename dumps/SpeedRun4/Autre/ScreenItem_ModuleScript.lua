-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:22
-- Luau version 6, Types version 3
-- Time taken: 0.000351 seconds

return {
	Priority = {
		Default = 1;
		Overlay = 2;
		Elevated = 3;
		Immediate = 4;
	};
	new = function(arg1, arg2, arg3) -- Line 10, Named "new"
		local module = {}
		module.id = arg1
		module.priority = arg2
		module.createdAt = tick()
		module.data = arg3
		return module
	end;
}