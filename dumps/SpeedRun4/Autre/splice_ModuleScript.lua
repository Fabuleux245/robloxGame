-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:14
-- Luau version 6, Types version 3
-- Time taken: 0.001388 seconds

return function(arg1, arg2, arg3, ...) -- Line 9
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	if #arg1 < var14 then
		for i = 1, select('#', ...) do
			table.insert(arg1, select(i, ...))
		end
		return {}
	end
	local len = #arg1
	if var14 < 1 then
		var14 = math.max(len - math.abs(var14), 1)
	end
	local var16 = arg3 or len
	if 0 < var16 then
		for _ = var14, math.min(len, var14 + math.max(0, var16 - 1)) do
			table.insert({}, table.remove(arg1, var14))
			local var17
		end
	end
	for i_3 = select('#', ...), 1, -1 do
		table.insert(arg1, var14, select(i_3, ...))
	end
	return var17
end