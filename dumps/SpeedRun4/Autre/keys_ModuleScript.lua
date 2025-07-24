-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:33
-- Luau version 6, Types version 3
-- Time taken: 0.001460 seconds

local Parent = script.Parent.Parent
local instanceof_upvr = require(Parent.instanceof)
local Set_upvr = require(Parent.Set)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: instanceof_upvr (readonly)
		[2]: Set_upvr (readonly)
	]]
	if arg1 == nil then
		error("cannot extract keys from a nil value")
	end
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" then
		local tbl = {}
		if instanceof_upvr(arg1, Set_upvr) then
			return tbl
		end
		for i in pairs(arg1) do
			table.insert(tbl, i)
			local var14
		end
		return var14
	end
	if typeof_result1 == "string" then
		local any_len_result1 = arg1:len()
		for i_2 = 1, any_len_result1 do
			table.create(any_len_result1)[i_2] = tostring(i_2)
			local var16
		end
	end
	return var16
end