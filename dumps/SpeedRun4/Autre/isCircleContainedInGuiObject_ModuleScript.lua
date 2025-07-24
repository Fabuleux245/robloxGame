-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:09
-- Luau version 6, Types version 3
-- Time taken: 0.002491 seconds

return function(arg1, arg2, arg3) -- Line 2
	local var12 = 0.5 * arg3.AbsoluteSize
	local var13 = (arg1) - (arg3.AbsolutePosition + var12)
	local var14 = math.atan2(var13.Y, var13.X) - math.rad(arg3.AbsoluteRotation)
	local var15 = var13.Magnitude * Vector2.new(math.cos(var14), math.sin(var14))
	local var16 = false
	if -var12.X <= var15.X - arg2 then
		var16 = false
		if var15.X + arg2 <= var12.X then
			var16 = false
			if -var12.Y <= var15.Y - arg2 then
				if var15.Y + arg2 > var12.Y then
					var16 = false
				else
					var16 = true
				end
			end
		end
	end
	return var16
end