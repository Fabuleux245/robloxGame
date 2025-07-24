-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:30
-- Luau version 6, Types version 3
-- Time taken: 0.009940 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local function comparitorMethodImpl_upvr(arg1, arg2, arg3) -- Line 40, Named "comparitorMethodImpl"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local SMALLER = Constants_upvr.COMPARISON_METHODS.SMALLER
	if arg3 == SMALLER then
		if arg1 >= arg2 then
			SMALLER = false
		else
			SMALLER = true
		end
		return SMALLER
	end
	if arg3 == Constants_upvr.COMPARISON_METHODS.SMALLER_EQ then
		if arg1 > arg2 then
		else
		end
		return true
	end
	local var5
	if arg3 == Constants_upvr.COMPARISON_METHODS.FUZZY_EQ then
		if math.abs(arg1 - arg2) > 0.00001 then
		else
		end
		return true
	end
	local var6
	if arg3 == Constants_upvr.COMPARISON_METHODS.EXACT_EQ then
		if arg1 ~= arg2 then
		else
		end
		return true
	end
	local var7
	if arg3 == Constants_upvr.COMPARISON_METHODS.GREATER_EQ then
		if arg2 > arg1 then
		else
		end
		return true
	end
	local var8
	if arg3 == Constants_upvr.COMPARISON_METHODS.GREATER then
		if arg2 >= arg1 then
		else
		end
		return true
	end
	error("Invalid comparitor method: "..arg3)
end
local Cryo_upvr = require(Parent.Parent.Cryo)
local function doesPropertyMatchExpectations_upvr(arg1, arg2, arg3) -- Line 58, Named "doesPropertyMatchExpectations"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: comparitorMethodImpl_upvr (readonly)
	]]
	local var11
	if arg2 == var11 then
		if arg1 ~= nil then
			var11 = false
		else
			var11 = true
		end
		return var11
	end
	var11 = typeof(arg1)
	if var11 ~= typeof(arg2) then
		var11 = false
		return var11
	end
	var11 = typeof(arg2)
	if var11 == "number" then
		var11 = comparitorMethodImpl_upvr(arg1, arg2, arg3)
		return var11
	end
	var11 = typeof(arg2)
	if var11 == "Vector3" then
		var11 = comparitorMethodImpl_upvr(arg1.X, arg2.X, arg3)
		if var11 then
			var11 = comparitorMethodImpl_upvr(arg1.Y, arg2.Y, arg3)
			if var11 then
				var11 = comparitorMethodImpl_upvr(arg1.Z, arg2.Z, arg3)
			end
		end
		return var11
	end
	var11 = typeof(arg2)
	if var11 == "Color3" then
		var11 = comparitorMethodImpl_upvr(arg1.R, arg2.R, arg3)
		if var11 then
			var11 = comparitorMethodImpl_upvr(arg1.G, arg2.G, arg3)
			if var11 then
				var11 = comparitorMethodImpl_upvr(arg1.B, arg2.B, arg3)
			end
		end
		return var11
	end
	if arg1 ~= arg2 then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local valueToString_upvr = require(Parent.util.valueToString)
local function validatePropertyValue_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 83, Named "validatePropertyValue"
	--[[ Upvalues[3]:
		[1]: doesPropertyMatchExpectations_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: valueToString_upvr (readonly)
	]]
	if not doesPropertyMatchExpectations_upvr(arg4, arg5, arg6) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateProperties_PropertyMismatch, nil, arg1)
		return false, {string.format("Property %s of %s is invalid. Expected to be %s %s.", arg3, arg2:GetFullName(), arg6, valueToString_upvr(arg5))}
	end
	return true
end
local getFFlagUGCValidateBindOffset_upvr = require(Parent.flags.getFFlagUGCValidateBindOffset)
local function extractSubProperty_upvr(arg1, arg2) -- Line 108, Named "extractSubProperty"
	--[[ Upvalues[1]:
		[1]: getFFlagUGCValidateBindOffset_upvr (readonly)
	]]
	if typeof(arg2) == "CFrame" and arg1 == "PositionMagnitude" then
		return true, arg2.Position.Magnitude
	end
	if typeof(arg2) == "CFrame" and arg1 == "Orientation" then
		return true, Vector3.new(arg2:ToOrientation())
	end
	if getFFlagUGCValidateBindOffset_upvr() and typeof(arg2) == "CFrame" and arg1 == "Position" then
		return true, arg2.Position
	end
	return false
end
local function getAllActiveTestsOnProperty_upvr(arg1, arg2, arg3, arg4) -- Line 120, Named "getAllActiveTestsOnProperty"
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: getAllActiveTestsOnProperty_upvr (readonly)
		[3]: extractSubProperty_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local var19
	if typeof(arg4) ~= "table" then
		local module_2 = {}
		local tbl_2 = {}
		var19 = arg3
		tbl_2[1] = arg2
		tbl_2[2] = var19
		tbl_2[3] = arg4
		tbl_2[4] = Constants_upvr.COMPARISON_METHODS.FUZZY_EQ
		module_2[1] = tbl_2
		return module_2
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 44. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 44. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 46 start (CF ANALYSIS FAILED)
	if var19 == Constants_upvr.COMPARISON_METHODS.FUZZY_EQ then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if Constants_upvr.COMPARISON_METHODS.FUZZY_EQ == nil then
			-- KONSTANTWARNING: GOTO [63] #44
		end
	elseif var19 == Constants_upvr.COMPARISON_METHODS.FUZZY_EQ then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if Constants_upvr.COMPARISON_METHODS.FUZZY_EQ ~= nil then
		end
	end
	-- KONSTANTERROR: [28] 21. Error Block 46 end (CF ANALYSIS FAILED)
end
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
return function(arg1, arg2, arg3) -- Line 180, Named "validatePropertyRequirements"
	--[[ Upvalues[5]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getAllActiveTestsOnProperty_upvr (readonly)
		[5]: validatePropertyValue_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local descendants = arg1:GetDescendants()
	table.insert(descendants, arg1)
	for _, v_upvr in descendants do
		for i_2, v_2 in Constants_upvr.PROPERTIES do
			if v_upvr:IsA(i_2) then
				for i_3_upvr, v_3 in v_2 do
					local pcall_result1, pcall_result2 = pcall(function() -- Line 200
						--[[ Upvalues[2]:
							[1]: v_upvr (readonly)
							[2]: i_3_upvr (readonly)
						]]
						return v_upvr[i_3_upvr]
					end)
					if not pcall_result1 then
						Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateProperties_PropertyDoesNotExist, nil, arg3)
						FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Property '%s' not found in '%s'", i_3_upvr, v_upvr:GetFullName())})
					else
						for _, var39 in getAllActiveTestsOnProperty_upvr(arg3.assetTypeEnum, i_3_upvr, pcall_result2, v_3), nil do
							local unpacked_value_1, unpacked_value_2, unpacked_value_3, unpacked_value_4 = table.unpack(var39)
							FailureReasonsAccumulator_upvr.new():updateReasons(validatePropertyValue_upvr(arg3, v_upvr, unpacked_value_1, unpacked_value_2, unpacked_value_3, unpacked_value_4))
							local var49
						end
					end
				end
			end
		end
	end
	return var49:getFinalResults()
end