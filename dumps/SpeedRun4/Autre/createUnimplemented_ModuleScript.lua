-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:52
-- Luau version 6, Types version 3
-- Time taken: 0.000292 seconds

return function(arg1) -- Line 2, Named "createUnimplemented"
	return function() -- Line 3
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		error(`Calling unimplemented function {arg1}`)
	end
end