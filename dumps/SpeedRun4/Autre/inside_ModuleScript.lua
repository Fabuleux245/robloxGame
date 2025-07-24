-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:09
-- Luau version 6, Types version 3
-- Time taken: 0.002995 seconds

local function _(arg1, arg2) -- Line 4, Named "isPointInside"
	local var3 = false
	if arg2.Min.X <= arg1.X then
		var3 = false
		if arg1.X <= arg2.Max.X then
			var3 = false
			if arg2.Min.Y <= arg1.Y then
				if arg1.Y > arg2.Max.Y then
					var3 = false
				else
					var3 = true
				end
			end
		end
	end
	return var3
end
local toRect_upvr = require(script.Parent.toRect)
local returnValue_upvr = require(script.Parent.returnValue)
return function(arg1, arg2) -- Line 26, Named "inside"
	--[[ Upvalues[2]:
		[1]: toRect_upvr (readonly)
		[2]: returnValue_upvr (readonly)
	]]
	local toRect_upvr_result1_2 = toRect_upvr(arg1)
	local toRect_upvr_result1 = toRect_upvr(arg2)
	local Min_2 = toRect_upvr_result1_2.Min
	local var19 = false
	if toRect_upvr_result1.Min.X <= Min_2.X then
		var19 = false
		if Min_2.X <= toRect_upvr_result1.Max.X then
			var19 = false
			if toRect_upvr_result1.Min.Y <= Min_2.Y then
				if Min_2.Y > toRect_upvr_result1.Max.Y then
					var19 = false
				else
					var19 = true
				end
			end
		end
	end
	if var19 then
		local Max_2 = toRect_upvr_result1_2.Max
		var19 = false
		if toRect_upvr_result1.Min.X <= Max_2.X then
			var19 = false
			if Max_2.X <= toRect_upvr_result1.Max.X then
				var19 = false
				if toRect_upvr_result1.Min.Y <= Max_2.Y then
					if Max_2.Y > toRect_upvr_result1.Max.Y then
						var19 = false
					else
						var19 = true
					end
				end
			end
		end
	end
	return returnValue_upvr(var19, "Is inside the element", "Is not inside the element")
end