-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:01
-- Luau version 6, Types version 3
-- Time taken: 0.001742 seconds

local isArray_upvr = require(script.Parent.isArray)
local var3_upvr = "Array.concat(...) only works with array-like tables but ".."it received an object-like table.\nYou can avoid this error by wrapping the ".."object-like table into an array. Example: `concat({1, 2}, {a = true})` should ".."be `concat({1, 2}, { {a = true} }`"
return function(arg1, ...) -- Line 14, Named "concat"
	--[[ Upvalues[2]:
		[1]: isArray_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	local var8
	local var9
	if isArray_upvr(arg1) then
		var8 = table.clone(arg1)
		var9 = #arg1
	else
		var9 += 1
		var8 = {}
		var8[var9] = arg1
	end
	for i = 1, select('#', ...) do
		local selected_arg = select(i, ...)
		if selected_arg == nil then
		elseif typeof(selected_arg) == "table" then
			if _G.__DEV__ and not isArray_upvr(selected_arg) then
				error(var3_upvr)
			end
			for i_2 = 1, #selected_arg do
				var9 += 1
				var8[var9] = selected_arg[i_2]
			end
		else
			var9 += 1
			var8[var9] = selected_arg
		end
	end
	return var8
end