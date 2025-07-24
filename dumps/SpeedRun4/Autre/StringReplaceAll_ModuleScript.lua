-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:32
-- Luau version 6, Types version 3
-- Time taken: 0.000652 seconds

return function(arg1, arg2) -- Line 9
	local var6
	if var6 ~= "string" then
		var6 = ""
		return var6
	end
	var6 = type(arg2)
	if var6 ~= "table" then
		return arg1
	end
	var6 = arg1
	for i, v in pairs(arg2) do
		if type(i) == "string" and type(v) == "string" then
			var6 = string.gsub(var6, i, v)
		end
	end
	return var6
end