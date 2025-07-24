-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:10
-- Luau version 6, Types version 3
-- Time taken: 0.005206 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local PopoverSide_upvr = require(Foundation.Enums.PopoverSide)
local function _(arg1, arg2, arg3, arg4) -- Line 9, Named "calculatePopoverBounds"
	--[[ Upvalues[1]:
		[1]: PopoverSide_upvr (readonly)
	]]
	local var3 = arg4
	if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
		var3 += Vector2.new(0, arg2 + arg3)
		return var3
	end
	return var3 + Vector2.new(arg2 + arg3, 0)
end
local PopoverAlign_upvr = require(Foundation.Enums.PopoverAlign)
return {
	isOnScreen = function(arg1, arg2) -- Line 24, Named "isOnScreen"
		if arg2.Max.X < arg1.Min.X or arg1.Max.X < arg2.Min.X or arg2.Max.Y < arg1.Min.Y or arg1.Max.Y < arg2.Min.Y then
			return false
		end
		return true
	end;
	calculateSide = function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 37, Named "calculateSide"
		--[[ Upvalues[1]:
			[1]: PopoverSide_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
		local var4 = arg6
		if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
			var4 += Vector2.new(0, arg2 + arg5)
		else
			var4 += Vector2.new(arg2 + arg5, 0)
		end
		-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 37. Error Block 10 start (CF ANALYSIS FAILED)
		do
			return PopoverSide_upvr.Bottom
		end
		do
			return arg1
		end
		-- KONSTANTERROR: [56] 37. Error Block 10 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 41. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 41. Error Block 11 end (CF ANALYSIS FAILED)
	end;
	calculatePositions = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 66, Named "calculatePositions"
		--[[ Upvalues[2]:
			[1]: PopoverSide_upvr (readonly)
			[2]: PopoverAlign_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var6 = arg5.Max - arg5.Min
		local var7 = arg6.Max - arg6.Min
		local var8 = arg8
		if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
			var8 += Vector2.new(0, arg2 + arg7)
		else
			var8 += Vector2.new(arg2 + arg7, 0)
		end
		local var9 = var8
		var8 = 0
		if arg1 == PopoverSide_upvr.Top then
		elseif arg1 == PopoverSide_upvr.Bottom then
		elseif arg1 == PopoverSide_upvr.Left then
			var8 = arg5.Min.X - var9.X
		elseif arg1 == PopoverSide_upvr.Right then
			var8 = arg5.Max.X + var9.X - arg8.X
		end
		if arg3 == PopoverAlign_upvr.Start then
			if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
				var8 = arg5.Min.X + arg4
			else
			end
		elseif arg3 == PopoverAlign_upvr.Center then
			if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
				var8 = arg5.Min.X + arg4 + (var6.X - var9.X) / 2
			else
			end
		elseif arg3 == PopoverAlign_upvr.End then
			if arg1 == PopoverSide_upvr.Top or arg1 == PopoverSide_upvr.Bottom then
				var8 = arg5.Min.X + arg4 + var6.X - var9.X
			else
			end
		end
		var8 -= arg6.Min.X
		var8 = math.clamp(var8, 0, math.max(0, var7.X - var9.X))
		return Vector2.new(var8, math.clamp(arg5.Min.Y + arg4 + var6.Y - var9.Y - arg6.Min.Y, 0, math.max(0, var7.Y - var9.Y))), Vector2.new(math.max(var6.X / 2 + var9.X - var6.X, var9.X / 2), math.max(var6.Y / 2 + var9.Y - var6.Y, var9.Y / 2))
	end;
}