-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:42
-- Luau version 6, Types version 3
-- Time taken: 0.000685 seconds

return function(arg1, arg2) -- Line 6, Named "migrateFontSize"
	local Size_100 = arg2.Size.Size_100
	local Size_600 = arg2.Size.Size_600
	local var3
	if Size_600 <= var3 and var3 <= arg2.Size.Size_900 then
		var3 = Size_600
	end
	return math.round(var3 / Size_100) * Size_100
end