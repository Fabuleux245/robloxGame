-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:15
-- Luau version 6, Types version 3
-- Time taken: 0.000513 seconds

return function(arg1) -- Line 11, Named "toRect"
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "Rect" then
		return arg1
	end
	if typeof_result1 == "Instance" then
		return Rect.new(arg1.AbsolutePosition, arg1.AbsolutePosition + arg1.AbsoluteSize)
	end
end