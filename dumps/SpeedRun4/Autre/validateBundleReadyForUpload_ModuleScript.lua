-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:00
-- Luau version 6, Types version 3
-- Time taken: 0.008150 seconds

local Parent = script.Parent.Parent
local tbl_6_upvr = {Enum.AssetType.DynamicHead, Enum.AssetType.Torso, Enum.AssetType.LeftArm, Enum.AssetType.RightArm, Enum.AssetType.LeftLeg, Enum.AssetType.RightLeg, Enum.AssetType.HairAccessory, Enum.AssetType.EyebrowAccessory, Enum.AssetType.EyelashAccessory}
local Promise_upvr = require(Parent.Parent.Promise)
local fixUpPreValidation_upvr = require(Parent.util.fixUpPreValidation)
local createUGCBodyPartFolders_upvr = require(Parent.util.createUGCBodyPartFolders)
local getRestrictedUserTable_upvr = require(Parent.util.getRestrictedUserTable)
local createEditableInstancesForContext_upvr = require(Parent.util.createEditableInstancesForContext)
local validateInternal_upvr = require(Parent.validation.validateInternal)
local destroyEditableInstances_upvr = require(Parent.util.destroyEditableInstances)
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local validateFullBody_upvr = require(Parent.validation.validateFullBody)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 54, Named "validateBundleReadyForUpload"
	--[[ Upvalues[10]:
		[1]: Promise_upvr (readonly)
		[2]: fixUpPreValidation_upvr (readonly)
		[3]: createUGCBodyPartFolders_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
		[5]: getRestrictedUserTable_upvr (readonly)
		[6]: createEditableInstancesForContext_upvr (readonly)
		[7]: validateInternal_upvr (readonly)
		[8]: destroyEditableInstances_upvr (readonly)
		[9]: ConstantsInterface_upvr (readonly)
		[10]: validateFullBody_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21 = arg4
	if not var21 then
		function var21() -- Line 62
		end
	end
	local var22_upvw = var21
	if var22_upvw == nil then
	else
	end
	assert(true, "Luau")
	if not arg1:IsA("Model") then
		return Promise_upvr.resolve({
			errors = {{
				assetType = nil;
				error = {
					type = "message";
					message = "Invalid root instance, must be a model";
				};
			}};
			pieces = {};
		})
	end
	local module = {}
	for i, v in arg2[arg3].allowedAssetTypeSettings do
		local assert_result1 = assert(Enum.AssetType[i], "Asset type name doesn't map to an enum item")
		local var29
		if v.isEligibleForUpload then
			var29 = true
			if v.minimumQuantity ~= 0 then
				if v.minimumQuantity ~= 1 then
					var29 = false
				else
					var29 = true
				end
			end
			assert(var29, "Invalid minimum quantity, createUGCBodyParts folder is a dictionary and will only ever give one.")
			if v.maximumQuantity ~= 0 then
				if v.maximumQuantity ~= 1 then
				else
				end
			end
			assert(true, "Invalid maximum quantity, createUGCBodyParts folder is a dictionary and will only ever give one.")
			local var30 = createUGCBodyPartFolders_upvr(fixUpPreValidation_upvr(arg1), arg2, arg3, false)[assert_result1]
			if var30 then
			end
			local var31
			if v.minimumQuantity ~= 0 or var30[1] ~= nil then
				local tbl_7 = {
					assetType = assert_result1;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_7.instance = var30[1]
				tbl_7.settings = v
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if var30[1] == nil then
					var31 = "finished"
				else
					var31 = "pending"
				end
				tbl_7.status = var31
				table.insert(module, tbl_7)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if var30[1] == nil then
					local tbl_4 = {
						assetType = assert_result1;
					}
					var31 = {}
					var31.type = "notFound"
					tbl_4.error = var31
					table.insert({}, tbl_4)
				end
			end
		end
	end
	table.sort(module, function(arg1_2, arg2_2) -- Line 139
		--[[ Upvalues[1]:
			[1]: tbl_6_upvr (copied, readonly)
		]]
		local table_find_result1 = table.find(tbl_6_upvr, arg2_2.assetType)
		if (table.find(tbl_6_upvr, arg1_2.assetType) or math.huge) >= (table_find_result1 or math.huge) then
			table_find_result1 = false
		else
			table_find_result1 = true
		end
		return table_find_result1
	end)
	local module_2_upvw = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2_upvw.errors = {}
	module_2_upvw.pieces = module
	var22_upvw(module_2_upvw)
	return Promise_upvr.each(module, function(arg1_3, arg2_3) -- Line 154
		--[[ Upvalues[8]:
			[1]: getRestrictedUserTable_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: arg6 (readonly)
			[4]: createEditableInstancesForContext_upvr (copied, readonly)
			[5]: validateInternal_upvr (copied, readonly)
			[6]: destroyEditableInstances_upvr (copied, readonly)
			[7]: module_2_upvw (read and write)
			[8]: var22_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var46
		if arg1_3.status == "finished" then
		else
			if arg1_3.instance == nil then
				var46 = false
			else
				var46 = true
			end
			assert(var46, "Unfinished piece doesn't have an instnace")
			var46 = nil
			local tbl = {arg1_3.instance}
			local tbl_3 = {
				instances = tbl;
				assetTypeEnum = arg1_3.assetType;
				allowUnreviewedAssets = false;
				restrictedUserIds = getRestrictedUserTable_upvr();
				isServer = false;
				isAsync = false;
			}
			tbl_3.allowEditableInstances = arg5
			tbl_3.bypassFlags = arg6
			tbl_3.validateMeshPartAccessories = false
			tbl_3.requireAllFolders = false
			local var7_result1, var7_result2 = createEditableInstancesForContext_upvr(tbl, arg5)
			if not var7_result1 then
				var46 = var7_result2
			else
				tbl_3.editableMeshes = var7_result2.editableMeshes
				tbl_3.editableImages = var7_result2.editableImages
				local var8_result1, var8_result2 = validateInternal_upvr(tbl_3)
				var46 = var8_result2
				destroyEditableInstances_upvr(tbl_3.editableMeshes, tbl_3.editableImages)
			end
			module_2_upvw = table.clone(module_2_upvw)
			module_2_upvw.errors = table.clone(module_2_upvw.errors)
			if not var8_result1 then
				if var46 == nil then
				else
				end
				assert(true, "Failure without errors")
				for _, v_6 in var46 do
					table.insert(module_2_upvw.errors, {
						assetType = arg1_3.assetType;
						error = {
							type = "message";
							message = v_6;
						};
					})
				end
			end
			module_2_upvw.pieces = table.clone(module_2_upvw.pieces)
			module_2_upvw.pieces[arg2_3].status = "finished"
			var22_upvw(module_2_upvw)
		end
	end):andThen(function() -- Line 214
		--[[ Upvalues[9]:
			[1]: arg3 (readonly)
			[2]: ConstantsInterface_upvr (copied, readonly)
			[3]: module_2_upvw (read and write)
			[4]: arg5 (readonly)
			[5]: arg6 (readonly)
			[6]: createEditableInstancesForContext_upvr (copied, readonly)
			[7]: validateFullBody_upvr (copied, readonly)
			[8]: destroyEditableInstances_upvr (copied, readonly)
			[9]: var22_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var80
		if arg3 == "Body" then
			local var87
			var80 = nil
			local createFullBodyData_result1 = (function(arg1_4) -- Line 216, Named "createFullBodyData"
				--[[ Upvalues[1]:
					[1]: ConstantsInterface_upvr (copied, readonly)
				]]
				for _, v_2 in arg1_4 do
					if ConstantsInterface_upvr.isBodyPart(v_2.assetType) then
						local tbl_5 = {}
						local assetType = v_2.assetType
						tbl_5.assetTypeEnum = assetType
						if v_2.instance then
							assetType = {}
							assetType[1] = v_2.instance
						else
							assetType = {}
						end
						tbl_5.allSelectedInstances = assetType
						table.insert({}, tbl_5)
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return {}
			end)(module_2_upvw.pieces)
			local tbl_2 = {
				fullBodyData = createFullBodyData_result1;
				isServer = false;
			}
			tbl_2.allowEditableInstances = arg5
			tbl_2.bypassFlags = arg6
			tbl_2.validateMeshPartAccessories = false
			tbl_2.requireAllFolders = false
			for i_3, v_3 in createFullBodyData_result1 do
				for i_4, v_4 in v_3.allSelectedInstances do
					table.insert({}, v_4)
					local var90
				end
			end
			local var7_result1_2, var7_result2_2 = createEditableInstancesForContext_upvr(var90, arg5)
			if not var7_result1_2 then
				var80 = var7_result2_2
				var87 = false
			else
				tbl_2.editableMeshes = var7_result2_2.editableMeshes
				tbl_2.editableImages = var7_result2_2.editableImages
				i_3 = tbl_2
				local var11_result1, var11_result2 = validateFullBody_upvr(i_3)
				var87 = var11_result1
				var80 = var11_result2
				var11_result2 = tbl_2.editableMeshes
				v_3 = tbl_2.editableImages
				destroyEditableInstances_upvr(var11_result2, v_3)
			end
			if not var87 then
				var11_result2 = module_2_upvw
				module_2_upvw = table.clone(var11_result2)
				var11_result2 = table.clone
				v_3 = module_2_upvw.errors
				var11_result2 = var11_result2(v_3)
				module_2_upvw.errors = var11_result2
				var11_result2 = var80
				if var11_result2 then
					v_3 = #var80
					if 0 >= v_3 then
						var11_result2 = false
					else
						var11_result2 = true
					end
				end
				v_3 = "There should always be a reason for failure"
				assert(var11_result2, v_3)
				var11_result2 = nil
				v_3 = nil
				for _, v_5 in var80, var11_result2, v_3 do
					v_4 = module_2_upvw
					i_4 = v_4.errors
					v_4 = {}
					v_4.assetType = nil
					v_4.error = {
						type = "message";
						message = v_5;
					}
					table.insert(i_4, v_4)
				end
			end
			var22_upvw(module_2_upvw)
		end
	end):andThen(function() -- Line 286
		--[[ Upvalues[1]:
			[1]: module_2_upvw (read and write)
		]]
		return module_2_upvw
	end)
end