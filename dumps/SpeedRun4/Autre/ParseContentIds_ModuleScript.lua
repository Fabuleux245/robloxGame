-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:41
-- Luau version 6, Types version 3
-- Time taken: 0.004389 seconds

local Parent = script.Parent.Parent
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local module = {}
local function _(arg1) -- Line 22, Named "getRbxAssetId"
	return string.match(arg1, "^rbxassetid://(%d+)$")
end
local function getAssetUrlId_upvr(arg1) -- Line 28, Named "getAssetUrlId"
	local string_match_result1 = string.match(arg1, "^https?://www%.(.+)")
	if not string_match_result1 then
		string_match_result1 = string.match(arg1, "^https?://(.+)")
	end
	local var5 = string_match_result1
	if not var5 then
		return nil
	end
	local string_match_result1_6 = string.match(var5, "^sitetest%d%.robloxlabs(.+)")
	if not string_match_result1_6 then
		string_match_result1_6 = string.match(var5, "^roblox(.+)")
	end
	local var7 = string_match_result1_6
	if not var7 then
		return nil
	end
	return string.match(var7, "^%.com/asset/%?id=(%d+)$")
end
local function getAssetDeliveryAssetUrlId_upvr(arg1) -- Line 42, Named "getAssetDeliveryAssetUrlId"
	local string_match_result1_5 = string.match(arg1, "^https?://assetdelivery%.(.+)")
	if not string_match_result1_5 then
		return nil
	end
	local string_match_result1_3 = string.match(string_match_result1_5, "^sitetest%d%.robloxlabs(.+)")
	if not string_match_result1_3 then
		string_match_result1_3 = string.match(string_match_result1_5, "^roblox(.+)")
	end
	local var10 = string_match_result1_3
	if not var10 then
		return nil
	end
	return string.match(var10, "^%.com/v1/asset/%?id=(%d+)$")
end
local getFFlagAddUGCValidationForPackage_upvr = require(Parent.flags.getFFlagAddUGCValidationForPackage)
local getFFlagFixPackageIDFieldName_upvr = require(Parent.flags.getFFlagFixPackageIDFieldName)
local function tryGetAssetIdFromContentIdInternal_upvr(arg1) -- Line 56, Named "tryGetAssetIdFromContentIdInternal"
	--[[ Upvalues[4]:
		[1]: getFFlagAddUGCValidationForPackage_upvr (readonly)
		[2]: getFFlagFixPackageIDFieldName_upvr (readonly)
		[3]: getAssetUrlId_upvr (readonly)
		[4]: getAssetDeliveryAssetUrlId_upvr (readonly)
	]]
	if getFFlagAddUGCValidationForPackage_upvr() then
		local tonumber_result1_2 = tonumber(arg1)
		if tonumber_result1_2 ~= nil then
			if getFFlagFixPackageIDFieldName_upvr() then
				return tostring(tonumber_result1_2)
			end
			return tonumber_result1_2
		end
	end
	local string_match_result1_2 = string.match(arg1, "^rbxassetid://(%d+)$")
	if string_match_result1_2 ~= nil then
		return string_match_result1_2
	end
	local getAssetUrlId_upvr_result1 = getAssetUrlId_upvr(arg1)
	if getAssetUrlId_upvr_result1 ~= nil then
		return getAssetUrlId_upvr_result1
	end
	local getAssetDeliveryAssetUrlId_upvr_result1_2 = getAssetDeliveryAssetUrlId_upvr(arg1)
	if getAssetDeliveryAssetUrlId_upvr_result1_2 ~= nil then
		return getAssetDeliveryAssetUrlId_upvr_result1_2
	end
	return nil
end
local function _(arg1, arg2, arg3) -- Line 88, Named "hasInExpCreatedEditableInstance"
	if not arg3 then
		return false
	end
	if not arg3.allowEditableInstances then
		return false
	end
	local var21 = arg3.editableImages[arg1]
	if var21 and var21[arg2] and var21[arg2].instance then
		return true
	end
	local var22 = arg3.editableMeshes[arg1]
	if var22 and var22[arg2] and var22[arg2].instance then
		return true
	end
	return false
end
local isProxyWrapParent_upvr = require(Parent.util.isProxyWrapParent)
local function parseContentId_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 118, Named "parseContentId"
	--[[ Upvalues[3]:
		[1]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[2]: isProxyWrapParent_upvr (readonly)
		[3]: tryGetAssetIdFromContentIdInternal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 58. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 58. Error Block 25 end (CF ANALYSIS FAILED)
end
local Constants_upvr = require(Parent.Constants)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
local function parseWithErrorCheckInternal_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 177, Named "parseWithErrorCheckInternal"
	--[[ Upvalues[5]:
		[1]: Constants_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[4]: checkForProxyWrap_upvr (readonly)
		[5]: parseContentId_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var43 = arg5
	if not var43 then
		var43 = Constants_upvr.CONTENT_ID_FIELDS
	end
	local descendants = arg4:GetDescendants()
	table.insert(descendants, arg4)
	for _, v in pairs(descendants) do
		local var48
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local var49 = var43[v.ClassName]
			return var49
		end
		if getEngineFeatureRemoveProxyWrap_upvr() or not arg7.allowEditableInstances or not checkForProxyWrap_upvr(v) or INLINED() then
			if arg6 then
				local var50 = arg6[v.ClassName]
			end
			for _, v_2 in ipairs(var49) do
				local var54 = var50
				if var54 then
					var54 = var50[v_2]
				end
				FailureReasonsAccumulator_upvr.new():updateReasons(parseContentId_upvr(arg1, arg2, arg3, v, v_2, var54, arg7))
			end
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end
function module.tryGetAssetIdFromContentId(arg1) -- Line 222
	--[[ Upvalues[1]:
		[1]: tryGetAssetIdFromContentIdInternal_upvr (readonly)
	]]
	return tryGetAssetIdFromContentIdInternal_upvr(arg1)
end
function module.parseWithErrorCheck(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 226
	--[[ Upvalues[1]:
		[1]: parseWithErrorCheckInternal_upvr (readonly)
	]]
	return parseWithErrorCheckInternal_upvr(arg1, arg2, nil, arg3, arg4, arg5, arg6)
end
function module.parse(arg1, arg2, arg3) -- Line 245
	--[[ Upvalues[1]:
		[1]: parseWithErrorCheckInternal_upvr (readonly)
	]]
	local module_2 = {}
	assert(parseWithErrorCheckInternal_upvr({}, {}, module_2, arg1, arg2, nil, arg3))
	return module_2
end
return module