-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:49
-- Luau version 6, Types version 3
-- Time taken: 0.000333 seconds

return function(arg1) -- Line 5, Named "instant"
	return {
		step = function() -- Line 7, Named "step"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local module = {}
			module.value = arg1
			module.complete = true
			return module
		end;
	}
end