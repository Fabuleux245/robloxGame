-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:47
-- Luau version 6, Types version 3
-- Time taken: 0.001142 seconds

local function deepCopy_upvr(arg1, arg2) -- Line 9, Named "deepCopy"
	--[[ Upvalues[1]:
		[1]: deepCopy_upvr (readonly)
	]]
	local var15
	if var15 ~= "table" then
		return arg1
	end
	if arg2 then
		var15 = arg2[arg1]
		if var15 then
			var15 = arg2[arg1]
			return var15
		end
	end
	var15 = arg2
	if not var15 then
		var15 = {}
	end
	local setmetatable_result1 = setmetatable({}, getmetatable(arg1))
	var15[arg1] = setmetatable_result1
	for i, v in pairs(arg1) do
		setmetatable_result1[deepCopy_upvr(i, var15)] = deepCopy_upvr(v, var15)
		local var20
	end
	return var20
end
return deepCopy_upvr