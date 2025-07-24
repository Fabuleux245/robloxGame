-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:43
-- Luau version 6, Types version 3
-- Time taken: 0.000906 seconds

local None_upvr = require(script.Parent.Parent.None)
return function(...) -- Line 4, Named "zipAll"
	--[[ Upvalues[1]:
		[1]: None_upvr (readonly)
	]]
	local module = {}
	local arg_count = select('#', ...)
	local var10
	for i = 2, arg_count do
		local len = #select(i, ...)
		if var10 < len then
			var10 = len
		end
	end
	for i_2 = 1, var10 do
		module[i_2] = {}
		for i_3 = 1, arg_count do
			if select(i_3, ...)[i_2] == nil then
				module[i_2][i_3] = None_upvr
			else
				module[i_2][i_3] = select(i_3, ...)[i_2]
			end
		end
	end
	return module
end