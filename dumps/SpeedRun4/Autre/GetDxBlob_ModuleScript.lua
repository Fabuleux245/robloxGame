-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:15
-- Luau version 6, Types version 3
-- Time taken: 0.000328 seconds

return function(arg1) -- Line 1
	if arg1 ~= nil and arg1.errors ~= nil and arg1.errors[1] and arg1.errors[1].fieldData then
		return arg1.errors[1].fieldData
	end
	return ""
end