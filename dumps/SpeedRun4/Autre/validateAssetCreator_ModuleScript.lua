-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:55
-- Luau version 6, Types version 3
-- Time taken: 0.008242 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Parent.Promise)
game:DefineFastInt("UGCValidationCanPublishRequestPageSize", 50)
game:DefineFastInt("UGCValidationMaxAssetSizeAllowed", 500)
local HttpService_upvr = game:GetService("HttpService")
local Constants_upvr = require(Parent.Constants)
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 34, Named "createCanPublishPromise"
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if #arg2 == 0 then
		return Promise_upvr.resolve()
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 38
		--[[ Upvalues[7]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg5 (readonly)
			[5]: arg1 (readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: arg4 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.assetIds = arg2
		tbl_4.restrictedEntities = arg3
		tbl_4.universeId = arg5
		local tbl_7 = {}
		tbl_7.Url = arg1
		tbl_7.Method = "POST"
		tbl_7.Body = HttpService_upvr:JSONEncode(tbl_4)
		local tbl_6 = {}
		tbl_6[Constants_upvr.ExperienceAuthHeaderKey] = arg4
		tbl_6[Constants_upvr.ContentType] = Constants_upvr.ApplicationJson
		tbl_7.Headers = tbl_6
		HttpService_upvr:RequestInternal(tbl_7):Start(function(arg1_3, arg2_3) -- Line 55
			--[[ Upvalues[3]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2_2 (readonly)
			]]
			if arg1_3 and arg2_3.StatusCode == 200 then
				arg1_2(HttpService_upvr:JSONDecode(arg2_3.Body))
			else
				arg2_2()
			end
		end)
	end)
end
local formatted_upvr = string.format("https://apis.%s", require(Parent.util.APIUtil).getBaseDomain())
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local game_GetFastInt_result1_upvr = game:GetFastInt("UGCValidationMaxAssetSizeAllowed")
local Analytics_upvr = require(Parent.Analytics)
local getFFlagFixPackageIDFieldName_upvr = require(Parent.flags.getFFlagFixPackageIDFieldName)
local game_GetFastInt_result1_upvr_2 = game:GetFastInt("UGCValidationCanPublishRequestPageSize")
local getFFlagUGCValidationAnalytics_upvr = require(Parent.flags.getFFlagUGCValidationAnalytics)
return function(arg1, arg2) -- Line 67, Named "validateAssetCreator"
	--[[ Upvalues[10]:
		[1]: formatted_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: game_GetFastInt_result1_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: getFFlagFixPackageIDFieldName_upvr (readonly)
		[6]: game_GetFastInt_result1_upvr_2 (readonly)
		[7]: Promise_upvr (readonly)
		[8]: HttpService_upvr (readonly)
		[9]: Constants_upvr (readonly)
		[10]: getFFlagUGCValidationAnalytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local restrictedUserIds_upvr = arg2.restrictedUserIds
	local var58
	if arg2.isServer then
		var58 = "packages-api/v1/rcc/canPublish"
	else
		var58 = "packages-api/v1/canPublish"
	end
	local tbl_2 = {}
	var58 = {}
	tbl_2.User = var58
	var58 = {}
	tbl_2.Group = var58
	var58 = FailureReasonsAccumulator_upvr.new()
	local tbl = {}
	local tbl_5 = {}
	for _, v in ipairs(restrictedUserIds_upvr) do
		tbl_2[v.creatorType][tonumber(v.id)] = true
		local _
	end
	for i_2, _ in arg1 do
		if not tbl[i_2] then
			tbl[i_2] = true
		end
	end
	if game_GetFastInt_result1_upvr < 0 + 1 then
		i_2 = Analytics_upvr
		i_2 = arg2
		Analytics_upvr.reportFailure(i_2.ErrorType.validateAssetCreator_TooManyDependencies, nil, i_2)
		return false, {"Upload of model has too many children assets (Meshes, Textures, etc.) and cannot be processed as is. You need to rearrange the model."}
	end
	local tbl_3 = {}
	for var81, v_3 in tbl do
		local var68
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var68 = #tbl_3
			var68(tbl_3, var81)
			var68 = table.insert
			return game_GetFastInt_result1_upvr_2 <= var68
		end
		if not var68 or var81 ~= 0 or INLINED() then
			local var69_upvr = tbl_3
			if #var69_upvr == 0 then
				var68 = Promise_upvr.resolve()
			else
				local universeId_upvr = arg2.universeId
				local var72_upvr = formatted_upvr..var58
				local token_upvr = arg2.token
				var68 = Promise_upvr.new(function(arg1_4, arg2_4) -- Line 38
					--[[ Upvalues[7]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: var69_upvr (readonly)
						[3]: restrictedUserIds_upvr (readonly)
						[4]: universeId_upvr (readonly)
						[5]: var72_upvr (readonly)
						[6]: Constants_upvr (copied, readonly)
						[7]: token_upvr (readonly)
					]]
					HttpService_upvr:RequestInternal({
						Url = var72_upvr;
						Method = "POST";
						Body = HttpService_upvr:JSONEncode({
							assetIds = var69_upvr;
							restrictedEntities = restrictedUserIds_upvr;
							universeId = universeId_upvr;
						});
						Headers = {
							[Constants_upvr.ExperienceAuthHeaderKey] = token_upvr;
							[Constants_upvr.ContentType] = Constants_upvr.ApplicationJson;
						};
					}):Start(function(arg1_5, arg2_5) -- Line 55
						--[[ Upvalues[3]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: arg1_4 (readonly)
							[3]: arg2_4 (readonly)
						]]
						if arg1_5 and arg2_5.StatusCode == 200 then
							arg1_4(HttpService_upvr:JSONDecode(arg2_5.Body))
						else
							arg2_4()
						end
					end)
				end)
			end
			var69_upvr = table.insert
			var69_upvr(tbl_5, var68)
			local tbl_8 = {}
		end
	end
	local len = #tbl_8
	if 0 < len then
		local var80_upvr = tbl_8
		if #var80_upvr == 0 then
			var81 = Promise_upvr
			len = var81.resolve()
		else
			var81 = Promise_upvr
			function var81(arg1_6, arg2_6) -- Line 38
				--[[ Upvalues[7]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: var80_upvr (readonly)
					[3]: restrictedUserIds_upvr (readonly)
					[4]: universeId_upvr (readonly)
					[5]: var72_upvr (readonly)
					[6]: Constants_upvr (copied, readonly)
					[7]: token_upvr (readonly)
				]]
				HttpService_upvr:RequestInternal({
					Url = var72_upvr;
					Method = "POST";
					Body = HttpService_upvr:JSONEncode({
						assetIds = var80_upvr;
						restrictedEntities = restrictedUserIds_upvr;
						universeId = universeId_upvr;
					});
					Headers = {
						[Constants_upvr.ExperienceAuthHeaderKey] = token_upvr;
						[Constants_upvr.ContentType] = Constants_upvr.ApplicationJson;
					};
				}):Start(function(arg1_7, arg2_7) -- Line 55
					--[[ Upvalues[3]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: arg1_6 (readonly)
						[3]: arg2_6 (readonly)
					]]
					if arg1_7 and arg2_7.StatusCode == 200 then
						arg1_6(HttpService_upvr:JSONDecode(arg2_7.Body))
					else
						arg2_6()
					end
				end)
			end
			len = var81.new(var81)
		end
		var81 = len
		var80_upvr = table.insert
		var80_upvr(tbl_5, var81)
	end
	var80_upvr = Promise_upvr
	var80_upvr = tbl_5
	local any_await_result1, any_await_result2 = var80_upvr.all(var80_upvr):await()
	if not any_await_result1 then
		var81 = Analytics_upvr
		var68 = Analytics_upvr
		v_3 = var68.ErrorType
		var81 = v_3.validateAssetCreator_FailedToLoad
		v_3 = nil
		var68 = arg2
		var81.reportFailure(var81, v_3, var68)
		var81 = {}
		v_3 = "Failed to load detailed information for model assets. Make sure all model assets exist and try again."
		var81[1] = v_3
		return false, var81
	end
	for _, v_4 in any_await_result2 do
		for i_5, v_5 in pairs(v_4.result) do
			if getFFlagUGCValidationAnalytics_upvr() and not v_5 then
				Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateAssetCreator_DependencyNotOwnedByCreator, nil, arg2)
			end
			local var91 = arg1[i_5]
			var58:updateReasons(v_5, {string.format("%s.%s ( %s ) being used is not owned by the experience creator or player. You can only publish assets that you own.", var91.instance:GetFullName(), var91.fieldName, i_5)})
		end
	end
	return var58:getFinalResults()
end