-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:37
-- Luau version 6, Types version 3
-- Time taken: 0.001221 seconds

return function(arg1, arg2) -- Line 1, Named "isPointInGuiObjectBounds"
	if not arg1 then
		return false
	end
	local AbsolutePosition_2 = arg1.AbsolutePosition
	local AbsoluteSize = arg1.AbsoluteSize
	local var9 = false
	if AbsolutePosition_2.X <= arg2.X then
		var9 = false
		if arg2.X <= AbsolutePosition_2.X + AbsoluteSize.X then
			var9 = false
			if AbsolutePosition_2.Y <= arg2.Y then
				if arg2.Y > AbsolutePosition_2.Y + AbsoluteSize.Y then
					var9 = false
				else
					var9 = true
				end
			end
		end
	end
	return var9
end