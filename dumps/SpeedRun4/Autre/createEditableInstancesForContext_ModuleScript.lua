-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:21
-- Luau version 6, Types version 3
-- Time taken: 0.005696 seconds

local Parent = script.Parent.Parent
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 16, Named "addEditableInstance"
	local editableMeshes = arg1.editableMeshes
	if arg5 == "EditableImage" then
		editableMeshes = arg1.editableImages
	end
	if not editableMeshes[arg2] then
		editableMeshes[arg2] = {}
	end
	editableMeshes[arg2][arg3] = arg4
end
local getEngineFeatureEngineEditableMeshAvatarPublish_upvr = require(Parent.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local AssetService_upvr = game:GetService("AssetService")
local function createEditableInstanceFromId_upvr(arg1, arg2, arg3) -- Line 29, Named "createEditableInstanceFromId"
	--[[ Upvalues[2]:
		[1]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (readonly)
		[2]: AssetService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 30
		--[[ Upvalues[4]:
			[1]: arg3 (readonly)
			[2]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (copied, readonly)
			[3]: AssetService_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if arg3 == "EditableMesh" then
			if getEngineFeatureEngineEditableMeshAvatarPublish_upvr() then
				return AssetService_upvr:CreateEditableMeshAsync(arg1)
			end
			return AssetService_upvr:CreateEditableMeshStripSkinningAsync(arg1.Uri)
		end
		return AssetService_upvr:CreateEditableImageAsync(arg1)
	end)
	if not pcall_result1 then
		return pcall_result1, pcall_result2
	end
	arg2[arg1.Uri] = pcall_result2
	return true, {
		created = true;
		instance = pcall_result2;
	}
end
local function getEditableInstanceInfo_upvr(arg1, arg2, arg3, arg4) -- Line 53, Named "getEditableInstanceInfo"
	--[[ Upvalues[1]:
		[1]: createEditableInstanceFromId_upvr (readonly)
	]]
	local var14
	if arg4 then
		var14 = arg1.Object
	end
	if not var14 then
		local Uri_2 = arg1.Uri
		if Uri_2 and Uri_2 ~= "" then
			var14 = arg2[Uri_2]
			if not var14 then
				return createEditableInstanceFromId_upvr(arg1, arg2, arg3)
			end
		end
	end
	return true, {
		instance = var14;
		created = false;
	}
end
local function _(arg1, arg2, arg3, arg4) -- Line 74, Named "addContent"
	local tbl_6 = {}
	tbl_6.content = arg3
	tbl_6.contentType = arg4
	arg1[arg2] = tbl_6
end
local function getTextureContentMap_upvr(arg1, arg2) -- Line 81, Named "getTextureContentMap"
	if arg1:IsA("MeshPart") then
		arg2.TextureID = {
			content = arg1.TextureContent;
			contentType = "EditableImage";
		}
	else
		if arg1:IsA("SpecialMesh") then
			arg2.TextureId = {
				content = Content.fromUri(arg1.TextureId);
				contentType = "EditableImage";
			}
			return
		end
		if arg1:IsA("SurfaceAppearance") then
			arg2.ColorMap = {
				content = arg1.ColorMapContent;
				contentType = "EditableImage";
			}
			arg2.MetalnessMap = {
				content = arg1.MetalnessMapContent;
				contentType = "EditableImage";
			}
			arg2.NormalMap = {
				content = arg1.NormalMapContent;
				contentType = "EditableImage";
			}
			arg2.RoughnessMap = {
				content = arg1.RoughnessMapContent;
				contentType = "EditableImage";
			}
		end
	end
end
local function _(arg1, arg2) -- Line 115, Named "getCageMeshContent"
	--[[ Upvalues[2]:
		[1]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[2]: checkForProxyWrap_upvr (readonly)
	]]
	if not getEngineFeatureRemoveProxyWrap_upvr() then
		local WrapProxy_4 = arg1:FindFirstChild("WrapProxy")
		if WrapProxy_4 then
			if arg2 and checkForProxyWrap_upvr(WrapProxy_4) then
				return WrapProxy_4.MeshContent
			end
		end
	end
	return arg1.CageMeshContent
end
local function getMeshContentMap_upvr(arg1, arg2, arg3) -- Line 126, Named "getMeshContentMap"
	--[[ Upvalues[2]:
		[1]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[2]: checkForProxyWrap_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [98] 75. Error Block 23 start (CF ANALYSIS FAILED)
	arg2.MeshId = {
		content = Content.fromUri(arg1.MeshId);
		contentType = "EditableMesh";
	}
	do
		return
	end
	-- KONSTANTERROR: [98] 75. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 84. Error Block 66 start (CF ANALYSIS FAILED)
	if arg1:IsA("MeshPart") and not checkForProxyWrap_upvr(arg1) then
		arg2.MeshId = {
			content = arg1.MeshContent;
			contentType = "EditableMesh";
		}
		return
	end
	if arg1:IsA("WrapTarget") then
		if not getEngineFeatureRemoveProxyWrap_upvr() then
			local WrapProxy_2 = arg1:FindFirstChild("WrapProxy")
			if WrapProxy_2 and arg3 and checkForProxyWrap_upvr(WrapProxy_2) then
				-- KONSTANTWARNING: GOTO [155] #118
			end
		end
		arg2.CageMeshId = {
			content = arg1.CageMeshContent;
			contentType = "EditableMesh";
		}
		return
	end
	if arg1:IsA("WrapLayer") then
		if not getEngineFeatureRemoveProxyWrap_upvr() then
			local WrapProxy_3 = arg1:FindFirstChild("WrapProxy")
			if WrapProxy_3 and arg3 and checkForProxyWrap_upvr(WrapProxy_3) then
				-- KONSTANTWARNING: GOTO [187] #143
			end
		end
		arg2.CageMeshId = {
			content = arg1.CageMeshContent;
			contentType = "EditableMesh";
		}
		arg2.ReferenceMeshId = {
			content = arg1.ReferenceMeshContent;
			contentType = "EditableMesh";
		}
		return
	end
	if arg1:IsA("SpecialMesh") then
		arg2.MeshId = {
			content = Content.fromUri(arg1.MeshId);
			contentType = "EditableMesh";
		}
	end
	-- KONSTANTERROR: [112] 84. Error Block 66 end (CF ANALYSIS FAILED)
end
local function getOrCreateEditableInstances_upvr(arg1, arg2, arg3, arg4) -- Line 184, Named "getOrCreateEditableInstances"
	--[[ Upvalues[3]:
		[1]: getMeshContentMap_upvr (readonly)
		[2]: getTextureContentMap_upvr (readonly)
		[3]: getEditableInstanceInfo_upvr (readonly)
	]]
	local tbl_3 = {}
	getMeshContentMap_upvr(arg1, tbl_3, arg4)
	getTextureContentMap_upvr(arg1, tbl_3)
	for i, v in tbl_3 do
		local contentType = v.contentType
		local getEditableInstanceInfo_result1, getEditableInstanceInfo_result2 = getEditableInstanceInfo_upvr(v.content, arg2, contentType, arg4)
		local var52
		if not getEditableInstanceInfo_result1 then
			return getEditableInstanceInfo_result1, getEditableInstanceInfo_result2
		end
		var52 = arg3.editableMeshes
		if contentType == "EditableImage" then
			var52 = arg3.editableImages
		end
		if not var52[arg1] then
			var52[arg1] = {}
		end
		var52[arg1][i] = getEditableInstanceInfo_result2
	end
	return true
end
local destroyEditableInstances_upvr = require(Parent.util.destroyEditableInstances)
return function(arg1, arg2) -- Line 208
	--[[ Upvalues[2]:
		[1]: getOrCreateEditableInstances_upvr (readonly)
		[2]: destroyEditableInstances_upvr (readonly)
	]]
	local module = {
		editableMeshes = {};
		editableImages = {};
	}
	for _, v_2 in arg1 do
		local descendants = v_2:GetDescendants()
		table.insert(descendants, v_2)
		for _, v_3 in pairs(descendants) do
			local getOrCreateEditableInstances_upvr_result1, getOrCreateEditableInstances_result2 = getOrCreateEditableInstances_upvr(v_3, {}, module, arg2)
			if not getOrCreateEditableInstances_upvr_result1 then
				destroyEditableInstances_upvr(module.editableMeshes, module.editableImages)
				return false, {getOrCreateEditableInstances_result2}
			end
		end
	end
	return true, module
end