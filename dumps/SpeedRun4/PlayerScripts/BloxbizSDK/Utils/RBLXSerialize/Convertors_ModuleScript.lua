-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:43
-- Luau version 6, Types version 3
-- Time taken: 0.008856 seconds

function splitbyte(arg1) -- Line 2
	local module_2 = {false, false, false, false, false, false, false, false}
	for i = 1, 8 do
		if 128 <= string.byte(arg1) then
			module_2[i] = true
		end
	end
	return module_2
end
function formbyte(...) -- Line 10
	local var11
	for i_2 = 1, 8 do
		if select(i_2, ...) then
			var11 += 2 ^ (8 - i_2)
		end
	end
	return string.char(var11)
end
function deflate(arg1, ...) -- Line 19
	return string.pack(string.rep(arg1 or 'f', #{...}), ...)
end
function flate(arg1, arg2, arg3) -- Line 22
	return string.unpack(string.rep(arg1 or 'f', arg3), arg2)
end
local function getNativeSize(arg1) -- Line 26
	return #string.pack(arg1 or 'f', 1)
end
getNativeSize = getNativeSize -- Setting global
getNativeSize = {}
local var13_upvr = getNativeSize
local function var14(arg1, arg2) -- Line 34
	local tbl = {}
	for _, v in ipairs(arg2:GetEnumItems()) do
		tbl[v.Value] = v
	end
	arg1[arg2] = tbl
end
for _, v_2 in ipairs(Enum:GetEnums()) do
	var14(var13_upvr, v_2)
end
return {
	EnumItem = function(arg1, arg2, arg3, arg4) -- Line 55
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		if arg1 then
			return string.pack("I2", arg4.Value)
		end
		return var13_upvr[Enum[arg3]][string.unpack("I2", arg4)]
	end;
	ColorSequence = function(arg1, arg2) -- Line 63
		if arg1 then
			for _, v_3 in ipairs(arg2.Keypoints) do
				local _ = v_3.Value
				local var39
			end
			return var39
		end
		local module_3 = {}
		local string_packsize_result1 = string.packsize("f I1 I1 I1")
		for i_6 = 1, #arg2, string_packsize_result1 do
			local string_unpack_result1_2, string_unpack_result2_2, string_unpack_result3_2, string_unpack_result4_2 = string.unpack("f I1 I1 I1", arg2:sub(i_6, i_6 + string_packsize_result1))
			table.insert(module_3, ColorSequenceKeypoint.new(string_unpack_result1_2, Color3.new(string_unpack_result2_2 / 255, string_unpack_result3_2 / 255, string_unpack_result4_2 / 255)))
			local _
		end
		return ColorSequence.new(module_3)
	end;
	ColorSequenceKeypoint = function(arg1, arg2) -- Line 86
		if arg1 then
			local Value = arg2.Value
			return string.pack("f I1 I1 I1", arg2.Time, math.floor(Value.R * 255), math.floor(Value.G * 255), math.floor(Value.B * 255))
		end
		local string_unpack_result1, string_unpack_result2, string_unpack_result3, string_unpack_result4 = string.unpack("f I1 I1 I1", arg2)
		return ColorSequenceKeypoint.new(string_unpack_result1, Color3.new(string_unpack_result2 / 255, string_unpack_result3 / 255, string_unpack_result4 / 255))
	end;
	NumberSequence = function(arg1, arg2) -- Line 96
		if arg1 then
			for _, _ in ipairs(arg2.Keypoints) do
				local var63
			end
			return var63
		end
		local module = {}
		local var65 = getNativeSize(nil) * 3
		for i_8 = 1, #arg2, var65 do
			local flate_result1_9, flate_result2_4, flate_result3_11 = flate(nil, arg2:sub(i_8, i_8 + var65), 3)
			table.insert(module, NumberSequenceKeypoint.new(flate_result1_9, flate_result2_4, flate_result3_11))
			local _
		end
		return NumberSequence.new(module)
	end;
	NumberSequenceKeypoint = function(arg1, arg2) -- Line 121
		if arg1 then
			return deflate(nil, arg2.Time, arg2.Value, arg2.Envelope)
		end
		local flate_result1_14, flate_result2_7, flate_result3_9 = flate(nil, arg2, 3)
		return NumberSequenceKeypoint.new(flate_result1_14, flate_result2_7, flate_result3_9)
	end;
	Rect = function(arg1, arg2) -- Line 129
		if arg1 then
			return deflate(nil, arg2.Min.X, arg2.Min.Y, arg2.Max.X, arg2.Max.Y)
		end
		local flate_result1_15, flate_result2_5, flate_result3_6, flate_result4_6 = flate(nil, arg2, 4)
		return Rect.new(flate_result1_15, flate_result2_5, flate_result3_6, flate_result4_6)
	end;
	Ray = function(arg1, arg2) -- Line 137
		if arg1 then
			return deflate(nil, arg2.Orgin.X, arg2.Orgin.Y, arg2.Orgin.Z, arg2.Direction.X, arg2.Direction.Y, arg2.Direction.Z)
		end
		local flate_result1_8, flate_result2_15, flate_result3_4, flate_result4_5, flate_result5_2, flate_result6_3 = flate(nil, arg2, 6)
		return Ray.new(Vector3.new(flate_result1_8, flate_result2_15, flate_result3_4, flate_result4_5, flate_result5_2, flate_result6_3))
	end;
	PhysicalProperties = function(arg1, arg2) -- Line 145
		if arg1 then
			return deflate(nil, arg2.Density, arg2.Friction, arg2.Elasticity, arg2.FrictionWeight, arg2.ElasticityWeight)
		end
		local flate_result1_3, flate_result2_12, flate_result3_8, flate_result4, flate_result5_3 = flate(nil, arg2, 5)
		return PhysicalProperties.new(flate_result1_3, flate_result2_12, flate_result3_8, flate_result4, flate_result5_3)
	end;
	NumberRange = function(arg1, arg2) -- Line 154
		if arg1 then
			return deflate(nil, arg2.Min, arg2.Max)
		end
		local flate_result1_6, flate_result2_3 = flate(nil, arg2, 2)
		return NumberRange.new(flate_result1_6, flate_result2_3)
	end;
	UDim = function(arg1, arg2) -- Line 162
		if arg1 then
			return deflate(nil, arg2.Scale, arg2.Offset)
		end
		local flate_result1_11, flate_result2_10 = flate(nil, arg2, 2)
		return UDim2.new(flate_result1_11, flate_result2_10)
	end;
	Color3 = function(arg1, arg2) -- Line 170
		if arg1 then
			return deflate("I1", math.round(arg2.R * 255), math.round(arg2.G * 255), math.round(arg2.B * 255))
		end
		local flate_result1_12, flate_result2_2, flate_result3_10 = flate("I1", arg2, 3)
		return Color3.new(flate_result1_12 / 255, flate_result2_2 / 255, flate_result3_10 / 255)
	end;
	UDim2 = function(arg1, arg2) -- Line 180
		if arg1 then
			return deflate(nil, arg2.X.Scale, arg2.X.Offset, arg2.Y.Scale, arg2.Y.Offset)
		end
		local flate_result1, flate_result2_9, flate_result3, flate_result4_4 = flate(nil, arg2, 4)
		return UDim2.new(flate_result1, flate_result2_9, flate_result3, flate_result4_4)
	end;
	Vector3 = function(arg1, arg2) -- Line 188
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return deflate(nil, arg2.X, arg2.Y, arg2.Z)
		end
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 11. Error Block 4 start (CF ANALYSIS FAILED)
		local flate_result1_10, flate_result2_11, flate_result3_3 = flate(nil, arg2, 3)
		do
			return Vector3.new(flate_result1_10, flate_result2_11, flate_result3_3)
		end
		-- KONSTANTERROR: [14] 11. Error Block 4 end (CF ANALYSIS FAILED)
	end;
	Vector3int16 = function(arg1, arg2) -- Line 198
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return deflate("i2", arg2.X, arg2.Y, arg2.Z)
		end
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 11. Error Block 4 start (CF ANALYSIS FAILED)
		local flate_result1_13, flate_result2_14, flate_result3_5 = flate("i2", arg2, 3)
		do
			return Vector3.new(flate_result1_13, flate_result2_14, flate_result3_5)
		end
		-- KONSTANTERROR: [14] 11. Error Block 4 end (CF ANALYSIS FAILED)
	end;
	Vector2 = function(arg1, arg2) -- Line 208
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return deflate(nil, arg2.X, arg2.Y)
		end
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
		local flate_result1_2, flate_result2_13 = flate(nil, arg2, 2)
		do
			return Vector2.new(flate_result1_2, flate_result2_13)
		end
		-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	end;
	Vector2int16 = function(arg1, arg2) -- Line 218
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return deflate("i2", arg2.X, arg2.Y)
		end
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
		local flate_result1_4, flate_result2 = flate("i2", arg2, 2)
		do
			return Vector2.new(flate_result1_4, flate_result2)
		end
		-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	end;
	Content = function(arg1, arg2) -- Line 228
		return arg2
	end;
	ProtectedString = function(arg1, arg2) -- Line 231
		return arg2
	end;
	string = function(arg1, arg2) -- Line 234
		return arg2
	end;
	bool = function(arg1, arg2) -- Line 237
		if arg1 then
			return ({
				[true] = '#';
				[false] = '$';
			})[arg2]
		end
		return ({
			['#'] = true;
			['$'] = false;
		})[arg2]
	end;
	float = function(arg1, arg2) -- Line 244
		if arg1 then
			return deflate('f', arg2)
		end
		return flate('f', arg2, 1)
	end;
	double = function(arg1, arg2) -- Line 252
		if arg1 then
			return deflate('d', arg2)
		end
		return flate('d', arg2, 1)
	end;
	int = function(arg1, arg2) -- Line 260
		if arg1 then
			return deflate('i', math.floor(arg2))
		end
		return flate('i', arg2, 1)
	end;
	int64 = function(arg1, arg2) -- Line 268
		if arg1 then
			return deflate("i8", math.floor(arg2))
		end
		return flate("i8", arg2, 1)
	end;
	SurfaceType = function(arg1, arg2) -- Line 276
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		if arg1 then
			return deflate(nil, arg2.Value)
		end
		return var13_upvr[Enum.SurfaceType][flate(nil, arg2, 1)]
	end;
	BrickColor = function(arg1, arg2) -- Line 284
		if arg1 then
			return deflate(nil, math.floor(arg2.Number))
		end
		return BrickColor.new(flate(nil, arg2, 1))
	end;
	Material = function(arg1, arg2) -- Line 292
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		if arg1 then
			return deflate(nil, arg2.Value)
		end
		return var13_upvr[Enum.Material][flate(nil, arg2, 1)]
	end;
	Faces = function(arg1, arg2) -- Line 300
		if arg1 then
			for i_9, v_5 in ipairs(table.pack(arg2.Top, arg2.Bottom, arg2.Left, arg2.Right, arg2.Back, arg2.Front)) do
				splitbyte(string.char(0))[i_9] = v_5
				local _
			end
			return formbyte(arg2)
		end
		for i_10, v_6 in ipairs(splitbyte(arg2)) do
			if i_10 <= 5 then
				({})[i_10] = v_6
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Faces.new(table.unpack({}))
	end;
	CFrame = function(arg1, arg2) -- Line 319
		if arg1 then
			return deflate(nil, arg2:components())
		end
		local flate_result1_7, flate_result2_8, flate_result3_2, flate_result4_3, flate_result5, flate_result6_2, flate_result7_2, flate_result8_2, flate_result9, flate_result10_2, flate_result11, flate_result12_2 = flate(nil, arg2, 12)
		return CFrame.new(flate_result1_7, flate_result2_8, flate_result3_2, flate_result4_3, flate_result5, flate_result6_2, flate_result7_2, flate_result8_2, flate_result9, flate_result10_2, flate_result11, flate_result12_2)
	end;
	CoordinateFrame = function(arg1, arg2) -- Line 328
		if arg1 then
			return deflate(nil, arg2:components())
		end
		local flate_result1_5, flate_result2_6, flate_result3_7, flate_result4_2, flate_result5_4, flate_result6, flate_result7, flate_result8, flate_result9_2, flate_result10, flate_result11_2, flate_result12 = flate(nil, arg2, 12)
		return CFrame.new(flate_result1_5, flate_result2_6, flate_result3_7, flate_result4_2, flate_result5_4, flate_result6, flate_result7, flate_result8, flate_result9_2, flate_result10, flate_result11_2, flate_result12)
	end;
}