-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:50
-- Luau version 6, Types version 3
-- Time taken: 0.010709 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local BoundsDataUtils_upvr = require(Parent.util.BoundsDataUtils)
local getFFlagUGCValidateUseMeshSizeProperty_upvr = require(Parent.flags.getFFlagUGCValidateUseMeshSizeProperty)
local module_6 = {}
local tbl_7_upvr = {
	MeshPart = {"MeshId"};
}
local tbl_5_upvr = {
	MeshPart = {
		MeshId = true;
	};
}
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local function validateMeshIds_upvr(arg1, arg2) -- Line 40, Named "validateMeshIds"
	--[[ Upvalues[3]:
		[1]: ParseContentIds_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	if not ParseContentIds_upvr.parseWithErrorCheck({}, {}, arg1, tbl_7_upvr, tbl_5_upvr, arg2) then
		return false, {arg1.Name.." does not have a MeshId"}
	end
	return true
end
local function validateAllMeshParts_upvr(arg1, arg2) -- Line 58, Named "validateAllMeshParts"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: validateMeshIds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v in Constants_upvr.ASSET_TYPE_INFO do
		if v.isBodyPart then
			for i_2, v_2 in pairs(v.subParts) do
				local var43 = arg1[i_2]
				local var44
				if not var43 or var43.ClassName ~= "MeshPart" then
					local module_3 = {}
					var44 = " missing"
					module_3[1] = i_2..var44
					return false, module_3
				end
				if var43.Name ~= i_2 then
					local module_2 = {}
					var44 = " input data is incorrectly set-up"
					module_2[1] = i_2..var44
					return false, module_2
				end
				local validateMeshIds_result1, validateMeshIds_result2 = validateMeshIds_upvr(var43, arg2)
				if not validateMeshIds_result1 then
					return false, validateMeshIds_result2
				end
				local tbl = {}
				var44 = v_2.rigAttachmentToParent
				var44 = 0
				tbl[var44.name] = var44
				var44 = v_2.otherAttachments
				for i_3 in var44 do
					local var50
					if string.find(i_3, "RigAttachment$") == nil then
						var50 = false
					else
						var50 = true
					end
					if var50 then
						tbl[i_3] = 0
					end
				end
				var44 = 0
				for _, v_3 in var43:GetChildren() do
					if v_3.ClassName == "Attachment" and tbl[v_3.Name] then
						if tbl[v_3.Name] == 1 then
							return false, {i_2.." has duplicate rig attachments: "..v_3.Name}
						end
						tbl[v_3.Name] += 1
						var44 += 1
					end
				end
				if var44 ~= 1 + 1 then
					return false, {"Missing rig attachments"}
				end
			end
		end
	end
	return true
end
local function _(arg1, arg2) -- Line 113, Named "isWindowValid"
	if arg1 > arg2 then
	else
	end
	return true
end
local tbl_3_upvr = {'X', 'Y', 'Z'}
local function calculateScalingWindow_upvr(arg1, arg2) -- Line 122, Named "calculateScalingWindow"
	--[[ Upvalues[2]:
		[1]: BoundsDataUtils_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local module = {}
	local any_calculateBoundsDimensions_result1, _, any_calculateBoundsDimensions_result3 = BoundsDataUtils_upvr.calculateBoundsDimensions(arg1)
	module.meshSize = any_calculateBoundsDimensions_result1
	module.overallSize = any_calculateBoundsDimensions_result3
	module.scaleTypes = {}
	for i_5, v_4 in arg2 do
		local tbl_4 = {
			max = math.huge;
			min = (-math.huge);
		}
		local var70
		for _, v_5 in var70 do
			local tbl_8 = {
				min = 0.00005 + v_4.minSize[v_5] / any_calculateBoundsDimensions_result1[v_5];
			}
			local var72 = v_4.maxSize[v_5] / any_calculateBoundsDimensions_result3[v_5] - 0.00005
			tbl_8.max = var72
			tbl_4[v_5] = tbl_8
			if tbl_4[v_5].min > tbl_4[v_5].max then
				var72 = false
			else
				var72 = true
			end
			tbl_4[v_5].ok = var72
			tbl_4.max = math.min(tbl_4.max, tbl_4[v_5].max)
			tbl_4.min = math.max(tbl_4.min, tbl_4[v_5].min)
		end
		if tbl_4.min > tbl_4.max then
			var70 = false
		else
			var70 = true
		end
		tbl_4.ok = var70
		var70 = module.scaleTypes
		var70[i_5] = tbl_4
	end
	return module
end
local function combineScalingWindows_upvr(arg1) -- Line 150, Named "combineScalingWindows"
	local module_5 = {}
	for _, v_6 in arg1 do
		for i_8, v_7 in v_6.scaleTypes do
			if not module_5[i_8] then
			end
			module_5[i_8] = {
				max = math.huge;
				min = (-math.huge);
			}
			module_5[i_8].max = math.min(module_5[i_8].max, v_7.max)
			module_5[i_8].min = math.max(module_5[i_8].min, v_7.min)
		end
	end
	return module_5
end
local function createFinalResults_upvr(arg1) -- Line 166, Named "createFinalResults"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local module_4 = {
		meshSize = arg1.meshSize;
		overallSize = arg1.overallSize;
	}
	for i_9, v_8 in arg1.scaleTypes do
		local tbl_9 = {}
		for _, v_9 in tbl_3_upvr do
			tbl_9[v_9] = v_8[v_9]
		end
		tbl_9.ok = v_8.ok
		tbl_9.min = v_8.min
		tbl_9.max = v_8.max
		module_4[i_9] = tbl_9
	end
	return module_4
end
local getFFlagUGCValidationConsolidateGetMeshInfos_upvr = require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getMeshInfo_upvr = require(Parent.util.getMeshInfo)
local getMeshVerts_upvr = require(Parent.util.getMeshVerts)
local calculateMinMax_upvr = require(Parent.util.calculateMinMax)
function module_6.preprocessDataAsync(arg1, arg2) -- Line 186
	--[[ Upvalues[7]:
		[1]: validateAllMeshParts_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[4]: getMeshInfo_upvr (readonly)
		[5]: getMeshVerts_upvr (readonly)
		[6]: getFFlagUGCValidateUseMeshSizeProperty_upvr (readonly)
		[7]: calculateMinMax_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local validateAllMeshParts_result1, validateAllMeshParts_result2 = validateAllMeshParts_upvr(arg1, arg2)
	if not validateAllMeshParts_result1 then
		return {
			ok = false;
			errors = validateAllMeshParts_result2;
		}
	end
	local tbl_2 = {}
	for _, v_10 in Constants_upvr.ASSET_TYPE_INFO do
		if v_10.isBodyPart then
			for i_12 in v_10.subParts do
				local var117
				if arg1[i_12].ClassName ~= "MeshPart" then
					var117 = false
				else
					var117 = true
				end
				assert(var117)
				local var118 = arg1[i_12]
				var117 = nil
				if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
					local getMeshInfo_upvr_result1, _, _ = getMeshInfo_upvr(var118, Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg2)
					var117 = getMeshInfo_upvr_result1
				else
					local getMeshInfo_upvr_result1_2, var90_result2, var90_result3 = getMeshInfo_upvr(var118, arg2)
					var117 = getMeshInfo_upvr_result1_2
				end
				if not var117 then
					return {
						ok = false;
						errors = var90_result2;
					}
				end
				local var126 = var90_result3
				tbl_2[var118.MeshId] = {}
				local var127 = tbl_2[var118.MeshId]
				local getMeshVerts_upvr_result1, var91_result2, getMeshVerts_upvr_result3 = getMeshVerts_upvr(var126, arg2)
				var117 = getMeshVerts_upvr_result1
				if not var117 then
					return {
						ok = false;
						errors = var91_result2;
					}
				end
				var127.verts = getMeshVerts_upvr_result3
				if not getFFlagUGCValidateUseMeshSizeProperty_upvr() then
					local verts = var127.verts
					if not verts or #verts == 0 then
						return {
							ok = false;
							errors = {"Mesh: "..var126.fullName.." contains no verts"};
						}
					end
					for _, v_11 in verts do
						local calculateMinMax_upvr_result1, calculateMinMax_upvr_result2 = calculateMinMax_upvr(var127.meshMin, var127.meshMax, v_11, v_11)
						var127.meshMin = calculateMinMax_upvr_result1
						var127.meshMax = calculateMinMax_upvr_result2
						local _
					end
				end
			end
		end
	end
	return {
		ok = true;
		cache = {
			meshData = tbl_2;
		};
	}
end
function module_6.isPreprocessDataCached(arg1, arg2) -- Line 256
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: getFFlagUGCValidateUseMeshSizeProperty_upvr (readonly)
	]]
	local meshData = arg2.meshData
	for _, v_12 in Constants_upvr.ASSET_TYPE_INFO do
		if v_12.isBodyPart then
			for i_15 in pairs(v_12.subParts) do
				local var147 = arg1[i_15]
				if var147 and var147.ClassName == "MeshPart" and var147.MeshId ~= "" then
					if not meshData then
						return false
					end
					local var148 = meshData[var147.MeshId]
					if not var148 then
						return false
					end
					if not var148.verts then
						return false
					end
					if not getFFlagUGCValidateUseMeshSizeProperty_upvr() and (not var148.meshMin or not var148.meshMax) then
						return false
					end
				end
			end
		end
	end
	return true
end
local getFFlagUGCValidateCalculateScaleToValidateBounds_upvr = require(Parent.flags.getFFlagUGCValidateCalculateScaleToValidateBounds)
local BoundsCalculator_upvr = require(Parent.util.BoundsCalculator)
function module_6.calculateScaleToValidateBoundsAsync(arg1, arg2, arg3) -- Line 298
	--[[ Upvalues[8]:
		[1]: getFFlagUGCValidateCalculateScaleToValidateBounds_upvr (readonly)
		[2]: validateAllMeshParts_upvr (readonly)
		[3]: BoundsCalculator_upvr (readonly)
		[4]: BoundsDataUtils_upvr (readonly)
		[5]: calculateScalingWindow_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: combineScalingWindows_upvr (readonly)
		[8]: createFinalResults_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	local var171
	if not getFFlagUGCValidateCalculateScaleToValidateBounds_upvr() then
		return {
			ok = false;
			errors = {"Feature flag not enabled"};
		}
	end
	local validateAllMeshParts_upvr_result1, validateAllMeshParts_upvr_result2 = validateAllMeshParts_upvr(arg1, arg2)
	if not validateAllMeshParts_upvr_result1 then
		return {
			ok = false;
			errors = validateAllMeshParts_upvr_result2;
		}
	end
	var171 = arg3
	local any_calculateIndividualFullBodyPartsData_result1, any_calculateIndividualFullBodyPartsData_result2, any_calculateIndividualFullBodyPartsData_result3 = BoundsCalculator_upvr.calculateIndividualFullBodyPartsData(arg1, arg2, var171)
	if not any_calculateIndividualFullBodyPartsData_result1 then
		var171 = {}
		var171.ok = false
		local var180 = any_calculateIndividualFullBodyPartsData_result2
		if not var180 then
			var180 = {}
			var180[1] = "Errors calculating parts metrics"
		end
		var171.errors = var180
		return var171
	end
	var171 = {}
	for _, v_13 in any_calculateIndividualFullBodyPartsData_result3 do
		var171 = BoundsDataUtils_upvr.combineBounds(var171, v_13.boundsData)
	end
	local tbl_6 = {
		FullBody = calculateScalingWindow_upvr(var171, Constants_upvr.FULL_BODY_BOUNDS);
	}
	for i_17, v_14 in Constants_upvr.ASSET_TYPE_INFO do
		local var182
		if var182 then
			var182 = {}
			for i_18 in v_14.subParts do
				var182 = BoundsDataUtils_upvr.combineBounds(var182, any_calculateIndividualFullBodyPartsData_result3[i_18].boundsData)
			end
			tbl_6[i_17.Name] = calculateScalingWindow_upvr(var182, Constants_upvr.ASSET_TYPE_INFO[i_17].bounds)
		end
	end
	local combineScalingWindows_upvr_result1, combineScalingWindows_upvr_result2, combineScalingWindows_upvr_result3 = combineScalingWindows_upvr(tbl_6)
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 135. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 135. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 94. Error Block 73 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var182 > Constants_upvr.ASSET_TYPE_INFO[i_17].bounds then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if calculateScalingWindow_upvr(var182, Constants_upvr.ASSET_TYPE_INFO[i_17].bounds) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if calculateScalingWindow_upvr(var182, Constants_upvr.ASSET_TYPE_INFO[i_17].bounds) <= var182 and var182 <= calculateScalingWindow_upvr(var182, Constants_upvr.ASSET_TYPE_INFO[i_17].bounds) then
			({}).ok = true
			if nil == nil then
				-- KONSTANTWARNING: GOTO [192] #143
			end
			-- KONSTANTWARNING: GOTO [191] #142
		end
		-- KONSTANTWARNING: GOTO [144] #109
	end
	-- KONSTANTERROR: [122] 94. Error Block 73 end (CF ANALYSIS FAILED)
end
return module_6