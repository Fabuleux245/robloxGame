-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:07
-- Luau version 6, Types version 3
-- Time taken: 0.001669 seconds

local toRect_upvr = require(script.Parent.toRect)
local returnValue_upvr = require(script.Parent.returnValue)
return function(arg1, arg2, arg3) -- Line 28, Named "alignedHorizontally"
	--[[ Upvalues[2]:
		[1]: toRect_upvr (readonly)
		[2]: returnValue_upvr (readonly)
	]]
	local var1_result1_2 = toRect_upvr(arg1)
	local var1_result1 = toRect_upvr(arg2)
	local var5
	if arg3 == Enum.HorizontalAlignment.Left then
		if var1_result1_2.Min.X ~= var1_result1.Min.X then
			var5 = false
		else
			var5 = true
		end
		return returnValue_upvr(var5, "", "")
	end
	if arg3 == Enum.HorizontalAlignment.Center then
		var5 = var1_result1_2.Min + var1_result1_2.Max
		local Min = var1_result1.Min
		var5 = (Min + var1_result1.Max) / 2
		if (var5 / 2).X ~= var5.X then
			Min = false
		else
			Min = true
		end
		return returnValue_upvr(Min, "", "")
	end
	if arg3 == Enum.HorizontalAlignment.Right then
		if var1_result1_2.Max.X ~= var1_result1.Max.X then
			var5 = false
		else
			var5 = true
		end
		return returnValue_upvr(var5, "", "")
	end
	return returnValue_upvr(false, "Invalid horizontal alignment!")
end