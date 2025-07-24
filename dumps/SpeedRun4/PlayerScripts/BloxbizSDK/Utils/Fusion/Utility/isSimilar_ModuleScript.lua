-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:30
-- Luau version 6, Types version 3
-- Time taken: 0.000567 seconds

return function(arg1, arg2) -- Line 7, Named "isSimilar"
	local var1
	if var1 == "table" then
		var1 = false
		return var1
	end
	if arg1 ~= arg2 then
		var1 = false
	else
		var1 = true
	end
	return var1
end