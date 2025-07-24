-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:02
-- Luau version 6, Types version 3
-- Time taken: 0.003414 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SkipHsrRCCUgcValidation", false)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("UGCValidationWithContextEntrypointFeature")
local UGCValidation_upvr = require(game:GetService("CorePackages").Packages.UGCValidation)
local function UGCValidationFunction_upvr(arg1) -- Line 9, Named "UGCValidationFunction"
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: UGCValidation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isServer = arg1.isServer
	local fullBodyData = arg1.fullBodyData
	local requireAllFolders = arg1.requireAllFolders
	local tbl = {
		skipSnapshot = true;
	}
	local var8 = true
	tbl.skipPhysicsDataReset = var8
	local var9
	if game_DefineFastFlag_result1_upvr then
		var8 = true
	else
		var8 = nil
	end
	tbl.skipValidateHSR = var8
	var9 = nil
	if game_GetEngineFeature_result1_upvr then
		if fullBodyData then
			local any_validateFullBodyWithContext_result1, _ = UGCValidation_upvr.validateFullBodyWithContext({
				fullBodyData = fullBodyData;
				isServer = isServer;
				allowEditableInstances = true;
				bypassFlags = tbl;
				shouldYield = true;
				requireAllFolders = requireAllFolders;
				validateMeshPartAccessories = false;
			})
			var9 = any_validateFullBodyWithContext_result1
		else
			local any_validateWithContext_result1, _ = UGCValidation_upvr.validateWithContext({
				instances = arg1.instances;
				assetTypeEnum = arg1.assetType;
				isServer = isServer;
				allowUnreviewedAssets = arg1.allowUnreviewedAssets;
				restrictedUserIds = arg1.restrictedUserIds;
				token = arg1.token;
				universeId = arg1.universeId;
				allowEditableInstances = true;
				shouldYield = true;
				validateMeshPartAccessories = true;
				requireAllFolders = requireAllFolders;
				bypassFlags = tbl;
			})
			var9 = any_validateWithContext_result1
		end
	elseif fullBodyData then
		local any_validateFullBody_result1, any_validateFullBody_result2 = UGCValidation_upvr.validateFullBody(fullBodyData, isServer, true, tbl, true, requireAllFolders)
		var9 = any_validateFullBody_result1
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x6)
		local any_validate_result1, any_validate_result2 = UGCValidation_upvr.validate(arg1.instances, arg1.assetType, isServer, arg1.allowUnreviewedAssets, arg1.restrictedUserIds, arg1.token, arg1.universeId, true, tbl, true, true, requireAllFolders)
		var9 = any_validate_result1
	end
	if not var9 then
		return false, any_validate_result2
	end
	return true, {"Success"}
end
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function() -- Line 94, Named "Install"
	--[[ Upvalues[2]:
		[1]: UGCValidationService_upvr (readonly)
		[2]: UGCValidationFunction_upvr (readonly)
	]]
	UGCValidationService_upvr:RegisterUGCValidationFunction(UGCValidationFunction_upvr)
end