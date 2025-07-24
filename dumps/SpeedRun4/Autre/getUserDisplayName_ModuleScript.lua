-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:13
-- Luau version 6, Types version 3
-- Time taken: 0.000272 seconds

return function(arg1, arg2) -- Line 1
	local displayName = arg2.displayName
	if not displayName then
		displayName = arg2.name
	end
	return displayName
end