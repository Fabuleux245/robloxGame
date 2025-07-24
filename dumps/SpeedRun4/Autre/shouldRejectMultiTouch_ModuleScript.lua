-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:12
-- Luau version 6, Types version 3
-- Time taken: 0.000437 seconds

return function(arg1, arg2) -- Line 3
	if arg1 == nil or arg2 == nil then
		return false
	end
	local var2 = false
	if arg1.UserInputType == Enum.UserInputType.Touch then
		if arg2 == arg1 then
			var2 = false
		else
			var2 = true
		end
	end
	return var2
end