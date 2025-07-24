-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:33
-- Luau version 6, Types version 3
-- Time taken: 0.011177 seconds

local module_2_upvr = {
	RateType = table.freeze({
		Duration = 1;
		Speed = 2;
	});
}
local tbl_upvr_2 = {
	CFrame = CFrame.identity;
	Color3 = Color3.new(0, 0, 0);
	number = 0;
	UDim = UDim.new(0, 0);
	UDim2 = UDim2.new(0, 0, 0, 0);
	Vector2 = Vector2.zero;
	Vector3 = Vector3.new(0, 0, 0);
}
local tbl_upvr = {
	CFrame = function(arg1, arg2) -- Line 75
		return (arg1.Position - arg2.Position).Magnitude + math.acos(arg1.LookVector:Dot(arg2.LookVector))
	end;
	Color3 = function(arg1, arg2) -- Line 80
		local var7 = arg1.R - arg2.R
		local var8 = arg1.G - arg2.G
		local var9 = arg1.B - arg2.B
		return (var7 * var7 + var8 * var8 + var9 * var9) ^ 0.5
	end;
	number = function(arg1, arg2) -- Line 86
		return math.abs(arg1 - arg2)
	end;
	UDim = function(arg1, arg2) -- Line 89
		return math.abs(arg1.Scale - arg2.Scale) + math.abs(arg1.Offset - arg2.Offset)
	end;
	UDim2 = function(arg1, arg2) -- Line 94
		local X = arg1.X
		local Y_2 = arg1.Y
		local X_2 = arg2.X
		local Y = arg2.Y
		local var17 = math.abs(X.Scale - X_2.Scale) + math.abs(X.Offset - X_2.Offset)
		local var18 = math.abs(Y_2.Scale - Y.Scale) + math.abs(Y_2.Offset - Y.Offset)
		return (var17 * var17 + var18 * var18) ^ 0.5
	end;
	Vector2 = function(arg1, arg2) -- Line 110
		return (arg1 - arg2).Magnitude
	end;
	Vector3 = function(arg1, arg2) -- Line 113
		return (arg1 - arg2).Magnitude
	end;
}
local tbl_upvr_3 = {
	CFrame = tbl_upvr_2.CFrame.Lerp;
	Color3 = tbl_upvr_2.Color3.Lerp;
	number = function(arg1, arg2, arg3) -- Line 121
		return (1 - arg3) * arg1 + arg3 * arg2
	end;
	UDim = function(arg1, arg2, arg3) -- Line 124
		local var24 = 1 - arg3
		return UDim.new(var24 * arg1.Scale + arg3 * arg2.Scale, var24 * arg1.Offset + arg3 * arg2.Offset)
	end;
	UDim2 = tbl_upvr_2.UDim2.Lerp;
	Vector2 = tbl_upvr_2.Vector2.Lerp;
	Vector3 = tbl_upvr_2.Vector3.Lerp;
}
local function _(arg1, arg2, arg3) -- Line 133, Named "DetermineEquality"
	if arg3 then
		return arg3(arg1, arg2)
	end
	if arg1 ~= arg2 then
	else
	end
	return true
end
local function _(arg1, arg2) -- Line 139, Named "DetermineDirty"
	local var25
	if arg1.EqualityFunction then
		var25 = arg1.EqualityFunction(arg1.Value, arg2)
		return var25
	end
	if arg1.Value ~= arg1.TargetValue then
		var25 = false
	else
		var25 = true
	end
	return var25
end
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 145
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var26
	if arg1 ~= nil then
		var26 = arg1
	else
		var26 = 0
	end
	local var27 = arg1 or tbl_upvr_2[typeof(var26)]
	local module = {
		Value = var27;
		StartValue = var27;
		TargetValue = var27;
	}
	var26 = arg2 or 1
	module.Rate = var26
	var26 = module_2_upvr.RateType.Duration
	module.RateType = var26
	var26 = arg3
	if not var26 then
		var26 = Enum.EasingStyle.Linear
	end
	module.EasingStyle = var26
	if not arg4 then
	end
	module.EasingDirection = Enum.EasingDirection.Out
	module.EqualityFunction = arg5
	module.InterpolationFunction = arg6
	module.StartTime = 0
	module.Dirty = false
	module.Completed = true
	return module
end
local function _(arg1, arg2, arg3) -- Line 183, Named "TweenBegin_Internal"
	local var29
	if arg1.TargetValue == arg3 then
		var29 = false
	else
		var29 = true
	end
	if var29 then
		arg1.TargetValue = arg3
		arg1.StartValue = arg1.Value
		arg1.StartTime = arg2
	end
	return var29
end
function module_2_upvr.Begin(arg1, arg2, arg3) -- Line 200
	local var30
	if arg1.TargetValue == arg3 then
		var30 = false
	else
		var30 = true
	end
	if var30 then
		arg1.TargetValue = arg3
		arg1.StartValue = arg1.Value
		arg1.StartTime = arg2
	end
	local var31 = var30
	if var31 then
		var30 = arg1.Value
		local EqualityFunction_3 = arg1.EqualityFunction
		if EqualityFunction_3 then
			var31 = EqualityFunction_3(var30, arg3)
		elseif var30 ~= arg3 then
			var31 = false
		else
			var31 = true
		end
		arg1.Completed = var31
	end
end
function module_2_upvr.Overwrite(arg1, arg2, arg3, arg4) -- Line 211
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local Value_2 = arg1.Value
	arg1.Value = arg3
	arg1.StartValue = arg3
	arg1.TargetValue = arg4
	arg1.StartTime = arg2
	local EqualityFunction = arg1.EqualityFunction
	local var35
	if EqualityFunction then
		var35 = EqualityFunction(arg3, Value_2)
		-- KONSTANTWARNING: GOTO [23] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 21 start (CF ANALYSIS FAILED)
	if arg3 ~= Value_2 then
		var35 = false
	else
		var35 = true
	end
	arg1.Dirty = not var35
	var35 = arg1.EqualityFunction
	if var35 then
	elseif arg3 ~= arg4 then
	else
	end
	arg1.Completed = true
	-- KONSTANTERROR: [19] 14. Error Block 21 end (CF ANALYSIS FAILED)
end
function module_2_upvr.Reset(arg1, arg2, arg3) -- Line 230
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg3 ~= nil then
		arg1.StartValue = arg3
	end
	module_2_upvr.Overwrite(arg1, arg2, arg1.StartValue, arg1.TargetValue)
end
local TweenService_upvr = game:GetService("TweenService")
function module_2_upvr.Update(arg1, arg2) -- Line 243
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Rate = arg1.Rate
	if arg1.RateType == module_2_upvr.RateType.Speed then
		local DistanceFunction = arg1.DistanceFunction
		if not DistanceFunction then
			DistanceFunction = tbl_upvr[typeof(arg1.StartValue)]
		end
		Rate *= DistanceFunction(arg1.StartValue, arg1.TargetValue)
	end
	DistanceFunction = nil
	local var39 = DistanceFunction
	local var40
	if 0 < Rate then
		var39 = (arg2 - arg1.StartTime) / Rate
		if arg1.EasingStyle ~= Enum.EasingStyle.Linear then
			var40 = TweenService_upvr:GetValue(var39, arg1.EasingStyle, arg1.EasingDirection)
			-- KONSTANTWARNING: GOTO [56] #39
		end
	else
		var39 = 1
	end
	if var39 <= 0 then
	elseif 1 <= var39 then
	end
	if not arg1.TargetValue then
		local InterpolationFunction = arg1.InterpolationFunction
		if not InterpolationFunction then
			InterpolationFunction = tbl_upvr_3[typeof(arg1.StartValue)]
		end
		local var41_result1 = InterpolationFunction(arg1.StartValue, arg1.TargetValue, var40 or var39)
	end
	arg1.Value = var41_result1
	if arg1.EqualityFunction then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if var41_result1 ~= arg1.Value then
		else
		end
	end
	arg1.Dirty = not true
	if arg1.EqualityFunction then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if var41_result1 ~= arg1.TargetValue then
		else
		end
	end
	arg1.Completed = true
end
function module_2_upvr.Tween(arg1, arg2, arg3) -- Line 293
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var45
	if arg1.TargetValue == arg3 then
		var45 = false
	else
		var45 = true
	end
	if var45 then
		arg1.TargetValue = arg3
		arg1.StartValue = arg1.Value
		arg1.StartTime = arg2
	end
	var45 = module_2_upvr.Update
	var45(arg1, arg2)
end
function module_2_upvr.IsAtTarget(arg1, arg2) -- Line 303
	local Completed = arg1.Completed
	if Completed then
		local Value = arg1.Value
		local EqualityFunction_2 = arg1.EqualityFunction
		if EqualityFunction_2 then
			Completed = EqualityFunction_2(arg2, Value)
			return Completed
		end
		if arg2 ~= Value then
			Completed = false
		else
			Completed = true
		end
	end
	return Completed
end
function module_2_upvr.Lerp(arg1, arg2, arg3) -- Line 314
	local clamped = math.clamp(arg3, 0, 1)
	return (1 - clamped) * arg1 + clamped * arg2
end
function module_2_upvr.Damp(arg1, arg2, arg3, arg4) -- Line 319
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.Lerp(arg1, arg2, math.clamp(1 - math.exp(-arg3), 0, 1))
end
return module_2_upvr