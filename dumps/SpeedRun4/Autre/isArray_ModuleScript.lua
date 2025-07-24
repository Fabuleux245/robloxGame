-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:09
-- Luau version 6, Types version 3
-- Time taken: 0.001769 seconds

return function(arg1) -- Line 2
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if typeof(arg1) ~= "table" then
		return false
	end
	var6 = arg1
	if next(var6) == nil then
		return true
	end
	if #arg1 == 0 then
		var6 = false
		return var6
	end
	var6 = 0
	for i in pairs(arg1) do
		if typeof(i) ~= "number" then
			return false
		end
		if i % 1 ~= 0 or i < 1 then
			return false
		end
		var6 += 1
	end
	if 0 + i ~= var6 * (var6 + 1) / 2 then
	else
	end
	return true
end