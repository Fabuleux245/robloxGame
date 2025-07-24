-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:26
-- Luau version 6, Types version 3
-- Time taken: 0.001359 seconds

local var2_upvr = "([".."$%^()-[].?":gsub("(.)", "%%%1").."])"
return function(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[1]:
		[1]: var2_upvr (readonly)
	]]
	local len = #arg1
	local var6
	if arg3 ~= nil then
		if arg3 < 1 then
			var6 = 1
		else
			var6 = arg3
		end
	else
		var6 = 1
	end
	if #arg2 == 0 then
		if len < var6 then
			return len
		end
		return var6
	end
	if len < var6 then
		return -1
	end
	local any_gsub_result1 = arg2:gsub(var2_upvr, "%%%1")
	for i = var6, len do
		if string.sub(arg1, i, i + #any_gsub_result1 - 1) == any_gsub_result1 then
			return i
		end
	end
	return -1
end