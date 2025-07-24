-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:39
-- Luau version 6, Types version 3
-- Time taken: 0.000770 seconds

local module_upvr = {
	CalculateTargetCFrame = function(arg1) -- Line 9
		local var3
		if 0.9 < math.abs(arg1.LookVector.Y) then
			var3 = arg1.UpVector
		else
			var3 = arg1.LookVector
		end
		return CFrame.lookAt(arg1.Position, arg1.Position + Vector3.new(var3.X, 0, var3.Z).Unit)
	end;
	AdjustTargetCFrameWithExtents = function(arg1, arg2, arg3) -- Line 24
		return arg1 + (arg1 - arg1.Position) * ((arg2 + arg3) / 2)
	end;
}
function module_upvr.CalculateTargetCFrameWithExtents(arg1, arg2, arg3) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.AdjustTargetCFrameWithExtents(module_upvr.CalculateTargetCFrame(arg1), arg2, arg3)
end
return module_upvr