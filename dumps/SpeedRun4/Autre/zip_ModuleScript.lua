-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:42
-- Luau version 6, Types version 3
-- Time taken: 0.000680 seconds

return function(...) -- Line 2, Named "zip"
	local module = {}
	local arg_count = select('#', ...)
	local var9
	for i = 2, arg_count do
		local len = #select(i, ...)
		if len < var9 then
			var9 = len
		end
	end
	for i_2 = 1, var9 do
		module[i_2] = {}
		for i_3 = 1, arg_count do
			module[i_2][i_3] = select(i_3, ...)[i_2]
		end
	end
	return module
end