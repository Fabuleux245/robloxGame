-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:59
-- Luau version 6, Types version 3
-- Time taken: 0.000531 seconds

return function(arg1) -- Line 3
	local module = {}
	for i, v in pairs(arg1) do
		module[i] = #v
	end
	return module
end