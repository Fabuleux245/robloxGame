-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:29
-- Luau version 6, Types version 3
-- Time taken: 0.000527 seconds

return {
	rectangle = function(arg1, arg2) -- Line 2, Named "rectangle"
		local module_3 = {}
		module_3.top = arg2
		module_3.bottom = arg2
		module_3.left = arg1
		module_3.right = arg1
		return module_3
	end;
	square = function(arg1) -- Line 10, Named "square"
		local module_2 = {}
		module_2.top = arg1
		module_2.bottom = arg1
		module_2.left = arg1
		module_2.right = arg1
		return module_2
	end;
	quad = function(arg1, arg2, arg3, arg4) -- Line 18, Named "quad"
		local module = {}
		module.top = arg1
		module.bottom = arg3
		module.left = arg4
		module.right = arg2
		return module
	end;
}