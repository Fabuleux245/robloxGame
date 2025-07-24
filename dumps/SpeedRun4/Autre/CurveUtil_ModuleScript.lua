-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:30
-- Luau version 6, Types version 3
-- Time taken: 0.002699 seconds

local module_upvr = {}
function module_upvr.Expt(arg1, arg2, arg3, arg4, arg5) -- Line 5
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if math.abs(arg3 - arg2) < 0.01 then
		return arg3
	end
	return arg2 + (arg3 - arg2) * module_upvr:Expty(arg2, arg3, arg4, arg5)
end
function module_upvr.Expty(arg1, arg2, arg3, arg4, arg5) -- Line 17
	return 1 - math.exp(-(-math.log(1 - arg4)) * arg5)
end
function module_upvr.Sign(arg1, arg2) -- Line 24
	if 0 < arg2 then
		return 1
	end
	if arg2 < 0 then
		return -1
	end
	return 0
end
function module_upvr.BezierValForT(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 34
	return (1 - arg6) * (1 - arg6) * (1 - arg6) * arg2 + 3 * arg6 * (1 - arg6) * (1 - arg6) * arg3 + 3 * arg6 * arg6 * (1 - arg6) * arg4 + arg6 * arg6 * arg6 * arg5
end
module_upvr._BezierPt2ForT = {
	x = 0;
	y = 0;
}
function module_upvr.BezierPt2ForT(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 43
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr._BezierPt2ForT.x = module_upvr:BezierValForT(arg2, arg4, arg6, arg8, arg10)
	module_upvr._BezierPt2ForT.y = module_upvr:BezierValForT(arg3, arg5, arg7, arg9, arg10)
	return module_upvr._BezierPt2ForT
end
function module_upvr.YForPointOf2PtLine(arg1, arg2, arg3, arg4) -- Line 55
	local var3 = (arg2.y - arg3.y) / (arg2.x - arg3.x)
	return (var3 * arg4) + (arg2.y - var3 * arg2.x)
end
function module_upvr.DeltaTimeToTimescale(arg1, arg2) -- Line 63
	return arg2 / (1/60)
end
function module_upvr.SecondsToTick(arg1, arg2) -- Line 67
	return (1/60) / arg2
end
function module_upvr.ExptValueInSeconds(arg1, arg2, arg3, arg4) -- Line 71
	return 1 - math.pow(arg2 / arg3, (1) / (60 * arg4))
end
function module_upvr.NormalizedDefaultExptValueInSeconds(arg1, arg2) -- Line 75
	return arg1:ExptValueInSeconds(0.01, 1, arg2)
end
return module_upvr