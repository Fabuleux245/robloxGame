-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:56
-- Luau version 6, Types version 3
-- Time taken: 0.007974 seconds

local module_4_upvr = {}
local tbl_7_upvr = {}
local tbl_2_upvr = {}
local function Apply_upvr(arg1, arg2) -- Line 47, Named "ApplyNumberSequence"
	local Keypoints_2 = arg1.Value.Keypoints
	local table_create_result1_2 = table.create(#Keypoints_2)
	for i, v in ipairs(Keypoints_2) do
		table_create_result1_2[i] = NumberSequenceKeypoint.new(v.Time, 1 - v.Value * arg2, v.Envelope)
	end
	return NumberSequence.new(table_create_result1_2)
end
local function ApplyNumeric_upvr(arg1, arg2) -- Line 66, Named "ApplyNumeric"
	return 1 - arg1.Value * arg2
end
local function ApplyNumericSquared_upvr(arg1, arg2) -- Line 74, Named "ApplyNumericSquared"
	return 1 - arg1.Value * arg2 ^ 2
end
local function CreateNumeric(arg1, arg2) -- Line 121
	--[[ Upvalues[1]:
		[1]: ApplyNumeric_upvr (readonly)
	]]
	local var29 = arg1[arg2]
	local var30
	if var29 < 1 then
		var30 = {
			Apply = ApplyNumeric_upvr;
			Value = 1 - var29;
		}
	end
	return var30
end
local function CreateNumericSquared(arg1, arg2) -- Line 140
	--[[ Upvalues[2]:
		[1]: ApplyNumeric_upvr (readonly)
		[2]: ApplyNumericSquared_upvr (readonly)
	]]
	local var32 = arg1[arg2]
	local var33
	if var32 < 1 then
		var33 = {
			Apply = ApplyNumeric_upvr;
			Value = 1 - var32;
		}
	end
	local var35 = var33
	if var35 then
		var35.Apply = ApplyNumericSquared_upvr
	end
	return var35
end
local tbl_6 = {
	ImageGui = {
		ImageTransparency = CreateNumeric;
	};
	NumberSequence = {
		Transparency = function(arg1, arg2) -- Line 86, Named "CreateNumberSequence"
			--[[ Upvalues[1]:
				[1]: Apply_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Keypoints = arg1[arg2].Keypoints
			local table_create_result1 = table.create(#Keypoints)
			local var26
			for i_2, v_2 in ipairs(Keypoints) do
				local Value = v_2.Value
				if Value < 1 then
				end
				table_create_result1[i_2] = NumberSequenceKeypoint.new(v_2.Time, 1 - Value, v_2.Envelope)
			end
			if nil then
			end
			return {
				Apply = Apply_upvr;
				Value = NumberSequence.new(table_create_result1);
			}
		end;
	};
	Numeric = {
		Transparency = CreateNumeric;
	};
	NumericSquared = {
		Transparency = CreateNumericSquared;
	};
	TextGui = {
		TextTransparency = CreateNumeric;
		TextStrokeTransparency = CreateNumericSquared;
	};
}
tbl_7_upvr.BasePart = tbl_6.Numeric
tbl_7_upvr.Decal = tbl_6.Numeric
tbl_7_upvr.UIStroke = tbl_6.NumericSquared
tbl_7_upvr.Beam = tbl_6.NumberSequence
tbl_7_upvr.ParticleEmitter = tbl_6.NumberSequence
tbl_7_upvr.GuiObject = {
	BackgroundTransparency = CreateNumeric;
}
tbl_7_upvr.Light = {
	Brightness = CreateNumeric;
}
tbl_2_upvr[tbl_7_upvr.GuiObject] = {
	CanvasGroup = {
		GroupTransparency = CreateNumeric;
	};
	ImageButton = tbl_6.ImageGui;
	ImageLabel = tbl_6.ImageGui;
	TextBox = tbl_6.TextGui;
	TextButton = tbl_6.TextGui;
	TextLabel = tbl_6.TextGui;
}
function Apply_upvr(arg1) -- Line 215, Named "Create"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module_2 = {
		Opacities = {};
	}
	if arg1 then
		module_4_upvr.Add(module_2, arg1)
	end
	return module_2
end
module_4_upvr.Create = Apply_upvr
function Apply_upvr(arg1, arg2, arg3, arg4) -- Line 230, Named "Add"
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var48 = arg2
	tbl[1] = var48
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 55. Error Block 32 start (CF ANALYSIS FAILED)
	if not arg4 and not var48:IsA("CanvasGroup") then
		local children = var48:GetChildren()
		table.move(children, 1, #children, #tbl + 1, tbl)
	end
	-- KONSTANTERROR: [68] 55. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [86.263708]
	-- KONSTANTERROR: [7] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
module_4_upvr.Add = Apply_upvr
function Apply_upvr(arg1, arg2, arg3) -- Line 295, Named "Remove"
	local module_3 = {}
	local tbl_5 = {}
	tbl_5[1] = arg2
	while 0 < #tbl_5 do
		local var68 = tbl_5[#tbl_5]
		tbl_5[#tbl_5] = nil
		local var69 = arg1.Opacities[var68]
		if var69 then
			arg1.Opacities[var68] = nil
			module_3[#module_3 + 1] = var68
			if arg3 then
				for i_3, v_3 in var69 do
					var68[i_3] = v_3:Apply(0)
					local _
				end
			end
		end
	end
	return module_3
end
module_4_upvr.Remove = Apply_upvr
function Apply_upvr(arg1, arg2, arg3) -- Line 324, Named "Apply"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local clamped = math.clamp(1 - arg2, 0, 1)
	if arg1._LastAppliedOpacity == clamped then
	else
		arg1._LastAppliedOpacity = clamped
		local Opacities = arg1.Opacities
		if arg3 then
			Opacities = {}
			local tbl_4 = {}
			tbl_4[1] = arg3
			while 0 < #tbl_4 do
				local var90 = tbl_4[#tbl_4]
				tbl_4[#tbl_4] = nil
				Opacities[var90] = arg1.Opacities[var90]
				local children_2 = var90:GetChildren()
				table.move(children_2, 1, #children_2, #tbl_4 + 1, tbl_4)
			end
		end
		for i_4, v_4 in Opacities do
			for i_5, v_5 in v_4 do
				i_4[i_5] = v_5:Apply(clamped)
			end
		end
	end
end
module_4_upvr.Apply = Apply_upvr
return module_4_upvr