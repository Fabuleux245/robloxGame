-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:18
-- Luau version 6, Types version 3
-- Time taken: 0.002654 seconds

return {
	pointInAxisAlignedBounds = function(arg1, arg2, arg3) -- Line 7, Named "pointInAxisAlignedBounds"
		local var10 = arg1 - arg2
		local var11 = false
		if -arg3.X / 2 <= var10.X then
			var11 = false
			if var10.X <= arg3.X / 2 then
				var11 = false
				if -arg3.Y / 2 <= var10.Y then
					var11 = false
					if var10.Y <= arg3.Y / 2 then
						var11 = false
						if -arg3.Z / 2 <= var10.Z then
							if var10.Z > arg3.Z / 2 then
								var11 = false
							else
								var11 = true
							end
						end
					end
				end
			end
		end
		return var11
	end;
}