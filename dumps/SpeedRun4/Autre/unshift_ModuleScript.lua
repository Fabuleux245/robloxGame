-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:15
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

local isArray_upvr = require(script.Parent.isArray)
return function(arg1, ...) -- Line 8
	--[[ Upvalues[1]:
		[1]: isArray_upvr (readonly)
	]]
	if _G.__DEV__ and not isArray_upvr(arg1) then
		error(string.format("Array.unshift called on non-array %s", typeof(arg1)))
	end
	local arg_count = select('#', ...)
	if 0 < arg_count then
		for i = arg_count, 1, -1 do
			table.insert(arg1, 1, select(i, ...))
		end
	end
	return #arg1
end