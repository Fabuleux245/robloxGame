-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:00
-- Luau version 6, Types version 3
-- Time taken: 0.010636 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("Dimensions"))
local module_upvr = require(Modules:WaitForChild("Utility"))
local module_upvr_4 = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("DimensionCommon"))
local tbl_upvr_5 = {
	["Left Arm"] = true;
	["Right Arm"] = true;
}
local tbl_upvr_4 = {
	[Enum.NormalId.Left] = Enum.NormalId.Right;
	[Enum.NormalId.Right] = Enum.NormalId.Left;
}
local tbl_upvr_3 = {
	FlipY = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1);
	FlipZ = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1);
	UnionLarge = CFrame.new(0, 0, 0.3, -1, 0, 0, 0, 1, 0, 0, 0, -1);
}
local tbl_upvr = {
	MirrorState_ByLevelAssetState = {};
}
local function MirrorStateCreate_upvr(arg1) -- Line 57, Named "MirrorStateCreate"
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
		[5]: tbl_upvr_5 (readonly)
		[6]: tbl_upvr_4 (readonly)
	]]
	local assert_result1 = assert(arg1.Map)
	local any_TableMerge_result1_upvr = module_upvr.TableMerge({
		AssetSubscriptions = {};
		Connections = {};
		OriginalCFrames = {};
		OriginalNormalId = {};
	}, module_upvr_4.MirrorState.Create(assert_result1))
	tbl_upvr.MirrorState_ByLevelAssetState[arg1] = any_TableMerge_result1_upvr
	local function DescendantAdded(arg1_2) -- Line 72
		--[[ Upvalues[6]:
			[1]: any_TableMerge_result1_upvr (readonly)
			[2]: module_upvr_4 (copied, readonly)
			[3]: tbl_upvr_3 (copied, readonly)
			[4]: tbl_upvr_5 (copied, readonly)
			[5]: module_upvr (copied, readonly)
			[6]: tbl_upvr_4 (copied, readonly)
		]]
		if arg1_2:IsA("BasePart") and not any_TableMerge_result1_upvr.OriginalCFrames[arg1_2] then
			local CFrame_3 = arg1_2.CFrame
			any_TableMerge_result1_upvr.OriginalCFrames[arg1_2] = CFrame_3
			local any_CFrameMirrorFromState_result1_3 = module_upvr_4.MirrorState.CFrameMirrorFromState(any_TableMerge_result1_upvr, CFrame_3)
			local var29
			if var29 then
				if arg1_2.Size.Y < 4 then
					var29 = tbl_upvr_3.FlipZ
				else
					var29 = tbl_upvr_3.UnionLarge
				end
				any_CFrameMirrorFromState_result1_3 *= var29
			else
				var29 = tbl_upvr_5[arg1_2.Name]
				if var29 then
					var29 = arg1_2.Parent
					if var29 then
						var29 = arg1_2.Parent:FindFirstChildOfClass("CharacterMesh")
					end
					if var29 ~= nil then
						any_CFrameMirrorFromState_result1_3 *= tbl_upvr_3.FlipY
					end
				end
			end
			arg1_2.CFrame = any_CFrameMirrorFromState_result1_3
		elseif not any_TableMerge_result1_upvr.OriginalNormalId[arg1_2] then
			local any_InstanceNormalIdGet_result1_2 = module_upvr.InstanceNormalIdGet(arg1_2)
			if any_InstanceNormalIdGet_result1_2 then
				local var31 = tbl_upvr_4[any_InstanceNormalIdGet_result1_2]
				if var31 then
					any_TableMerge_result1_upvr.OriginalNormalId[arg1_2] = any_InstanceNormalIdGet_result1_2
					module_upvr.InstanceNormalIdSet(arg1_2, var31)
				end
			end
		end
	end
	any_TableMerge_result1_upvr.Connections[#any_TableMerge_result1_upvr.Connections + 1] = assert_result1.Model.DescendantAdded:Connect(DescendantAdded)
	for _, v in assert_result1.Model:GetDescendants() do
		DescendantAdded(v)
	end
	return any_TableMerge_result1_upvr
end
local function MirrorStateDestroy_upvr(arg1) -- Line 128, Named "MirrorStateDestroy"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_2 in arg1.Connections do
		v_2:Disconnect()
	end
	for i_3, v_3 in arg1.OriginalCFrames do
		i_3.CFrame = v_3
	end
	for i_4, v_4 in arg1.OriginalNormalId do
		module_upvr.InstanceNormalIdSet(i_4, v_4)
	end
end
local any_AssertEnabled_result1_upvr = module_upvr_4.AssertEnabled("Mirror")
function any_AssertEnabled_result1_upvr.Equip() -- Line 144
end
function any_AssertEnabled_result1_upvr.Unequip() -- Line 148
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: MirrorStateDestroy_upvr (readonly)
	]]
	for _, v_5 in tbl_upvr.MirrorState_ByLevelAssetState do
		MirrorStateDestroy_upvr(v_5)
	end
	table.clear(tbl_upvr.MirrorState_ByLevelAssetState)
	tbl_upvr.AlternativeMode = nil
end
local function MirrorCFrame_FromAssetSubscription(arg1, arg2) -- Line 161
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	local var46 = tbl_upvr.MirrorState_ByLevelAssetState[arg1]
	local var47
	if var46 then
		var47 = module_upvr_4.MirrorState.CFrameMirrorFromState(var46, var47)
	end
	return var47
end
any_AssertEnabled_result1_upvr.CFrameFromDimensionSpace = MirrorCFrame_FromAssetSubscription
any_AssertEnabled_result1_upvr.CFrameToDimensionSpace = MirrorCFrame_FromAssetSubscription
function any_AssertEnabled_result1_upvr.Subscribe(arg1) -- Line 177
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: MirrorStateCreate_upvr (readonly)
	]]
	local Asset = arg1.AssetState.Asset
	local var50
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var50 = any_AssertEnabled_result1_upvr.Dimension
		var50 = module_upvr_2
		return var50.DimensionUsesAlternative(var50, Asset)
	end
	if not module_upvr_2.DimensionCanApply(any_AssertEnabled_result1_upvr.Dimension, Asset) or INLINED() then
		return false
	end
	local AssetState = arg1.AssetState
	var50 = tbl_upvr.MirrorState_ByLevelAssetState[AssetState]
	if not var50 then
		var50 = MirrorStateCreate_upvr(AssetState)
	end
	if not table.find(var50.AssetSubscriptions, arg1) then
		var50.AssetSubscriptions[#var50.AssetSubscriptions + 1] = arg1
		arg1.DimensionSubscriptionChanged:Fire(any_AssertEnabled_result1_upvr.Id, true)
	end
	return true
end
function any_AssertEnabled_result1_upvr.Unsubscribe(arg1) -- Line 204
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
		[3]: MirrorStateDestroy_upvr (readonly)
	]]
	local AssetState_3 = arg1.AssetState
	local var57 = tbl_upvr.MirrorState_ByLevelAssetState[AssetState_3]
	if var57 then
		local table_find_result1 = table.find(var57.AssetSubscriptions, arg1)
		if table_find_result1 then
			table.remove(var57.AssetSubscriptions, table_find_result1)
			arg1.DimensionSubscriptionChanged:Fire(any_AssertEnabled_result1_upvr.Id, false)
			if #var57.AssetSubscriptions == 0 then
				tbl_upvr.MirrorState_ByLevelAssetState[AssetState_3] = nil
				MirrorStateDestroy_upvr(var57)
			end
		end
	end
end
local tbl_upvr_2 = {
	[module_upvr_2.AlternativeModes.Mirror_Flat] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.385, 0, 0, 0, 1);
	[module_upvr_2.AlternativeModes.Mirror_Slanted] = CFrame.new(0, 0, 0, 1, -0.39, 0, 0, 1, 0, 0, 0, 1);
	[module_upvr_2.AlternativeModes.Mirror_Thin] = CFrame.new(0, 0, 0, 0.315, 0, 0, 0, 1, 0, 0, 0, 1);
	[module_upvr_2.AlternativeModes.Mirror_ZoomedIn] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0.218);
}
local module_upvr_3 = require(Modules:WaitForChild("UIShared"))
function any_AssertEnabled_result1_upvr.RenderStepped(arg1, arg2) -- Line 236
	--[[ Upvalues[3]:
		[1]: any_AssertEnabled_result1_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	if any_AssertEnabled_result1_upvr.Mode then
		local var64 = tbl_upvr_2[any_AssertEnabled_result1_upvr.Mode]
		if var64 then
			local Camera_2 = module_upvr_3.Camera
			Camera_2.CFrame *= var64
		end
	end
end
return any_AssertEnabled_result1_upvr