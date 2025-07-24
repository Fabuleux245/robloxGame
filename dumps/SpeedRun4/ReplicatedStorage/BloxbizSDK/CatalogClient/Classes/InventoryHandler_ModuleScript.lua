-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:11
-- Luau version 6, Types version 3
-- Time taken: 0.003925 seconds

local Fusion_upvr = require(script.Parent.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion_upvr.Value
local module_upvr = {}
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local AvatarHandler_upvr = require(script.Parent.AvatarHandler)
local var2_result1_upvr = Value_upvr({})
local BindableEvent_upvw = Instance.new("BindableEvent")
local var8_upvw = false
local tbl_4_upvr = {"TShirt", "Hat", "HairAccessory", "FaceAccessory", "NeckAccessory", "ShoulderAccessory", "FrontAccessory", "BackAccessory", "WaistAccessory", "Shirt", "Pants", "Head", "Face", "Torso", "RightArm", "LeftArm", "LeftLeg", "RightLeg", "EmoteAnimation", "TShirtAccessory", "ShirtAccessory", "PantsAccessory", "JacketAccessory", "SweaterAccessory", "ShortsAccessory", "DressSkirtAccessory"}
module_upvr.ItemDetailsCache = {}
module_upvr.Inventory = var2_result1_upvr
local Utils_upvr = require(script.Parent.Parent.Parent.Utils)
function module_upvr.GetBatchItemDetails(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: AvatarEditorService_upvr (readonly)
	]]
	local tbl_3_upvr = {}
	for _, v in ipairs(arg1) do
		if not module_upvr.ItemDetailsCache[v] then
			table.insert(tbl_3_upvr, v)
		end
	end
	for _, v_2_upvr in ipairs(Utils_upvr.chunk(tbl_3_upvr, 100)) do
		local any_callWithRetry_result1, any_callWithRetry_result2 = Utils_upvr.callWithRetry(function() -- Line 65
			--[[ Upvalues[3]:
				[1]: tbl_3_upvr (readonly)
				[2]: AvatarEditorService_upvr (copied, readonly)
				[3]: v_2_upvr (readonly)
			]]
			if 0 < #tbl_3_upvr then
				return AvatarEditorService_upvr:GetBatchItemDetails(v_2_upvr, 1)
			end
			return {}
		end, 2)
		if any_callWithRetry_result2 then
			for _, v_3 in pairs(any_callWithRetry_result1) do
				module_upvr.ItemDetailsCache[v_3.Id] = v_3
			end
		end
	end
	for _, v_4 in ipairs(arg1) do
		({})[v_4] = module_upvr.ItemDetailsCache[v_4]
		local var44
	end
	return var44
end
function module_upvr.get() -- Line 88
	--[[ Upvalues[3]:
		[1]: var8_upvw (read and write)
		[2]: BindableEvent_upvw (read and write)
		[3]: var2_result1_upvr (readonly)
	]]
	if not var8_upvw then return end
	if BindableEvent_upvw ~= true then
		BindableEvent_upvw.Event:Wait()
	end
	return var2_result1_upvr:get()
end
function module_upvr.ownsAsset(arg1) -- Line 100
	--[[ Upvalues[3]:
		[1]: var8_upvw (read and write)
		[2]: BindableEvent_upvw (read and write)
		[3]: var2_result1_upvr (readonly)
	]]
	if not var8_upvw then return end
	if BindableEvent_upvw ~= true then
		BindableEvent_upvw.Event:Wait()
	end
	return not not var2_result1_upvr:get()[arg1]
end
function module_upvr.ownsAssetComputed(arg1) -- Line 112
	--[[ Upvalues[3]:
		[1]: Value_upvr (readonly)
		[2]: Fusion_upvr (readonly)
		[3]: var2_result1_upvr (readonly)
	]]
	local var45_upvw
	if type(arg1) == "number" then
		var45_upvw = Value_upvr(var45_upvw)
	end
	return Fusion_upvr.Computed(function() -- Line 117
		--[[ Upvalues[2]:
			[1]: var2_result1_upvr (copied, readonly)
			[2]: var45_upvw (read and write)
		]]
		return var2_result1_upvr:get()[var45_upvw:get()]
	end)
end
function module_upvr.addAsset(arg1) -- Line 122
	--[[ Upvalues[1]:
		[1]: var2_result1_upvr (readonly)
	]]
	local any_get_result1 = var2_result1_upvr:get()
	any_get_result1[arg1] = true
	var2_result1_upvr:set(any_get_result1)
end
local tbl_2_upvr = {}
local var49_upvw
function module_upvr.requestToWear(arg1) -- Line 136
	--[[ Upvalues[4]:
		[1]: tbl_2_upvr (readonly)
		[2]: var49_upvw (read and write)
		[3]: AvatarHandler_upvr (readonly)
		[4]: AvatarEditorService_upvr (readonly)
	]]
	if not tbl_2_upvr[arg1.AssetId] then
	end
	if var49_upvw then
	else
		var49_upvw = true
		local any_GetModel_result1 = AvatarHandler_upvr.GetModel()
		any_GetModel_result1.Parent = workspace
		local Humanoid = any_GetModel_result1.Humanoid
		AvatarHandler_upvr:TryOn(Humanoid, arg1.AssetId, arg1.AssetType, true)
		any_GetModel_result1:Destroy()
		AvatarEditorService_upvr:PromptSaveAvatar(Humanoid:GetAppliedDescription(), Humanoid.RigType)
		if AvatarEditorService_upvr.PromptSaveAvatarCompleted:Wait() == Enum.AvatarPromptResult.Success then
			tbl_2_upvr[arg1.AssetId] = true
		end
		var49_upvw = nil
	end
end
local function fetchPlayerInventory_upvr() -- Line 165, Named "fetchPlayerInventory"
	--[[ Upvalues[5]:
		[1]: tbl_4_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
		[3]: AvatarHandler_upvr (readonly)
		[4]: var2_result1_upvr (readonly)
		[5]: BindableEvent_upvw (read and write)
	]]
	local tbl = {}
	for _, v_5 in tbl_4_upvr do
		for _, v_6 in AvatarEditorService_upvr:GetInventory({Enum.AvatarAssetType[v_5]}):GetCurrentPage(), nil do
			tbl[v_6.AssetId] = AvatarHandler_upvr.BuildItemData(v_6)
		end
	end
	var2_result1_upvr:set(tbl)
	local var62 = BindableEvent_upvw
	BindableEvent_upvw = true
	var62:Fire()
	var62:Destroy()
end
function module_upvr.hasAccess() -- Line 188
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	return var8_upvw
end
local var63_upvw = false
function module_upvr.requestAccess() -- Line 192
	--[[ Upvalues[4]:
		[1]: var8_upvw (read and write)
		[2]: var63_upvw (read and write)
		[3]: AvatarEditorService_upvr (readonly)
		[4]: fetchPlayerInventory_upvr (readonly)
	]]
	local var64
	if var8_upvw then
		return true
	end
	if var63_upvw then
		return var8_upvw
	end
	var63_upvw = true
	AvatarEditorService_upvr:PromptAllowInventoryReadAccess()
	var64 = AvatarEditorService_upvr
	if var64.PromptAllowInventoryReadAccessCompleted:Wait() ~= Enum.AvatarPromptResult.Success then
		var64 = false
	else
		var64 = true
	end
	var8_upvw = var64
	var64 = var8_upvw
	if var64 then
		var64 = task.spawn
		var64(fetchPlayerInventory_upvr)
	else
		var64 = print
		var64("[Bloxbiz] Player denied inventory access to catalog")
	end
	var64 = nil
	var63_upvw = var64
	var64 = var8_upvw
	return var64
end
return module_upvr