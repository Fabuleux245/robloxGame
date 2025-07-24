-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:08
-- Luau version 6, Types version 3
-- Time taken: 0.024221 seconds

local exp_upvr = math.exp
local sin_upvr = math.sin
local cos_upvr = math.cos
local sqrt_upvr = math.sqrt
local round_upvr = math.round
local function _(arg1) -- Line 53, Named "magnitudeSq"
	local var10 = 0
	for _, v in arg1 do
		var10 += v ^ 2
	end
	return var10
end
local function _(arg1, arg2) -- Line 61, Named "distanceSq"
	local var15 = 0
	for i_2, v_2 in arg1 do
		var15 += (arg2[i_2] - v_2) ^ 2
	end
	return var15
end
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local function new(arg1, arg2, arg3, arg4, arg5) -- Line 91
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local any_toIntermediate_result1 = arg5.toIntermediate(arg3)
	local module = {}
	module.d = arg1
	module.f = arg2
	module.g = any_toIntermediate_result1
	module.p = any_toIntermediate_result1
	module.v = table.create(#any_toIntermediate_result1, 0)
	module.typedat = arg5
	module.rawGoal = arg4
	return setmetatable(module, tbl_3_upvr)
end
tbl_3_upvr.new = new
local function setGoal(arg1, arg2) -- Line 107
	arg1.rawGoal = arg2
	arg1.g = arg1.typedat.toIntermediate(arg2)
end
tbl_3_upvr.setGoal = setGoal
local function setVelocity(arg1, arg2) -- Line 112
	arg1.v = arg1.typedat.toIntermediate(arg2)
end
tbl_3_upvr.setVelocity = setVelocity
local function setDampingRatio(arg1, arg2) -- Line 116
	arg1.d = arg2
end
tbl_3_upvr.setDampingRatio = setDampingRatio
local function setFrequency(arg1, arg2) -- Line 120
	arg1.f = arg2
end
tbl_3_upvr.setFrequency = setFrequency
local function canSleep(arg1) -- Line 124
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var35 = 0
	for _, v_3 in arg1.v do
		var35 += v_3 ^ 2
	end
	if 0.0001 < var35 then
		return false
	end
	var35 = arg1.g
	for i_4, v_4 in arg1.p do
	end
	if 6.781684027777778e-08 < 0 + (var35[i_4] - v_4) ^ 2 then
		return false
	end
	return true
end
tbl_3_upvr.canSleep = canSleep
local function step(arg1, arg2) -- Line 136
	--[[ Upvalues[4]:
		[1]: exp_upvr (readonly)
		[2]: sqrt_upvr (readonly)
		[3]: cos_upvr (readonly)
		[4]: sin_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
	local d_2 = arg1.d
	local var49 = arg1.f * 2 * math.pi
	local g_2 = arg1.g
	local p = arg1.p
	local v_10 = arg1.v
	if d_2 == 1 then
		local var1_result1 = exp_upvr(-var49 * arg2)
		local var54 = arg2 * var1_result1
		for i_5 = 1, #p do
			local var55 = p[i_5] - g_2[i_5]
			p[i_5] = var55 * (var1_result1 + var54 * var49) + v_10[i_5] * var54 + g_2[i_5]
			v_10[i_5] = v_10[i_5] * (var1_result1 - var54 * var49) - (var55) * (var54 * var49 * var49)
			local var56
		end
		-- KONSTANTWARNING: GOTO [187] #179
	end
	-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 42. Error Block 41 start (CF ANALYSIS FAILED)
	local var57
	if d_2 < 1 then
		var56 = -d_2 * var49
		local var1_result1_2 = exp_upvr(var56 * arg2)
		var56 = 1 - d_2 * d_2
		local var4_result1 = sqrt_upvr(var56)
		var57 = arg2 * var49
		var56 = cos_upvr(var57 * var4_result1)
		var57 = arg2 * var49 * var4_result1
		var57 = nil
		if 0.00001 < var4_result1 then
			var57 = sin_upvr(var57) / var4_result1
		else
			local var61 = arg2 * var49
			i_5 = (((var61 * var61) * (var4_result1 * var4_result1)) * (var4_result1 * var4_result1) / 20 - var4_result1 * var4_result1) * (var61 * var61 * var61)
			var57 = var61 + i_5 / 6
		end
		if 0.00001 < var49 * var4_result1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		else
			local var62 = var49 * var4_result1
		end
		for i_6 = 1, #p do
			p[i_6] = (p[i_6] - g_2[i_6] * (var56 + var57 * d_2) + v_10[i_6] * (arg2 + (((arg2 * arg2) * (var62 * var62)) * (var62 * var62) / 20 - var62 * var62) * (arg2 * arg2 * arg2) / 6)) * var1_result1_2 + g_2[i_6]
			v_10[i_6] = (v_10[i_6] * (var56 - var57 * d_2) - (p[i_6] - g_2[i_6]) * (var57 * var49)) * var1_result1_2
			local _
		end
	else
		local var4_result1_2 = sqrt_upvr(d_2 * d_2 - 1)
		local var66 = -var49 * (d_2 - var4_result1_2)
		var57 = d_2 + var4_result1_2
		local var67 = -var49 * var57
		var57 = var66 * arg2
		var57 = exp_upvr(var67 * arg2)
		for i_7 = 1, #p do
			i_6 = p[i_7] - g_2[i_7]
			local var68 = i_6
			local var69 = (v_10[i_7] - var68 * var66) / (2 * var49 * var4_result1_2)
			local var70 = exp_upvr(var57) * (var68 - var69)
			p[i_7] = var70 + var69 * var57 + g_2[i_7]
			v_10[i_7] = var70 * var66 + var69 * var57 * var67
			local var71
		end
	end
	var71 = arg1.typedat
	var71 = arg1.p
	do
		return var71.fromIntermediate(var71)
	end
	-- KONSTANTERROR: [47] 42. Error Block 41 end (CF ANALYSIS FAILED)
end
tbl_3_upvr.step = step
local tbl_15_upvr = {}
tbl_15_upvr.__index = tbl_15_upvr
local function _(arg1, arg2) -- Line 252, Named "angleBetween"
	local _, any_ToAxisAngle_result2_2 = arg2:ToObjectSpace(arg1):ToAxisAngle()
	return math.abs(any_ToAxisAngle_result2_2)
end
local function _(arg1) -- Line 257, Named "matrixToAxis"
	local any_ToAxisAngle_result1_2, any_ToAxisAngle_result2_3 = arg1:ToAxisAngle()
	return any_ToAxisAngle_result1_2 * any_ToAxisAngle_result2_3
end
local function _(arg1) -- Line 262, Named "axisToMatrix"
	local Magnitude_3 = arg1.Magnitude
	if 0.000001 < Magnitude_3 then
		return CFrame.fromAxisAngle(arg1.Unit, Magnitude_3)
	end
	return CFrame.identity
end
local function new(arg1, arg2, arg3, arg4) -- Line 270
	--[[ Upvalues[1]:
		[1]: tbl_15_upvr (readonly)
	]]
	local module_3 = {}
	module_3.d = arg1
	module_3.f = arg2
	module_3.g = arg4
	module_3.p = arg3
	module_3.v = Vector3.new(0, 0, 0)
	return setmetatable(module_3, tbl_15_upvr)
end
tbl_15_upvr.new = new
local function setGoal(arg1, arg2) -- Line 283
	arg1.g = arg2
end
tbl_15_upvr.setGoal = setGoal
local function setVelocity(arg1, arg2) -- Line 287
	local any_ToAxisAngle_result1, any_ToAxisAngle_result2_5 = arg2:ToAxisAngle()
	arg1.v = any_ToAxisAngle_result1 * any_ToAxisAngle_result2_5
end
tbl_15_upvr.setVelocity = setVelocity
local function setDampingRatio(arg1, arg2) -- Line 291
	arg1.d = arg2
end
tbl_15_upvr.setDampingRatio = setDampingRatio
local function setFrequency(arg1, arg2) -- Line 295
	arg1.f = arg2
end
tbl_15_upvr.setFrequency = setFrequency
local function canSleep(arg1) -- Line 299
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _, any_ToAxisAngle_result2 = arg1.g:ToObjectSpace(arg1.p):ToAxisAngle()
	local var83
	if math.abs(any_ToAxisAngle_result2) >= 0.00017453292519943296 then
		var83 = false
	else
		var83 = true
	end
	if arg1.v.Magnitude >= 0.0017453292519943296 then
	else
	end
	return var83 and true
end
tbl_15_upvr.canSleep = canSleep
local function step(arg1, arg2) -- Line 305
	--[[ Upvalues[4]:
		[1]: exp_upvr (readonly)
		[2]: sqrt_upvr (readonly)
		[3]: cos_upvr (readonly)
		[4]: sin_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local d = arg1.d
	local var85 = arg1.f * 2 * math.pi
	local g = arg1.g
	local v_11 = arg1.v
	local any_ToAxisAngle_result1_3, any_ToAxisAngle_result2_4 = arg1.p * g:Inverse():ToAxisAngle()
	local var90 = any_ToAxisAngle_result1_3 * any_ToAxisAngle_result2_4
	local var1_result1_3 = exp_upvr(-d * var85 * arg2)
	local var92
	local var93
	if d == 1 then
		local var94 = (var90 * (1 + var85 * arg2) + v_11 * arg2) * var1_result1_3
		local Magnitude_2 = var94.Magnitude
		if 0.000001 < Magnitude_2 then
			var93 = CFrame.fromAxisAngle(var94.Unit, Magnitude_2)
		else
			var93 = CFrame.identity
		end
		var92 = var93 * g
		var93 = v_11 * (1 - arg2 * var85) - (var90) * (arg2 * var85 * var85)
	else
		local var96
		if d < 1 then
			var93 = 1 - d * d
			local sqrt_upvr_result1_2 = sqrt_upvr(var93)
			var93 = cos_upvr(arg2 * var85 * sqrt_upvr_result1_2)
			local var2_result1 = sin_upvr(arg2 * var85 * sqrt_upvr_result1_2)
			local var99 = var2_result1 / sqrt_upvr_result1_2
			var96 = var90 * (var93 + var99 * d) + (v_11) * ((var2_result1) / (var85 * sqrt_upvr_result1_2))
			var96 = (var96 * var1_result1_3).Magnitude
			if 0.000001 < var96 then
			else
			end
			var92 = CFrame.identity * g
			var96 = var93 - var99 * d
			var96 = (var90) * (var99 * var85)
		else
			var93 = d * d - 1
			local sqrt_upvr_result1 = sqrt_upvr(var93)
			var93 = -var85 * (d - sqrt_upvr_result1)
			local var102 = -var85 * (d + sqrt_upvr_result1)
			var96 = 2
			local var103 = (v_11 - var90 * var93) / (var96 * var85 * sqrt_upvr_result1)
			var96 = var93 * arg2
			local var104 = (var90 - var103) * exp_upvr(var96)
			var96 = exp_upvr(var102 * arg2)
			local var105 = var103 * var96
			local var106 = var104 + var105
			local Magnitude = var106.Magnitude
			if 0.000001 < Magnitude then
				var96 = CFrame.fromAxisAngle(var106.Unit, Magnitude)
			else
				var96 = CFrame.identity
			end
			var92 = var96 * g
			var96 = var104 * var93
		end
	end
	arg1.p = var92
	arg1.v = var96 + var105 * var102
	return var92
end
tbl_15_upvr.step = step
local tbl_upvr = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 363
	return {arg1.X, arg1.Y, arg1.Z}
end
tbl_upvr.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 367
	return Vector3.new(arg1[1], arg1[2], arg1[3])
end
tbl_upvr.fromIntermediate = fromIntermediate
local tbl_8_upvr = {}
tbl_8_upvr.__index = tbl_8_upvr
function tbl_8_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 377
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_15_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
	]]
	local module_5 = {}
	module_5.rawGoal = arg4
	module_5._position = tbl_3_upvr.new(arg1, arg2, arg3.Position, arg4.Position, tbl_upvr)
	module_5._rotation = tbl_15_upvr.new(arg1, arg2, arg3.Rotation, arg4.Rotation)
	return setmetatable(module_5, tbl_8_upvr)
end
function tbl_8_upvr.setGoal(arg1, arg2) -- Line 394
	arg1.rawGoal = arg2
	arg1._position:setGoal(arg2.Position)
	arg1._rotation:setGoal(arg2.Rotation)
end
function tbl_8_upvr.setDampingRatio(arg1, arg2) -- Line 400
	arg1._position:setDampingRatio(arg2)
	arg1._rotation:setDampingRatio(arg2)
end
function tbl_8_upvr.setFrequency(arg1, arg2) -- Line 405
	arg1._position:setFrequency(arg2)
	arg1._rotation:setFrequency(arg2)
end
function tbl_8_upvr.canSleep(arg1) -- Line 410
	local any_canSleep_result1 = arg1._position:canSleep()
	if any_canSleep_result1 then
		any_canSleep_result1 = arg1._rotation:canSleep()
	end
	return any_canSleep_result1
end
function tbl_8_upvr.step(arg1, arg2) -- Line 414
	return arg1._rotation:step(arg2) + arg1._position:step(arg2)
end
local function _(arg1) -- Line 425, Named "inverseGammaCorrectD65"
	local var113
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var113 = arg1 / 12.92
		return var113
	end
	if arg1 >= 0.0404482362771076 or not INLINED() then
		var113 = 0.87941546140213 * (arg1 + 0.055) ^ 2.4
	end
	return var113
end
local function _(arg1) -- Line 429, Named "gammaCorrectD65"
	local var114
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var114 = 12.92 * arg1
		return var114
	end
	if arg1 >= 0.0031306684425 or not INLINED_2() then
		var114 = 1.055 * arg1 ^ 0.4166666666666667 - 0.055
	end
	return var114
end
local function rgbToLuv_upvw(arg1) -- Line 433, Named "rgbToLuv"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local R = arg1.R
	local var116
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var116 = R / 12.92
		return var116
	end
	if R >= 0.0404482362771076 or not INLINED_3() then
		var116 = 0.87941546140213 * (R + 0.055) ^ 2.4
	end
	local G = arg1.G
	if G >= 0.0404482362771076 or not (G / 12.92) then
		local var118 = 0.87941546140213 * (G + 0.055) ^ 2.4
	end
	local B = arg1.B
	if B >= 0.0404482362771076 or not (B / 12.92) then
		local var120 = 0.87941546140213 * (B + 0.055) ^ 2.4
	end
	local var121 = 0.2125862307855956 * var116 + 0.7151703037034108 * var118 + 0.0722004986433362 * var120
	local var122 = 3.6590806972265884 * var116 + 11.442689580057424 * var118 + 4.114991502426484 * var120
	if 0.008856451679035631 >= var121 or not (116 * var121 ^ 0.3333333333333333 - 16) then
		local var123 = 903.296296296296 * var121
	end
	local var124
	local var125
	if 1e-14 < var122 then
		var124 = var123 * (0.9257063972951867 * var116 - 0.8333736323779866 * var118 - 0.09209820666085898 * var120) / var122
		var125 = var123 * (9 * var121 / var122 - 0.46832)
	else
		var124 = -0.19783 * var123
		var125 = -0.46832 * var123
	end
	return {var123, var124, var125}
end
local min_upvr = math.min
local function luvToRgb_upvw(arg1) -- Line 462, Named "luvToRgb"
	--[[ Upvalues[1]:
		[1]: min_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local _1 = arg1[1]
	local var129
	if _1 < 0.0197955 then
		var129 = 0
		return Color3.new(0, 0, var129)
	end
	local var130 = arg1[2] / _1 + 0.19783
	var129 = arg1[3]
	local var131 = var129 / _1 + 0.46832
	var129 = _1 + 16
	local var132 = var129 / 116
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var129 = var132 * var132 * var132
		return var129
	end
	if 0.20689655172413793 >= var132 or not INLINED_4() then
		var129 = var132 * 0.12841854934601665 - 0.01771290335807126
	end
	local var133 = var129
	var129 = var133 * var130 / var131
	local var134 = var133 * ((3 - var130 * 0.75) / var131 - 5)
	local var135 = var129 * 7.2914074 - var133 * 1.537208 - var134 * 0.4986286
	local var136
	if var135 < 0 and var135 < var136 and var135 < var129 * 0.1253477 - var133 * 0.2040211 + var134 * 1.0569959 then
		var136 -= var135
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var137 = var129 * 0.1253477 - var133 * 0.2040211 + var134 * 1.0569959 - var135
		-- KONSTANTWARNING: GOTO [78] #70
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 57. Error Block 48 start (CF ANALYSIS FAILED)
	local var138
	if var136 < 0 and var136 < var137 then
		var138 -= var136
		var136 = 0
	elseif var137 - var136 < 0 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var138 -= var137 - var136
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var136 -= var137 - var136
	end
	local var139 = var138
	if var139 >= 0.0031306684425 or not (12.92 * var139) then
	end
	local var140 = var136
	if var140 >= 0.0031306684425 or not (12.92 * var140) then
	end
	local const_number = 0
	if const_number >= 0.0031306684425 or not (12.92 * const_number) then
	end
	do
		return Color3.new(min_upvr(1.055 * var139 ^ 0.4166666666666667 - 0.055, 1), min_upvr(1.055 * var140 ^ 0.4166666666666667 - 0.055, 1), min_upvr(1.055 * const_number ^ 0.4166666666666667 - 0.055, 1))
	end
	-- KONSTANTERROR: [62] 57. Error Block 48 end (CF ANALYSIS FAILED)
end
local tbl_7_upvr = {}
local tbl_9 = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 508
	local module_4 = {}
	local var145
	if arg1 then
		var145 = 1
	else
		var145 = 0
	end
	module_4[1] = var145
	return module_4
end
tbl_9.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 512
	local var146
	if 0.5 > arg1[1] then
		var146 = false
	else
		var146 = true
	end
	return var146
end
tbl_9.fromIntermediate = fromIntermediate
tbl_7_upvr.boolean = tbl_9
local tbl_10 = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 520
	local module_2 = {}
	module_2[1] = arg1
	return module_2
end
tbl_10.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 524
	return arg1[1]
end
tbl_10.fromIntermediate = fromIntermediate
tbl_7_upvr.number = tbl_10
local tbl_5 = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 532
	return {arg1.Min, arg1.Max}
end
tbl_5.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 536
	return NumberRange.new(arg1[1], arg1[2])
end
tbl_5.fromIntermediate = fromIntermediate
tbl_7_upvr.NumberRange = tbl_5
local tbl = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 544
	return {arg1.Scale, arg1.Offset}
end
tbl.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 548
	--[[ Upvalues[1]:
		[1]: round_upvr (readonly)
	]]
	return UDim.new(arg1[1], round_upvr(arg1[2]))
end
tbl.fromIntermediate = fromIntermediate
tbl_7_upvr.UDim = tbl
local tbl_2 = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 556
	local X = arg1.X
	local Y = arg1.Y
	return {X.Scale, X.Offset, Y.Scale, Y.Offset}
end
tbl_2.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 562
	--[[ Upvalues[1]:
		[1]: round_upvr (readonly)
	]]
	return UDim2.new(arg1[1], round_upvr(arg1[2]), arg1[3], round_upvr(arg1[4]))
end
tbl_2.fromIntermediate = fromIntermediate
tbl_7_upvr.UDim2 = tbl_2
local tbl_13 = {
	springType = tbl_3_upvr.new;
}
local function toIntermediate(arg1) -- Line 570
	return {arg1.X, arg1.Y}
end
tbl_13.toIntermediate = toIntermediate
local function fromIntermediate(arg1) -- Line 574
	return Vector2.new(arg1[1], arg1[2])
end
tbl_13.fromIntermediate = fromIntermediate
tbl_7_upvr.Vector2 = tbl_13
tbl_7_upvr.Vector3 = tbl_upvr
tbl_7_upvr.Color3 = {
	springType = tbl_3_upvr.new;
	toIntermediate = rgbToLuv_upvw;
	fromIntermediate = luvToRgb_upvw;
}
tbl_7_upvr.ColorSequence = {
	springType = tbl_3_upvr.new;
	toIntermediate = function(arg1) -- Line 591, Named "toIntermediate"
		--[[ Upvalues[1]:
			[1]: rgbToLuv_upvw (read and write)
		]]
		local Keypoints = arg1.Keypoints
		local rgbToLuv_upvw_result1 = rgbToLuv_upvw(Keypoints[1].Value)
		local rgbToLuv_upvw_result1_2 = rgbToLuv_upvw(Keypoints[#Keypoints].Value)
		return {rgbToLuv_upvw_result1[1], rgbToLuv_upvw_result1[2], rgbToLuv_upvw_result1[3], rgbToLuv_upvw_result1_2[1], rgbToLuv_upvw_result1_2[2], rgbToLuv_upvw_result1_2[3]}
	end;
	fromIntermediate = function(arg1) -- Line 603, Named "fromIntermediate"
		--[[ Upvalues[1]:
			[1]: luvToRgb_upvw (read and write)
		]]
		return ColorSequence.new(luvToRgb_upvw({arg1[1], arg1[2], arg1[3]}), luvToRgb_upvw({arg1[4], arg1[5], arg1[6]}))
	end;
}
tbl_7_upvr.CFrame = {
	springType = tbl_8_upvr.new;
	toIntermediate = error;
	fromIntermediate = error;
}
local tbl_6_upvr = {}
local tbl_14 = {
	class = "PVInstance";
}
local function get(arg1) -- Line 629
	return arg1:GetPivot()
end
tbl_14.get = get
local function set(arg1, arg2) -- Line 632
	arg1:PivotTo(arg2)
end
tbl_14.set = set
tbl_6_upvr.Pivot = tbl_14
tbl_6_upvr.Scale = {
	class = "Model";
	get = function(arg1) -- Line 638, Named "get"
		return arg1:GetScale()
	end;
	set = function(arg1, arg2) -- Line 641, Named "set"
		arg1:ScaleTo(arg2)
	end;
}
local tbl_4_upvr = {}
local tbl_12_upvr = {}
game:GetService("RunService").Heartbeat:Connect(function(arg1) -- Line 651
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: tbl_12_upvr (readonly)
	]]
	for i_8, v_5 in tbl_4_upvr do
		for i_9, v_6 in v_5 do
			local var188 = tbl_6_upvr[i_9]
			if var188 and i_8:IsA(var188.class) then
				if v_6:canSleep() then
					v_5[i_9] = nil
					var188.set(i_8, v_6.rawGoal)
				else
					var188.set(i_8, v_6:step(arg1))
				end
			elseif v_6:canSleep() then
				v_5[i_9] = nil
				i_8[i_9] = v_6.rawGoal
			else
				i_8[i_9] = v_6:step(arg1)
			end
		end
		if not next(v_5) then
			tbl_4_upvr[i_8] = nil
			local var189 = tbl_12_upvr[i_8]
			if var189 then
				tbl_12_upvr[i_8] = nil
				i_9 = nil
				for _, v_7 in var189, nil, i_9 do
					task.spawn(v_7)
				end
			end
		end
	end
end)
local function _(arg1, arg2, arg3, arg4) -- Line 691, Named "assertType"
	if not arg3:find(typeof(arg4)) then
		error(`bad argument #{arg1} to {arg2} ({arg3} expected, got {typeof(arg4)})`, 3)
	end
end
return table.freeze({
	target = function(arg1, arg2, arg3, arg4) -- Line 700, Named "target"
		--[[ Upvalues[3]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
			[3]: tbl_7_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var199
		if not var199 then
			var199 = error
			var199(`bad argument #{1} to {"spr.target"} ({"Instance"} expected, got {typeof(arg1)})`, 3)
		end
		var199 = "number":find(typeof(arg2))
		if not var199 then
			var199 = error
			var199(`bad argument #{2} to {"spr.target"} ({"number"} expected, got {typeof(arg2)})`, 3)
		end
		var199 = "number":find(typeof(arg3))
		if not var199 then
			var199 = error
			var199(`bad argument #{3} to {"spr.target"} ({"number"} expected, got {typeof(arg3)})`, 3)
		end
		var199 = "table":find(typeof(arg4))
		if not var199 then
			var199 = error
			var199(`bad argument #{4} to {"spr.target"} ({"table"} expected, got {typeof(arg4)})`, 3)
		end
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var199 = 0
			return arg2 < var199
		end
		if arg2 ~= arg2 or INLINED_5() then
			var199 = error
			var199("expected damping ratio >= 0; got %.2f":format(arg2), 2)
		end
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var199 = 0
			return arg3 < var199
		end
		if arg3 ~= arg3 or INLINED_6() then
			var199 = error
			var199("expected undamped frequency >= 0; got %.2f":format(arg3), 2)
		end
		var199 = tbl_4_upvr[arg1]
		if not var199 then
			var199 = {}
			tbl_4_upvr[arg1] = var199
		end
		for i_11, v_8 in arg4 do
			local var200 = tbl_6_upvr[i_11]
			local var201
			if var200 and arg1:IsA(var200.class) then
				var201 = var200.get(arg1)
			else
				var201 = arg1[i_11]
			end
			if typeof(v_8) ~= typeof(var201) then
				error(`bad property {i_11} to spr.target ({typeof(var201)} expected, got {typeof(v_8)})`, 2)
			end
			if arg3 == math.huge then
				arg1[i_11] = v_8
				var199[i_11] = nil
			else
				local var202 = var199[i_11]
				if not var202 then
					local var203 = tbl_7_upvr[typeof(v_8)]
					if not var203 then
						error("unsupported type: "..typeof(v_8), 2)
					end
					var199[i_11] = var203.springType(arg2, arg3, var201, v_8, var203)
				end
				var203.springType(arg2, arg3, var201, v_8, var203):setGoal(v_8)
				var203.springType(arg2, arg3, var201, v_8, var203):setDampingRatio(arg2)
				var203.springType(arg2, arg3, var201, v_8, var203):setFrequency(arg3)
			end
		end
		if not next(var199) then
			tbl_4_upvr[arg1] = nil
		end
	end;
	stop = function(arg1, arg2) -- Line 763, Named "stop"
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
		error(`bad argument #{1} to {"spr.stop"} ({"Instance"} expected, got {typeof(arg1)})`, 3)
		-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 23. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 23. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	completed = function(arg1, arg2) -- Line 779, Named "completed"
		--[[ Upvalues[1]:
			[1]: tbl_12_upvr (readonly)
		]]
		if not "Instance":find(typeof(arg1)) then
			error(`bad argument #{1} to {"spr.completed"} ({"Instance"} expected, got {typeof(arg1)})`, 3)
		end
		if not "function":find(typeof(arg2)) then
			error(`bad argument #{2} to {"spr.completed"} ({"function"} expected, got {typeof(arg2)})`, 3)
		end
		local var204 = tbl_12_upvr[arg1]
		if var204 then
			table.insert(var204, arg2)
		else
			local tbl_11 = {}
			tbl_11[1] = arg2
			tbl_12_upvr[arg1] = tbl_11
		end
	end;
	setVelocity = function(arg1, arg2) -- Line 793, Named "setVelocity"
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		local var210 = tbl_4_upvr[arg1]
		if not var210 then
		else
			for i_12, v_9 in arg2 do
				local var211 = tbl_6_upvr[i_12]
				local var212
				if var211 and arg1:IsA(var211.class) then
					var212 = var211.get(arg1)
				else
					var212 = arg1[i_12]
				end
				if typeof(v_9) ~= typeof(var212) then
					error(`bad property {i_12} to spr.setVelocity ({typeof(var212)} expected, got {typeof(v_9)})`, 2)
				end
				local var213 = var210[i_12]
				if var213 then
					var213:setVelocity(v_9)
				end
			end
			if not next(var210) then
				tbl_4_upvr[arg1] = nil
			end
		end
	end;
})