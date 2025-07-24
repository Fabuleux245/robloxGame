-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:33
-- Luau version 6, Types version 3
-- Time taken: 0.009445 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Parent.Promise)
local fixUpPreValidation_upvr = require(Parent.util.fixUpPreValidation)
local createEditableInstancesForContext_upvr = require(Parent.util.createEditableInstancesForContext)
local validateInternal_upvr = require(Parent.validation.validateInternal)
local destroyEditableInstances_upvr = require(Parent.util.destroyEditableInstances)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ValidateFullShoesBundleStudio", false)
local validateShoes_upvr = require(Parent.validation.validateShoes)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 23, Named "validateShoesBundleReadyForUpload"
	--[[ Upvalues[7]:
		[1]: Promise_upvr (readonly)
		[2]: fixUpPreValidation_upvr (readonly)
		[3]: createEditableInstancesForContext_upvr (readonly)
		[4]: validateInternal_upvr (readonly)
		[5]: destroyEditableInstances_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: validateShoes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var18 = arg4
	if not var18 then
		function var18() -- Line 31
		end
	end
	local var19_upvw = var18
	if var19_upvw == nil then
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
	local LeftShoeAccessory = arg1:FindFirstChild("LeftShoeAccessory")
	local RightShoeAccessory = arg1:FindFirstChild("RightShoeAccessory")
	if not LeftShoeAccessory or not LeftShoeAccessory:IsA("Accessory") or not RightShoeAccessory or not RightShoeAccessory:IsA("Accessory") then
		return Promise_upvr.resolve({
			errors = {{
				assetType = nil;
				error = {
					type = "message";
					message = "Shoes must of type 'Accessory' and names must be 'LeftShoeAccessory' and 'RightShoeAccessory'";
				};
			}};
			pieces = {};
		})
	end
	local tbl_3 = {}
	local module = {}
	for i, v in arg2[arg3].allowedAssetTypeSettings do
		local assert_result1 = assert(Enum.AssetType[i], "Asset type name doesn't map to an enum item")
		local var36
		if v.isEligibleForUpload then
			local var37 = ({
				[Enum.AssetType.LeftShoeAccessory] = {fixUpPreValidation_upvr(LeftShoeAccessory)};
				[Enum.AssetType.RightShoeAccessory] = {fixUpPreValidation_upvr(RightShoeAccessory)};
			})[assert_result1]
			local var38 = var37
			if var38 then
				var38 = var37[1]
			end
			local tbl_9 = {
				assetType = assert_result1;
				instance = var38;
				settings = v;
			}
			if var38 == nil then
				var36 = "finished"
			else
				var36 = "pending"
			end
			tbl_9.status = var36
			tbl_3[assert_result1] = tbl_9
			if var38 == nil then
				var36 = {}
				table.insert(var36, {
					assetType = assert_result1;
					error = {
						type = "notFound";
					};
				})
			end
		end
	end
	table.insert(module, tbl_3[Enum.AssetType.LeftShoeAccessory])
	table.insert(module, tbl_3[Enum.AssetType.RightShoeAccessory])
	local module_4_upvw = {
		errors = {};
		pieces = module;
	}
	var19_upvw(module_4_upvw)
	return Promise_upvr.each(module, function(arg1_2, arg2_2) -- Line 121
		--[[ Upvalues[7]:
			[1]: arg5 (readonly)
			[2]: arg6 (readonly)
			[3]: createEditableInstancesForContext_upvr (copied, readonly)
			[4]: validateInternal_upvr (copied, readonly)
			[5]: destroyEditableInstances_upvr (copied, readonly)
			[6]: module_4_upvw (read and write)
			[7]: var19_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var52
		if arg1_2.status == "finished" then
		else
			if arg1_2.instance == nil then
				var52 = false
			else
				var52 = true
			end
			assert(var52, "Unfinished piece doesn't have an instance")
			var52 = nil
			local tbl_2 = {arg1_2.instance}
			local tbl = {
				instances = tbl_2;
				assetTypeEnum = arg1_2.assetType;
			}
			tbl.allowEditableInstances = arg5
			tbl.bypassFlags = arg6
			local createEditableInstancesForContext_upvr_result1_2, var4_result2_2 = createEditableInstancesForContext_upvr(tbl_2, arg5)
			if not createEditableInstancesForContext_upvr_result1_2 then
				var52 = var4_result2_2
			else
				tbl.editableMeshes = var4_result2_2.editableMeshes
				tbl.editableImages = var4_result2_2.editableImages
				local validateInternal_upvr_result1, var5_result2 = validateInternal_upvr(tbl)
				var52 = var5_result2
				destroyEditableInstances_upvr(tbl.editableMeshes, tbl.editableImages)
			end
			module_4_upvw = table.clone(module_4_upvw)
			module_4_upvw.errors = table.clone(module_4_upvw.errors)
			if not validateInternal_upvr_result1 then
				if var52 == nil then
				else
				end
				assert(true, "Failure without errors")
				for _, v_6 in var52 do
					table.insert(module_4_upvw.errors, {
						assetType = arg1_2.assetType;
						error = {
							type = "message";
							message = v_6;
						};
					})
				end
			end
			module_4_upvw.pieces = table.clone(module_4_upvw.pieces)
			module_4_upvw.pieces[arg2_2].status = "finished"
			var19_upvw(module_4_upvw)
		end
	end):andThen(function() -- Line 175
		--[[ Upvalues[8]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: module_4_upvw (read and write)
			[3]: arg5 (readonly)
			[4]: arg6 (readonly)
			[5]: createEditableInstancesForContext_upvr (copied, readonly)
			[6]: validateShoes_upvr (copied, readonly)
			[7]: destroyEditableInstances_upvr (copied, readonly)
			[8]: var19_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var127
		if game_DefineFastFlag_result1_upvr then
			local var135
			var127 = nil
			local createFullBodyData_result1_2 = (function(arg1_4) -- Line 177, Named "createFullBodyData"
				local module_3 = {}
				for _, v_2 in arg1_4 do
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
					table.insert(module_3, tbl_5)
				end
				return module_3
			end)(module_4_upvw.pieces)
			local tbl_6 = {
				fullBodyData = createFullBodyData_result1_2;
				isServer = false;
			}
			tbl_6.allowEditableInstances = arg5
			tbl_6.bypassFlags = arg6
			for i_3, v_3 in createFullBodyData_result1_2 do
				for i_4, v_4 in v_3.allSelectedInstances do
					table.insert({}, v_4)
					local var138
				end
			end
			local createEditableInstancesForContext_upvr_result1, var4_result2 = createEditableInstancesForContext_upvr(var138, arg5)
			if not createEditableInstancesForContext_upvr_result1 then
				var127 = var4_result2
				var135 = false
			else
				tbl_6.editableMeshes = var4_result2.editableMeshes
				tbl_6.editableImages = var4_result2.editableImages
				i_3 = tbl_6
				local validateShoes_upvr_result1, validateShoes_upvr_result2 = validateShoes_upvr(i_3)
				var135 = validateShoes_upvr_result1
				var127 = validateShoes_upvr_result2
				validateShoes_upvr_result2 = tbl_6.editableMeshes
				v_3 = tbl_6.editableImages
				destroyEditableInstances_upvr(validateShoes_upvr_result2, v_3)
			end
			if not var135 then
				validateShoes_upvr_result2 = module_4_upvw
				module_4_upvw = table.clone(validateShoes_upvr_result2)
				validateShoes_upvr_result2 = table.clone
				v_3 = module_4_upvw.errors
				validateShoes_upvr_result2 = validateShoes_upvr_result2(v_3)
				module_4_upvw.errors = validateShoes_upvr_result2
				validateShoes_upvr_result2 = var127
				if validateShoes_upvr_result2 then
					v_3 = #var127
					if 0 >= v_3 then
						validateShoes_upvr_result2 = false
					else
						validateShoes_upvr_result2 = true
					end
				end
				v_3 = "There should always be a reason for failure"
				assert(validateShoes_upvr_result2, v_3)
				validateShoes_upvr_result2 = nil
				v_3 = nil
				for _, v_5 in var127, validateShoes_upvr_result2, v_3 do
					v_4 = module_4_upvw
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
		end
		var19_upvw(module_4_upvw)
	end):andThen(function() -- Line 241
		--[[ Upvalues[1]:
			[1]: module_4_upvw (read and write)
		]]
		return module_4_upvw
	end)
end