-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:12
-- Luau version 6, Types version 3
-- Time taken: 0.000670 seconds

local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2) -- Line 10, Named "getTweenRatio"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local DelayTime = arg1.DelayTime
	local Time = arg1.Time
	local var4 = DelayTime + Time
	if arg1.Reverses then
		var4 += Time
	end
	if var4 * (1 + arg1.RepeatCount) <= arg2 then
		return 1
	end
	local var5 = arg2 % var4
	if var5 <= DelayTime then
		return 0
	end
	local var6 = (var5 - DelayTime) / Time
	if 1 < var6 then
		var6 = 2 - var6
	end
	return TweenService_upvr:GetValue(var6, arg1.EasingStyle, arg1.EasingDirection)
end