-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:59
-- Luau version 6, Types version 3
-- Time taken: 0.008935 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("ClientData"))
local module_5_upvr = require(Modules:WaitForChild("Dimensions"))
local module_4_upvr = require(Modules:WaitForChild("LocalPlayerManager"))
local module_3_upvr = require(Modules:WaitForChild("Utility"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr = require(LevelLoader:WaitForChild("DimensionCommon"))
local tbl_3_upvr = {
	ActiveDimensions = {};
	ActiveMethods = {
		CFrameFromDimensionSpace = {};
		CFrameToDimensionSpace = {};
		ResolveSubscriptions = {};
		CharacterAdded = {};
		CharacterRemoving = {};
		PreSimulation = {};
		PostSimulation = {};
		RenderStepped = {};
	};
	LightingStateStack = {};
	LightingStateStackDirty = false;
	SubscribedAssetSubscriptions = {};
	SubscriptionResolutionIdle = true;
	SubscriptionResolutionPending_ByLevelAssetState = {};
	CharacterDisableState = module_4_upvr.CharacterDisableStateCreate();
}
function module.CFrameFromDimensionSpace(arg1, arg2) -- Line 72
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var17
	for _, v in tbl_3_upvr.ActiveMethods.CFrameFromDimensionSpace do
		var17 = v(arg1, var17)
	end
	return var17
end
function module.CFrameToDimensionSpace(arg1, arg2) -- Line 86
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var22
	for _, v_2 in tbl_3_upvr.ActiveMethods.CFrameToDimensionSpace do
		var22 = v_2(arg1, var22)
	end
	return var22
end
function module.CFramesRequireTransformation() -- Line 100
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var23 = true
	if #tbl_3_upvr.ActiveMethods.CFrameFromDimensionSpace == 0 then
		if #tbl_3_upvr.ActiveMethods.CFrameToDimensionSpace == 0 then
			var23 = false
		else
			var23 = true
		end
	end
	return var23
end
local function ResolveSubscriptions_upvr() -- Line 111, Named "ResolveSubscriptions"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	tbl_3_upvr.SubscriptionResolutionIdle = true
	table.clear(tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState)
	for i_3 in table.clone(tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState), nil do
		module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.ResolveSubscriptions, i_3)
	end
end
local function _(arg1) -- Line 126, Named "QueueResolution"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: ResolveSubscriptions_upvr (readonly)
	]]
	tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[arg1.AssetState] = true
	if tbl_3_upvr.SubscriptionResolutionIdle then
		tbl_3_upvr.SubscriptionResolutionIdle = false
		task.defer(ResolveSubscriptions_upvr)
	end
end
local function _(arg1, arg2) -- Line 137, Named "Subscribe_Internal"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: ResolveSubscriptions_upvr (readonly)
	]]
	if arg1.Subscribe and arg1.Subscribe(arg2) then
		arg2.DimensionsApplied_ById[arg1.Id] = true
		tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[arg2.AssetState] = true
		if tbl_3_upvr.SubscriptionResolutionIdle then
			tbl_3_upvr.SubscriptionResolutionIdle = false
			task.defer(ResolveSubscriptions_upvr)
		end
	end
end
local function _(arg1, arg2) -- Line 154, Named "Unsubscribe_Internal"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: ResolveSubscriptions_upvr (readonly)
	]]
	if arg1.Unsubscribe then
		arg1.Unsubscribe(arg2)
	end
	if arg2.DimensionsApplied_ById[arg1.Id] then
		arg2.DimensionsApplied_ById[arg1.Id] = nil
		tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[arg2.AssetState] = true
		if tbl_3_upvr.SubscriptionResolutionIdle then
			tbl_3_upvr.SubscriptionResolutionIdle = false
			task.defer(ResolveSubscriptions_upvr)
		end
	end
end
function module.Subscribe(arg1) -- Line 170
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: ResolveSubscriptions_upvr (readonly)
	]]
	assert(module_upvr_2.IsLoaded(arg1), "Cannot manage unloaded AssetSubscription")
	if not table.find(tbl_3_upvr.SubscribedAssetSubscriptions, arg1) then
		tbl_3_upvr.SubscribedAssetSubscriptions[#tbl_3_upvr.SubscribedAssetSubscriptions + 1] = arg1
		for _, v_3 in tbl_3_upvr.ActiveDimensions do
			if v_3.Subscribe and v_3.Subscribe(arg1) then
				arg1.DimensionsApplied_ById[v_3.Id] = true
				tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[arg1.AssetState] = true
				if tbl_3_upvr.SubscriptionResolutionIdle then
					tbl_3_upvr.SubscriptionResolutionIdle = false
					task.defer(ResolveSubscriptions_upvr)
				end
			end
		end
	end
end
function module.Unsubscribe(arg1) -- Line 186
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: ResolveSubscriptions_upvr (readonly)
	]]
	local table_find_result1 = table.find(tbl_3_upvr.SubscribedAssetSubscriptions, arg1)
	if table_find_result1 then
		table.remove(tbl_3_upvr.SubscribedAssetSubscriptions, table_find_result1)
		for _, v_4 in tbl_3_upvr.ActiveDimensions do
			if v_4.Unsubscribe then
				v_4.Unsubscribe(arg1)
			end
			if arg1.DimensionsApplied_ById[v_4.Id] then
				arg1.DimensionsApplied_ById[v_4.Id] = nil
				tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[arg1.AssetState] = true
				if tbl_3_upvr.SubscriptionResolutionIdle then
					tbl_3_upvr.SubscriptionResolutionIdle = false
					task.defer(ResolveSubscriptions_upvr)
				end
			end
		end
	end
end
local ManagedDimension_ById_upvr = module_upvr.ManagedDimension_ById
local function ManageDimensions_upvr(arg1) -- Line 205, Named "ManageDimensions"
	--[[ Upvalues[5]:
		[1]: ManagedDimension_ById_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: ResolveSubscriptions_upvr (readonly)
	]]
	debug.profilebegin("DM_ManageDimensions")
	local tbl_2 = {}
	local tbl_5 = {}
	for i_6, v_5 in arg1 do
		if v_5 then
			tbl_2[#tbl_2 + 1] = ManagedDimension_ById_upvr[i_6]
		else
			tbl_5[#tbl_5 + 1] = ManagedDimension_ById_upvr[i_6]
		end
	end
	table.sort(tbl_2, module_upvr.SortManagedDimensions)
	table.sort(tbl_5, module_upvr.SortManagedDimensions)
	for _, v_6 in tbl_5 do
		local table_find_result1_4 = table.find(tbl_3_upvr.ActiveDimensions, v_6)
		if not table_find_result1_4 then
			error(module_upvr_2.FormatOutput("Dimension %s is not currently active", "DimensionManager", nil, v_6.Id))
		end
		table.remove(tbl_3_upvr.ActiveDimensions, table_find_result1_4)
		for i_8, v_7 in tbl_3_upvr.SubscribedAssetSubscriptions do
			if v_6.Unsubscribe then
				v_6.Unsubscribe(v_7)
			end
			if v_7.DimensionsApplied_ById[v_6.Id] then
				v_7.DimensionsApplied_ById[v_6.Id] = nil
				tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[v_7.AssetState] = true
				if tbl_3_upvr.SubscriptionResolutionIdle then
					tbl_3_upvr.SubscriptionResolutionIdle = false
					task.defer(ResolveSubscriptions_upvr)
				end
			end
		end
		v_6.Unequip()
		v_6.Mode = nil
	end
	for _, v_8 in tbl_2 do
		if table.find(tbl_3_upvr.ActiveDimensions, v_8) then
			i_8 = nil
			v_7 = v_8.Id
			error(module_upvr_2.FormatOutput("Dimension %s is already active", "DimensionManager", i_8, v_7))
		end
		tbl_3_upvr.ActiveDimensions[#tbl_3_upvr.ActiveDimensions + 1] = v_8
		v_8.Equip()
		for _, v_9 in tbl_3_upvr.SubscribedAssetSubscriptions do
			if v_8.Subscribe and v_8.Subscribe(v_9) then
				v_9.DimensionsApplied_ById[v_8.Id] = true
				tbl_3_upvr.SubscriptionResolutionPending_ByLevelAssetState[v_9.AssetState] = true
				if tbl_3_upvr.SubscriptionResolutionIdle then
					tbl_3_upvr.SubscriptionResolutionIdle = false
					task.defer(ResolveSubscriptions_upvr)
				end
			end
		end
	end
	table.sort(tbl_3_upvr.ActiveDimensions, module_upvr.SortManagedDimensions)
	for i_11, v_10 in tbl_3_upvr.ActiveMethods do
		table.clear(v_10)
		for _, v_11 in tbl_3_upvr.ActiveDimensions do
			if v_11[i_11] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				v_10[#v_10 + 1] = v_11[i_11]
			end
		end
	end
	debug.profileend()
end
module_upvr_3.Signals.AppliedDimensionStateChanged:Connect(ManageDimensions_upvr)
if module_upvr_3.Flags.Initialized then
	ManageDimensions_upvr(module_upvr_3.DimensionState.Applied_ById)
else
	module_upvr_3.Signals.SystemInitialized:Once(function() -- Line 277
		--[[ Upvalues[2]:
			[1]: ManageDimensions_upvr (readonly)
			[2]: module_upvr_3 (readonly)
		]]
		ManageDimensions_upvr(module_upvr_3.DimensionState.Applied_ById)
	end)
end
local function RunLevelMethods_upvr(arg1, arg2) -- Line 286, Named "RunLevelMethods"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	for _, v_12 in tbl_3_upvr.ActiveDimensions do
		local var73 = v_12[arg1]
		if var73 and bit32.btest(module_5_upvr.EnabledDimensionBits_ByLevelAssetId[arg2.AssetState.Asset.Id], module_5_upvr.DimensionBit_ById[v_12.Id]) then
			var73(arg2)
		end
	end
end
function module.LoadLevel(arg1) -- Line 308
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Load")
	RunLevelMethods_upvr("Load", arg1)
	debug.profileend()
end
function module.ActivateLevel(arg1) -- Line 316
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Activate")
	RunLevelMethods_upvr("Activate", arg1)
	debug.profileend()
end
function module.StartLevel(arg1) -- Line 324
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Start")
	RunLevelMethods_upvr("Start", arg1)
	debug.profileend()
end
function module.TriggerLevel(arg1) -- Line 332
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Trigger")
	RunLevelMethods_upvr("Trigger", arg1)
	debug.profileend()
end
function module.EndLevel(arg1) -- Line 340
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_End")
	RunLevelMethods_upvr("End", arg1)
	debug.profileend()
end
function module.DeactivateLevel(arg1) -- Line 348
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Deactivate")
	RunLevelMethods_upvr("Deactivate", arg1)
	debug.profileend()
end
function module.UnloadLevel(arg1) -- Line 356
	--[[ Upvalues[1]:
		[1]: RunLevelMethods_upvr (readonly)
	]]
	debug.profilebegin("DM_Unload")
	RunLevelMethods_upvr("Load", arg1)
	debug.profileend()
end
function module.CharacterAdded(arg1) -- Line 368
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	debug.profilebegin("DM_CharacterAdded")
	module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.CharacterAdded, arg1)
	debug.profileend()
end
function module.CharacterRemoving(arg1) -- Line 377
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	debug.profilebegin("DM_CharacterRemoving")
	module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.CharacterRemoving, arg1)
	debug.profileend()
end
function module.PreSimulation(arg1, arg2) -- Line 390
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	debug.profilebegin("CFS_DimensionManager")
	module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.PreSimulation, arg1, arg2)
	debug.profileend()
end
function module.PostSimulation(arg1, arg2) -- Line 400
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	debug.profilebegin("CFH_DimensionManager")
	module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.PostSimulation, arg1, arg2)
	debug.profileend()
end
local module_2_upvr = require(LevelLoader:WaitForChild("LevelCommon"))
local module_6_upvr = require(Modules:WaitForChild("UserInterface"):WaitForChild("AlternativeDimensionUI"))
function module.RenderStepped(arg1, arg2) -- Line 410
	--[[ Upvalues[7]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_6_upvr (readonly)
		[7]: module_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_DimensionManager")
	module_3_upvr.RunFunctionsBlocking(tbl_3_upvr.ActiveMethods.RenderStepped, arg1, arg2)
	local var76 = module_2_upvr.Levels_ByLevelData[module_upvr_3.LocalCurrentLevel]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 48. Error Block 14 start (CF ANALYSIS FAILED)
	module_4_upvr.CharacterDisableStateSetDisabled(tbl_3_upvr.CharacterDisableState, false)
	debug.profileend()
	-- KONSTANTERROR: [65] 48. Error Block 14 end (CF ANALYSIS FAILED)
end
return module