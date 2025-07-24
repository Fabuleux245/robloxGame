-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:23
-- Luau version 6, Types version 3
-- Time taken: 0.001109 seconds

local insert_upvr = table.insert
return function(arg1, arg2) -- Line 16, Named "groupBy"
	--[[ Upvalues[1]:
		[1]: insert_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(arg1) do
		local var10
		if typeof(arg2) == "function" then
			var10 = arg2(v, i)
		else
			var10 = v[arg2]
		end
		if var10 ~= nil then
			if module[var10] ~= nil then
				insert_upvr(module[var10], v)
			else
				module[var10] = {v}
			end
		end
	end
	return module
end