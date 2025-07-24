-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:12
-- Luau version 6, Types version 3
-- Time taken: 0.001650 seconds

return {
	IsPointInRect = function(arg1, arg2) -- Line 4, Named "IsPointInRect"
		local Min_2 = arg1.Min
		local Max = arg1.Max
		local var9 = false
		if Min_2.X <= arg2.X then
			var9 = false
			if Min_2.Y <= arg2.Y then
				var9 = false
				if arg2.X <= Max.X then
					if arg2.Y > Max.Y then
						var9 = false
					else
						var9 = true
					end
				end
			end
		end
		return var9
	end;
}