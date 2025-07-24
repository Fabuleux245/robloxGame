-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:26
-- Luau version 6, Types version 3
-- Time taken: 0.000791 seconds

local assertEqual_upvr = require(script.Parent.assertEqual)
return function(arg1) -- Line 13, Named "isUppercase"
	--[[ Upvalues[1]:
		[1]: assertEqual_upvr (readonly)
	]]
	local var2
	if 0 >= #arg1 then
		var2 = false
	else
		var2 = true
	end
	assertEqual_upvr(var2, true, "Attempted to call Dash.isUppercase with an empty string")
	local any_sub_result1 = arg1:sub(1, 1)
	if any_sub_result1 ~= any_sub_result1:upper() then
		var2 = false
	else
		var2 = true
	end
	return var2
end