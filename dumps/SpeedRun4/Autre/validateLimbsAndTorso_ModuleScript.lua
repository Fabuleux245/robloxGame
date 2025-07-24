-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:20
-- Luau version 6, Types version 3
-- Time taken: 0.004519 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local function _(arg1, arg2) -- Line 15, Named "getInstance"
	for _, v in pairs(arg1) do
		if v.Name == arg2 then
			return v
		end
	end
	return nil
end
local function areTopLevelFoldersCorrect_upvr(arg1, arg2) -- Line 24, Named "areTopLevelFoldersCorrect"
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local var10
	if #arg1 ~= #arg2 then
		var10 = false
	else
		var10 = true
	end
	if not var10 then
		return false
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 22. Error Block 26 start (CF ANALYSIS FAILED)
	local var11
	if not var11 or var11.ClassName ~= "Folder" then
		return false
	end
	-- KONSTANTERROR: [26] 22. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 13. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 13. Error Block 7 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 38, Named "getFullNameWithoutRootFolder"
	local any_GetFullName_result1 = arg1:GetFullName()
	local string_find_result1, string_find_result2 = string.find(any_GetFullName_result1, arg2.."%.")
	assert(string_find_result1 and string_find_result2)
	return string.sub(any_GetFullName_result1, string_find_result2 + 1, #any_GetFullName_result1)
end
local function compareFolderInfo_upvr(arg1, arg2, arg3) -- Line 45, Named "compareFolderInfo"
	--[[ Upvalues[2]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	for i_2, v_2 in arg1 do
		if arg2[i_2] == nil or arg2[i_2] ~= v_2 then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLimbsAndTorso_FolderInfoMismatch, nil, arg3)
			FailureReasonsAccumulator_upvr.new():updateReasons(false, {`Attribute {i_2} has different values in different children folders. You need to use the same value in all folders.`})
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end
local function validateFolderAssetIdsMatch_upvr(arg1, arg2, arg3) -- Line 67, Named "validateFolderAssetIdsMatch"
	--[[ Upvalues[3]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: compareFolderInfo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	if #arg2 == 1 then
		return true
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [109] 87. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [109] 87. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 13. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [109.9]
	-- KONSTANTERROR: [14] 13. Error Block 4 end (CF ANALYSIS FAILED)
end
local validateTags_upvr = require(Parent.validation.validateTags)
local validatePropertyRequirements_upvr = require(Parent.validation.validatePropertyRequirements)
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
local function validateR6Folder_upvr(arg1, arg2, arg3) -- Line 110, Named "validateR6Folder"
	--[[ Upvalues[5]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: validateTags_upvr (readonly)
		[4]: validatePropertyRequirements_upvr (readonly)
		[5]: validateAttributes_upvr (readonly)
	]]
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	if 0 < #arg1:GetChildren() then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLimbsAndTorso_R6FolderHasChildren, nil, arg3)
		any_new_result1:updateReasons(false, {string.format("Deprecated R6 folder for '%s' should be empty. You need to clear that folder and try again.", arg2.Name)})
	end
	any_new_result1:updateReasons(validateTags_upvr(arg1, arg3))
	any_new_result1:updateReasons(validatePropertyRequirements_upvr(arg1, arg2, arg3))
	any_new_result1:updateReasons(validateAttributes_upvr(arg1, arg3))
	return any_new_result1:getFinalResults()
end
local validateMeshPartBodyPart_upvr = require(Parent.validation.validateMeshPartBodyPart)
local createLimbsAndTorsoSchema_upvr = require(Parent.util.createLimbsAndTorsoSchema)
return function(arg1) -- Line 136, Named "validateLimbsAndTorso"
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: areTopLevelFoldersCorrect_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: validateR6Folder_upvr (readonly)
		[5]: validateMeshPartBodyPart_upvr (readonly)
		[6]: createLimbsAndTorsoSchema_upvr (readonly)
		[7]: validateFolderAssetIdsMatch_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local var25
	if arg1.instances == nil then
		var25 = false
	else
		var25 = true
	end
	assert(var25, "instances required in validationContext for validateLimbsAndTorso")
	if arg1.assetTypeEnum == nil then
	else
	end
	var25 = assert
	var25(true, "assetTypeEnum required in validationContext for validateLimbsAndTorso")
	var25 = arg1.requireAllFolders
	local tbl = {Constants_upvr.FOLDER_NAMES.R15ArtistIntent}
	if var25 then
		table.insert(tbl, Constants_upvr.FOLDER_NAMES.R15Fixed)
		table.insert(tbl, Constants_upvr.FOLDER_NAMES.R6)
	end
	if not areTopLevelFoldersCorrect_upvr(arg1.instances, tbl) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLimbsAndTorso_TopLevelFolders, nil, arg1)
		local module = {}
		local concatenated = table.concat(tbl, ", ")
		module[1] = "Incorrect hierarchy for asset with the following missing folders: "..concatenated
		return false, module
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [108] 76. Error Block 41 start (CF ANALYSIS FAILED)
	local var30
	if concatenated == Constants_upvr.FOLDER_NAMES.R6 then
		local validateR6Folder_result1, _ = validateR6Folder_upvr(nil, arg1.assetTypeEnum, arg1)
		var30 = validateR6Folder_result1
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		local var23_result1, var23_result2 = validateMeshPartBodyPart_upvr(nil, createLimbsAndTorsoSchema_upvr(arg1.assetTypeEnum, concatenated, arg1), arg1)
		var30 = var23_result1
	end
	if not var30 then
		return var30, var23_result2
	end
	-- KONSTANTERROR: [108] 76. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 67. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 67. Error Block 14 end (CF ANALYSIS FAILED)
end