-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:33
-- Luau version 6, Types version 3
-- Time taken: 0.000801 seconds

local function deepcopy_upvr(arg1) -- Line 1, Named "deepcopy"
	--[[ Upvalues[1]:
		[1]: deepcopy_upvr (readonly)
	]]
	if type(arg1) == "table" then
		for i, v in next, arg1 do
			({})[deepcopy_upvr(i)] = deepcopy_upvr(v)
			local var6
		end
		setmetatable(var6, deepcopy_upvr(getmetatable(arg1)))
		return var6
	end
	return arg1
end
return deepcopy_upvr