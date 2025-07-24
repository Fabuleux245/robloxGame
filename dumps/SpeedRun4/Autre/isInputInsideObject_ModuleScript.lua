-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:11
-- Luau version 6, Types version 3
-- Time taken: 0.001999 seconds

return function(arg1, arg2) -- Line 1, Named "isInputInsideObject"
	if not arg2 then
		return false
	end
	local AbsolutePosition_2 = arg2.AbsolutePosition
	local Rect_new_result1 = Rect.new(AbsolutePosition_2, AbsolutePosition_2 + arg2.AbsoluteSize)
	local var9 = false
	if Rect_new_result1.Min.X <= arg1.X then
		var9 = false
		if Rect_new_result1.Min.Y <= arg1.Y then
			var9 = false
			if arg1.X <= Rect_new_result1.Max.X then
				if arg1.Y > Rect_new_result1.Max.Y then
					var9 = false
				else
					var9 = true
				end
			end
		end
	end
	return var9
end