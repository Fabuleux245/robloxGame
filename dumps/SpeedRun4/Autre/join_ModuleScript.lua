-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:24
-- Luau version 6, Types version 3
-- Time taken: 0.000524 seconds

return function(...) -- Line 1, Named "join"
	local module = {}
	for i = 1, select('#', ...) do
		local selected_arg = select(i, ...)
		if selected_arg ~= nil then
			for i_2, v in pairs(selected_arg) do
				module[i_2] = v
			end
		end
	end
	return module
end