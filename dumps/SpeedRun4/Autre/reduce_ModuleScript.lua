-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:11
-- Luau version 6, Types version 3
-- Time taken: 0.001390 seconds

return function(arg1, arg2, arg3) -- Line 10
	local var4
	if _G.__DEV__ then
		var4 = arg1
		if typeof(var4) ~= "table" then
			var4 = string.format("Array.reduce called on %s", typeof(arg1))
			error(var4)
		end
		var4 = arg2
		if typeof(var4) ~= "function" then
			var4 = "callback is not a function"
			error(var4)
		end
	end
	local len = #arg1
	var4 = nil
	local var6 = 1
	if arg3 ~= nil then
		var4 = arg3
	else
		var6 = 2
		if len == 0 then
			error("reduce of empty array with no initial value")
		end
		var4 = arg1[1]
	end
	for i = var6, len do
		var4 = arg2(var4, arg1[i], i, arg1)
	end
	return var4
end