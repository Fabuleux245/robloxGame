-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:39
-- Luau version 6, Types version 3
-- Time taken: 0.000770 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 6, Named "GetSegmentIndexFromPosition"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local degrees = math.deg(math.atan2(arg1.X, arg1.Y))
	local var3
	if degrees < 0 then
		degrees += 360
	end
	var3 = Constants_upvr.EmotesPerPage
	local _ = 360 / var3
	var3 = math.ceil(_ / 2)
	var3 = math.fmod(degrees + var3, 360)
	var3 = math.ceil(var3 / _)
	var3 += (Constants_upvr.SegmentsStartRotation + 90) / _
	var3 = math.ceil(var3)
	if Constants_upvr.EmotesPerPage < var3 then
		var3 -= Constants_upvr.EmotesPerPage
		return var3
	end
	if var3 < 1 then
	end
	return var3 + Constants_upvr.EmotesPerPage
end