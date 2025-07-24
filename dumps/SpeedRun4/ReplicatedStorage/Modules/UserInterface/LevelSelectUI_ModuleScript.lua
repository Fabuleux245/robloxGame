-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:14
-- Luau version 6, Types version 3
-- Time taken: 0.032402 seconds

local tbl_8_upvw = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_11_upvr = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_5_upvr = require(Modules:WaitForChild("UISelection"))
local module_10_upvr = require(Modules:WaitForChild("UIShared"))
local module_9_upvr = require(Modules:WaitForChild("Utility"))
local module_2_upvr = require(Modules:WaitForChild("Worlds"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_3 = require(UserInterface:WaitForChild("SidebarUI"))
local tbl_6_upvr = {
	LevelTilesDirty = false;
	WorldData = module_2_upvr.Data_ById[module_8_upvr.DefaultWorldId];
	WorldDataDirty = false;
	WorldDataProvided = false;
}
local tbl_13_upvr = {}
local tbl_3_upvr = {}
local tbl_12_upvr = {
	HeaderSizeEm = 1.125;
	TileIconEdgePaddingXEm = 0.25;
	TileIconPaddingXIconEm = 0.125;
	TileCollectibleIconSizeFactor = 0.825;
	TileCompletionIconSizeFactor = 0.75;
	TileSizeYEm = 2.4;
	TileTextEdgePaddingXEm = 1;
	TileTextSizeEm = 1.6;
	PaddingEm = 0.125;
	PlayerIconSizeFactor = 1.2;
	WrapperSizeXEm = 36;
	ListTilesVisible = 4;
}
local any_TableMerge_result1_upvr = module_9_upvr.TableMerge(module.CollectionType, {
	LevelSelect = 1000;
})
tbl_8_upvw.IsOpen = module_6_upvr.CreateExclusivityOpenHandler(module_6_upvr.LevelSelectUIGroup)
local any_CollectionUICreate_result1_upvr = module.CollectionUICreate(any_TableMerge_result1_upvr, module_9_upvr.HierarchyCreate({{any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.LevelSelect, any_TableMerge_result1_upvr._UIMain}}), tbl_8_upvw.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 89
	--[[ Upvalues[5]:
		[1]: module_10_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: any_CollectionUICreate_result1_upvr (readonly)
		[5]: any_TableMerge_result1_upvr (readonly)
	]]
	module_10_upvr.UIExclusivityGroup.Deactivate(module_6_upvr.LevelSelectUIGroup)
	tbl_6_upvr.WorldDataProvided = false
	local var26 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_upvr.LevelSelect]
	if var26 then
		var26.Expired = true
	end
end
local any_MemberCreate_result1_upvr_2 = module_6_upvr.MemberCreate(module_6_upvr.WorldUIGroup)
local RequestClose_2_upvr = any_CollectionUICreate_result1_upvr.RequestClose
function any_CollectionUICreate_result1_upvr.RequestClose(...) -- Line 103
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: any_MemberCreate_result1_upvr_2 (readonly)
		[4]: RequestClose_2_upvr (readonly)
	]]
	if tbl_6_upvr.WorldDataProvided then
		module_10_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr_2, true)
	end
	RequestClose_2_upvr(...)
end
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local var32_upvw
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 117
	--[[ Upvalues[3]:
		[1]: RenderStepped_2_upvr (readonly)
		[2]: var32_upvw (read and write)
		[3]: tbl_8_upvw (read and write)
	]]
	RenderStepped_2_upvr(...)
	var32_upvw.Selected = tbl_8_upvw.IsOpen()
end
RequestClose_2_upvr = "LevelSelectUI"
any_CollectionUICreate_result1_upvr.Name = RequestClose_2_upvr
RequestClose_2_upvr = module_7_upvr.DisplayOrder_LevelSelectUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RequestClose_2_upvr
local any_MemberCreate_result1_upvr = module_6_upvr.MemberCreate(module_6_upvr.LevelSelectUIGroup)
function RequestClose_2_upvr(arg1) -- Line 128, Named "OpenLevelSelect"
	--[[ Upvalues[6]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_10_upvr (readonly)
		[4]: any_MemberCreate_result1_upvr (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
		[6]: any_TableMerge_result1_upvr (readonly)
	]]
	if arg1 then
		tbl_6_upvr.WorldDataProvided = true
	end
	local var34 = arg1
	if not var34 then
		var34 = module_11_upvr.WorldGetEquipped()
	end
	if tbl_6_upvr.WorldData ~= var34 then
		tbl_6_upvr.WorldDataDirty = true
	end
	tbl_6_upvr.WorldData = var34
	module_10_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
	any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.LevelSelect)
end
tbl_8_upvw.OpenLevelSelect = RequestClose_2_upvr
RequestClose_2_upvr = ReplicatedStorage:WaitForChild("Bindables")
RenderStepped_2_upvr = RequestClose_2_upvr:WaitForChild("OpenShops")
local module_upvr = require(Modules:WaitForChild("UILegacySupport"))
RenderStepped_2_upvr.Event:Connect(function(arg1) -- Line 152
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg1 ~= nil then
		local var37 = any_CollectionUICreate_result1_upvr
		if module_upvr.LegacyBindableObjects[arg1] == nil then
			var37 = false
		else
			var37 = true
		end
		var37.RequestClose(var37)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr._UIMain].Open = function() -- Line 159
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.CloseShops()
end
var32_upvw = module_3.ButtonProfileRegister({
	ButtonTheme = require(Modules:WaitForChild("UIButton")).Button.Themes.Floating;
	Icon = module_7_upvr.GetImageFromMap(module_7_upvr.ImageMapType.Arrow_ByDirection, module_7_upvr.Direction.Left, module_7_upvr.ImageMapStyle.OutlineHeavy);
	Order = module_3.SidebarButtonOrder.LevelSelect;
	Style = module_3.SidebarButtonStyle.IconOnly;
	PressFunction = function() -- Line 170, Named "ToggleInterface"
		--[[ Upvalues[3]:
			[1]: tbl_8_upvw (read and write)
			[2]: module_6_upvr (readonly)
			[3]: any_CollectionUICreate_result1_upvr (readonly)
		]]
		if not tbl_8_upvw.IsOpen() then
			module_6_upvr.ClosePopups()
			tbl_8_upvw.OpenLevelSelect()
		else
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end;
}, module_3.SidebarRegion.Right)
any_CollectionUICreate_result1_upvr.State.ClosingSelection = var32_upvw.Button.Button
function tbl_3_upvr.MarkDirty(arg1) -- Line 226
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	arg1.Dirty = true
	tbl_6_upvr.LevelTilesDirty = true
end
function tbl_3_upvr.SetLevel(arg1, arg2) -- Line 234
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg1.LevelData ~= arg2 then
		arg1.LevelData = arg2
		arg1.LevelText = module_2_upvr.LevelGetFormattedName(arg2, module_2_upvr.FormattedNameType.Title, true)
		arg1.Label.Text = arg1.LevelText
		tbl_3_upvr.UpdateCollectiblesData(arg1)
		tbl_3_upvr.UpdateCompletionStatus(arg1)
	end
end
local module_14_upvr = require(Modules:WaitForChild("ItemActionHandler"))
function tbl_3_upvr.Create(arg1, arg2) -- Line 256
	--[[ Upvalues[10]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_11_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: tbl_6_upvr (readonly)
		[7]: module_14_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: module_10_upvr (readonly)
		[10]: tbl_3_upvr (readonly)
	]]
	any_CollectionUICreate_result1_upvr.State.ForceCloseDeselect = false
	local module_12_upvr = {
		LevelData = nil;
		LevelText = "";
		Dirty = true;
		Button = module_9_upvr.I("TextButton", {
			BackgroundTransparency = module_7_upvr.ButtonTransparency2;
			BorderSizePixel = 0;
			Text = "";
			Parent = arg1.ScrollingFrame;
		});
	}
	module_12_upvr.Button.Activated:Connect(function() -- Line 277
		--[[ Upvalues[8]:
			[1]: module_11_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: module_2_upvr (copied, readonly)
			[4]: module_12_upvr (readonly)
			[5]: tbl_6_upvr (copied, readonly)
			[6]: module_14_upvr (copied, readonly)
			[7]: module_8_upvr (copied, readonly)
			[8]: any_CollectionUICreate_result1_upvr (copied, readonly)
		]]
		if module_11_upvr.LocalPlayerStateCurrentLevelSet(arg2, true) then
			local var45 = module_2_upvr.Data_ByLevel[module_12_upvr.LevelData]
			if var45.IsTechnical and not tbl_6_upvr.WorldData.IsTechnical and var45 ~= tbl_6_upvr.WorldData and module_11_upvr.WorldGetEquipped() ~= tbl_6_upvr.WorldData then
				module_14_upvr.ItemActionPerform(module_8_upvr.ItemAction.Equip, module_8_upvr.ItemType.World, tbl_6_upvr.WorldData)
			end
		end
		any_CollectionUICreate_result1_upvr.State.ForceCloseDeselect = true
		any_CollectionUICreate_result1_upvr.State.RequestClose = true
	end)
	module_12_upvr.Corner = module_9_upvr.I("UICorner", {
		Parent = module_12_upvr.Button;
	})
	module_12_upvr.Label = module_9_upvr.I("TextLabel", module_10_upvr.Properties.Text_Scaled, {
		FontFace = module_7_upvr.FontFaceNormal;
		TextColor3 = module_7_upvr.TextColor1;
		TextXAlignment = Enum.TextXAlignment.Left;
		ZIndex = 20;
		Parent = module_12_upvr.Button;
	})
	module_12_upvr.LabelBounds = module_10_upvr.CachedTextBounds_FromLabel(module_12_upvr.Label)
	module_12_upvr.LabelBounds.Flag = arg1.TextBoundsFlag
	tbl_3_upvr.SetLevel(module_12_upvr, arg2)
	return module_12_upvr
end
local function Destroy(arg1) -- Line 327
	arg1.Button:Destroy()
end
tbl_3_upvr.Destroy = Destroy
local module_4_upvr = require(Modules:WaitForChild("BUEGameClient"))
function tbl_3_upvr.UpdateCollectiblesData(arg1) -- Line 334
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: module_10_upvr (readonly)
		[5]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_GetOwnedCollectibleCountForLevel_result1 = module_4_upvr.GetOwnedCollectibleCountForLevel(arg1.LevelData)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [92] 60. Error Block 13 start (CF ANALYSIS FAILED)
	local CollectiblesData_2 = arg1.CollectiblesData
	local any_GetEventIcon_result1 = module_4_upvr.GetEventIcon()
	if any_GetEventIcon_result1 then
		CollectiblesData_2.Icon.Image = any_GetEventIcon_result1
	end
	CollectiblesData_2.Label.Text = string.format("%i/%i", any_GetOwnedCollectibleCountForLevel_result1, arg1.LevelData.Collectibles)
	do
		return
	end
	-- KONSTANTERROR: [92] 60. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [117] 76. Error Block 11 start (CF ANALYSIS FAILED)
	if arg1.CollectiblesData then
		arg1.CollectiblesData.Label:Destroy()
		arg1.CollectiblesData.Icon:Destroy()
		arg1.CollectiblesData = nil
	end
	-- KONSTANTERROR: [117] 76. Error Block 11 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.UpdateCompletionStatus(arg1) -- Line 393
	--[[ Upvalues[6]:
		[1]: module_8_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: module_9_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: module_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	local any_SaveDataGetLevelStats_result1 = module_8_upvr.SaveDataGetLevelStats(module_11_upvr.LocalSaveData, arg1.LevelData.Id)
	local var53 = any_SaveDataGetLevelStats_result1
	if var53 then
		var53 = any_SaveDataGetLevelStats_result1.T
	end
	if var53 == nil then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 8 start (CF ANALYSIS FAILED)
	tbl_3_upvr.MarkDirty(arg1)
	arg1.CompletionIcon = module_9_upvr.I("ImageLabel", module_10_upvr.Properties.Image, {
		Image = module_7_upvr.Checkbox_Filled;
		ImageColor3 = module_7_upvr.CheckmarkColor2;
		ZIndex = 10;
		Parent = arg1.Button;
	})
	do
		return
	end
	-- KONSTANTERROR: [23] 17. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [59] 41. Error Block 12 start (CF ANALYSIS FAILED)
	if arg1.CompletionIcon then
		arg1.CompletionIcon:Destroy()
		arg1.CompletionIcon = nil
	end
	-- KONSTANTERROR: [59] 41. Error Block 12 end (CF ANALYSIS FAILED)
end
local function GetLevelTile_upvr(arg1) -- Line 423, Named "GetLevelTile"
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
		[4]: any_TableMerge_result1_upvr (readonly)
	]]
	local var65
	if tbl_6_upvr.WorldData == module_2_upvr.Data_ByLevel[arg1] then
		local var66 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_upvr.LevelSelect]
		if var66 then
			for _, v in var66.LevelTiles do
				if v.LevelData == arg1 then
					var65 = v
					return var65
				end
			end
		end
	end
	return var65
end
module_11_upvr.Signals.EventCollectibleClaimed:Connect(function(arg1, arg2, arg3) -- Line 448
	--[[ Upvalues[2]:
		[1]: GetLevelTile_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	if not arg3 then
	else
		local GetLevelTile_result1_2 = GetLevelTile_upvr(arg3)
		if GetLevelTile_result1_2 then
			tbl_3_upvr.UpdateCollectiblesData(GetLevelTile_result1_2)
		end
	end
end)
module_11_upvr.Signals.LevelStatsChanged:Connect(function(arg1) -- Line 461
	--[[ Upvalues[2]:
		[1]: GetLevelTile_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local GetLevelTile_result1 = GetLevelTile_upvr(arg1)
	if GetLevelTile_result1 then
		tbl_3_upvr.UpdateCompletionStatus(GetLevelTile_result1)
	end
end)
module_11_upvr.Signals.WorldProgressConsumed:Connect(function(arg1) -- Line 470
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: any_TableMerge_result1_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
	]]
	if tbl_6_upvr.WorldData == arg1 then
		local var77 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_upvr.LevelSelect]
		if var77 then
			for _, v_2 in var77.LevelTiles do
				tbl_3_upvr.UpdateCompletionStatus(v_2)
			end
		end
	end
end)
local function ActiveLevelTileCreateGradientFrame_upvr(arg1) -- Line 500, Named "ActiveLevelTileCreateGradientFrame"
	--[[ Upvalues[2]:
		[1]: module_9_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	local any_I_result1 = module_9_upvr.I("Frame", {
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		BackgroundColor3 = module_7_upvr.TextSelectColor1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 1;
		Parent = arg1.Button;
	})
	module_9_upvr.I("UIGradient", {
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.3333333333333333, 1), NumberSequenceKeypoint.new(1, 1)});
		Parent = any_I_result1;
	})
	return any_I_result1
end
local function _(arg1) -- Line 529, Named "ActiveLevelTileDestroy"
	arg1.GradientFrame:Destroy()
	arg1.PlayerFrame:Destroy()
end
tbl_13_upvr.Formats = {
	Header = "Choose any level that you've discovered to join!";
	PlayerIcon = "rbxthumb://type=AvatarHeadShot&id=%i&w=100&h=100&filters=circular";
}
function tbl_13_upvr.Initialize(arg1) -- Line 546
	--[[ Upvalues[6]:
		[1]: tbl_13_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: module_9_upvr (readonly)
	]]
	local module_13 = {
		Expired = false;
		LastCanvasPosition = 0;
		ListPosX = 0;
		ListPosY = 0;
		ListSizeY = 0;
		TileSizeY = 0;
		LevelTiles = {};
		ActiveLevelTile = nil;
		HeaderText = tbl_13_upvr.Formats.Header;
		TextBoundsFlag = module_10_upvr.TextBoundsFlagCreate();
	}
	tbl_6_upvr.WorldDataDirty = true
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2 = module_10_upvr.TextBoundsLabelCreate(arg1.Wrapper, module_13.HeaderText, module_13.TextBoundsFlag)
	module_13.HeaderLabel = any_TextBoundsLabelCreate_result1
	module_13.HeaderBounds = any_TextBoundsLabelCreate_result2
	module_13.HeaderLabel.TextScaled = true
	module_13.ScrollingFrame = module_5_upvr.CreateAndRegisterScrollingFrame(module_10_upvr.Properties.ScrollingFrame_Vertical, module_7_upvr.ScrollBarStyles.RoundThreeQuarterFull, {
		Parent = arg1.Wrapper;
	})
	return module_9_upvr.TableMerge(module_13, arg1)
end
function tbl_13_upvr.Destroy(arg1) -- Line 598
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	module_5_upvr.UnregisterScrollingFrame(arg1.ScrollingFrame)
	for _, v_3 in arg1.LevelTiles do
		tbl_3_upvr.Destroy(v_3)
	end
	table.clear(arg1.LevelTiles)
	if arg1.ActiveLevelTile then
		local ActiveLevelTile_6 = arg1.ActiveLevelTile
		ActiveLevelTile_6.GradientFrame:Destroy()
		ActiveLevelTile_6.PlayerFrame:Destroy()
		arg1.ActiveLevelTile = nil
	end
end
function tbl_13_upvr.Update(arg1, arg2, arg3) -- Line 615
	--[[ Upvalues[12]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: module_11_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_8_upvr (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: module_7_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
		[9]: ActiveLevelTileCreateGradientFrame_upvr (readonly)
		[10]: module_9_upvr (readonly)
		[11]: tbl_13_upvr (readonly)
		[12]: module_10_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Properties_3 = any_CollectionUICreate_result1_upvr.Properties
	local var230
	if not tbl_6_upvr.WorldDataDirty then
	end
	if arg1.Expired then
		var230 = false
		local var231 = false
	end
	if var230 then
		tbl_6_upvr.LevelTilesDirty = true
		for _, v_4 in arg1.LevelTiles do
			v_4.Dirty = true
		end
		tbl_6_upvr.WorldDataDirty = false
	end
	if var231 then
		local LocalCurrentLevel_2 = module_11_upvr.LocalCurrentLevel
		local tbl_7 = {module_2_upvr.DefaultLevel}
		if module_2_upvr.WorldGetHighestJoinLevelIndex(tbl_6_upvr.WorldData, module_11_upvr.LocalSaveData) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if module_2_upvr.WorldGetHighestJoinLevelIndex(tbl_6_upvr.WorldData, module_11_upvr.LocalSaveData) < #tbl_6_upvr.WorldData.Levels and module_2_upvr.LevelCanJoin(tbl_6_upvr.WorldData.Levels[module_2_upvr.WorldGetHighestJoinLevelIndex(tbl_6_upvr.WorldData, module_11_upvr.LocalSaveData) + 1], nil, module_11_upvr.LocalSaveData) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: GOTO [106] #78
			end
		elseif module_2_upvr.LevelCanUse(tbl_6_upvr.WorldData.Levels[1], module_11_upvr.LocalSaveData) then
		else
		end
		assert(0)
		local any_GetLevelIndex_result1_2 = module_2_upvr.GetLevelIndex(tbl_6_upvr.WorldData, LocalCurrentLevel_2)
		if any_GetLevelIndex_result1_2 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if 0 < any_GetLevelIndex_result1_2 then
			end
		end
		for i_5 = 1, any_GetLevelIndex_result1_2 do
			tbl_7[#tbl_7 + 1] = tbl_6_upvr.WorldData.Levels[i_5]
			local var235
		end
		if module_2_upvr.WorldCanSendToWinners(tbl_6_upvr.WorldData) and module_8_upvr.SaveDataGetWorldStats(module_11_upvr.LocalSaveData, tbl_6_upvr.WorldData.Id) ~= nil then
			var235[#var235 + 1] = module_2_upvr.WinnersLevel
		end
		if #arg1.LevelTiles < #var235 then
			for i_6 = #arg1.LevelTiles + 1, #var235 do
				local var236 = var235[i_6]
				local any_Create_result1_2 = tbl_3_upvr.Create(arg1, var236)
				if i_6 % 2 == 1 then
					var236 = module_7_upvr.AccentColor1
				else
					var236 = module_7_upvr.AccentColor2
				end
				any_Create_result1_2.Button.BackgroundColor3 = var236
				arg1.LevelTiles[i_6] = any_Create_result1_2
			end
		else
			i_6 = #arg1.LevelTiles
			for i_7 = i_6, #var235 + 1, -1 do
				tbl_3_upvr.Destroy(arg1.LevelTiles[i_7])
				arg1.LevelTiles[i_7] = nil
			end
		end
		if #arg1.LevelTiles > tbl_12_upvr.ListTilesVisible then
			-- KONSTANTWARNING: GOTO [232] #173
		end
		if #arg1.LevelTiles > tbl_12_upvr.ListTilesVisible then
		else
		end
		if true ~= true then
			tbl_6_upvr.LevelTilesDirty = true
			for _, v_5 in arg1.LevelTiles do
				v_5.Dirty = true
			end
		end
		for i_9, v_6 in var235 do
			local var238 = arg1.LevelTiles[i_9]
			tbl_3_upvr.SetLevel(var238, v_6)
			if v_6 == LocalCurrentLevel_2 then
				local var239 = var238
			end
		end
		if var239 then
			local ActiveLevelTile = arg1.ActiveLevelTile
			if ActiveLevelTile then
				if ActiveLevelTile.LevelTile ~= var239 then
					ActiveLevelTile.LevelTile = var239
					if ActiveLevelTile.GradientFrame.Parent then
						ActiveLevelTile.GradientFrame.Parent = var239.Button
					else
						ActiveLevelTile.GradientFrame = ActiveLevelTileCreateGradientFrame_upvr(var239)
					end
					-- KONSTANTWARNING: GOTO [440] #312
				end
			else
				local tbl = {
					LevelTile = var239;
				}
				i_9 = var239
				tbl.GradientFrame = ActiveLevelTileCreateGradientFrame_upvr(i_9)
				i_9 = module_9_upvr
				i_9 = "Frame"
				v_6 = {}
				v_6.BackgroundTransparency = 1
				v_6.BorderSizePixel = 0
				v_6.ClipsDescendants = true
				v_6.Parent = any_CollectionUICreate_result1_upvr.Properties.ScreenGui
				tbl.PlayerFrame = i_9.I(i_9, v_6)
				i_9 = module_9_upvr
				i_9 = "ImageLabel"
				v_6 = {}
				v_6.AnchorPoint = Vector2.new(1, 0.5)
				v_6.BackgroundColor3 = module_7_upvr.TextSelectColor1
				v_6.BorderSizePixel = 0
				v_6.Image = string.format(tbl_13_upvr.Formats.PlayerIcon, module_11_upvr.LocalPlayerState.UserId)
				v_6.ScaleType = Enum.ScaleType.Fit
				v_6.Parent = tbl.PlayerFrame
				tbl.PlayerIcon = i_9.I(i_9, v_6)
				i_9 = module_9_upvr
				i_9 = "UICorner"
				v_6 = {}
				v_6.CornerRadius = UDim.new(1, 0)
				v_6.Parent = tbl.PlayerIcon
				i_9.I(i_9, v_6)
				i_9 = module_9_upvr
				i_9 = "UIStroke"
				v_6 = module_10_upvr.Properties.StrokeBorder
				tbl.PlayerStroke = i_9.I(i_9, v_6, {
					Color = module_7_upvr.TextColor1;
					Parent = tbl.PlayerIcon;
				})
				arg1.ActiveLevelTile = tbl
			end
		elseif arg1.ActiveLevelTile then
			local ActiveLevelTile_4 = arg1.ActiveLevelTile
			ActiveLevelTile_4.GradientFrame:Destroy()
			ActiveLevelTile_4.PlayerFrame:Destroy()
			arg1.ActiveLevelTile = nil
		end
	end
	local any_TextBoundsFlagCheck_result1 = module_10_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag)
	if not any_TextBoundsFlagCheck_result1 then
		any_TextBoundsFlagCheck_result1 = var230
		if not any_TextBoundsFlagCheck_result1 then
			any_TextBoundsFlagCheck_result1 = arg1.DrawDirty
			local var245
		end
	end
	if any_TextBoundsFlagCheck_result1 or var231 or tbl_6_upvr.LevelTilesDirty then
		local EdgePadX_2 = Properties_3.EdgePadX
		local PadY_2 = Properties_3.PadY
		local var248 = module_10_upvr.EmSize * tbl_12_upvr.WrapperSizeXEm // 1
		local len = #arg1.LevelTiles
		local var250 = module_10_upvr.EmSize * tbl_12_upvr.PaddingEm // 1
		local var251 = module_10_upvr.EmSize * tbl_12_upvr.TileSizeYEm // 1
		local var252 = var251 + var250
		local var253 = 2 * PadY_2 + module_10_upvr.SteppedSize.CloseButtonY
		local var254 = var248 - 2 * PadY_2
		var245 = tbl_12_upvr
		local var255 = var252 * (var245.ListTilesVisible - 1) + var251
		var245 = var250 * (len - 1)
		local var256 = var251 * len + var245
		var245 = module_10_upvr.SteppedSize
		local ScrollBar = var245.ScrollBar
		if var256 <= var255 then
			var245 = var254
		else
			var245 = var254 - ScrollBar - var250
		end
		local var258 = module_10_upvr.EmSize * tbl_12_upvr.TileTextEdgePaddingXEm // 1
		local var259 = var251 * tbl_12_upvr.TileCollectibleIconSizeFactor // 1
		local var260 = var251 * tbl_12_upvr.TileCompletionIconSizeFactor
		local var261 = module_10_upvr.EmSize * tbl_12_upvr.TileIconPaddingXIconEm // 1
		local var262 = var245 - module_10_upvr.EmSize * tbl_12_upvr.TileIconEdgePaddingXEm // 1 - var260
		local var263 = var262 - var261 - var259
		local var264 = module_10_upvr.EmSize * tbl_12_upvr.TileTextSizeEm // 1
		arg1.ListPosX = PadY_2
		arg1.ListPosY = var253
		arg1.ListSizeY = var255
		arg1.TileSizeY = var251
		module_10_upvr.CachedTextBoundsUpdate(arg1.HeaderBounds, arg1.HeaderText, module_10_upvr.EmSize * tbl_12_upvr.HeaderSizeEm // 1)
		local var265 = var248 - Properties_3.CloseInsetX - EdgePadX_2 - Properties_3.PadX
		local minimum_4 = math.min(arg1.HeaderBounds.X, var265)
		arg1.HeaderLabel.Position = UDim2.fromOffset(EdgePadX_2 + (var265 * 0.5 - minimum_4 * 0.5) // 1, PadY_2)
		arg1.HeaderLabel.Size = UDim2.fromOffset(minimum_4, module_10_upvr.SteppedSize.CloseButtonY)
		arg1.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, var256)
		arg1.ScrollingFrame.Position = UDim2.fromOffset(PadY_2, var253)
		arg1.ScrollingFrame.ScrollBarThickness = ScrollBar
		arg1.ScrollingFrame.Size = UDim2.fromOffset(var254, var255)
		local var267
		if var230 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var267 = arg1.ActiveLevelTile.LevelTile
				return var267
			end
			if not arg1.ActiveLevelTile or not INLINED_2() then
				var267 = arg1.LevelTiles[1]
			end
			local var268 = var267
			var267 = any_CollectionUICreate_result1_upvr.State
			local var269 = var268
			if var269 then
				var269 = var268.Button
			end
			var267.PendingSelection = var269
		end
		for i_10, v_7 in arg1.LevelTiles do
			local var270 = module_10_upvr.CachedTextBoundsUpdate(v_7.LabelBounds, v_7.Label.Text, var264) or false
			if v_7.CollectiblesData then
				var270 = module_10_upvr.CachedTextBoundsUpdate(v_7.CollectiblesData.LabelBounds, v_7.CollectiblesData.Label.Text, var264) or var270
			end
			local var271 = var252 * (i_10 - 1)
			if any_TextBoundsFlagCheck_result1 or var270 or v_7.Dirty then
				v_7.Corner.CornerRadius = module_10_upvr.CornerDims.Button.RadiusUDim
				v_7.Button.Position = UDim2.fromOffset(0, var271)
				v_7.Button.Size = UDim2.fromOffset(var245, var251)
				local minimum = math.min(v_7.LabelBounds.X, var262 - 2 * var258)
				local CollectiblesData = v_7.CollectiblesData
				if CollectiblesData then
					CollectiblesData.Icon.Position = UDim2.fromOffset(var263, (var251 * 0.5 - var260 * 0.5) // 1)
					CollectiblesData.Icon.Size = UDim2.fromOffset(var259, var259)
					local var274 = var263 - var261 - CollectiblesData.LabelBounds.X
					CollectiblesData.Label.Position = UDim2.fromOffset(var274, (var251 * 0.5 - var264 * 0.5) // 1)
					CollectiblesData.Label.Size = UDim2.fromOffset(CollectiblesData.LabelBounds.X, var264)
					minimum = math.min(minimum, var274 - var258 - var258)
				end
				if v_7.CompletionIcon then
					v_7.CompletionIcon.Position = UDim2.fromOffset(var262, (var251 * 0.5 - var260 * 0.5) // 1)
					v_7.CompletionIcon.Size = UDim2.fromOffset(var260, var260)
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				v_7.Label.Position = UDim2.fromOffset(var258, (var251 * 0.5 - var264 * 0.5) // 1)
				v_7.Label.Size = UDim2.fromOffset(minimum, var264)
				v_7.Dirty = false
			end
			if v_7 == var268 then
				arg1.ScrollingFrame.CanvasPosition = Vector2.new(0, var271 - (var255 * 0.5 - var251 * 0.5) // 1)
			end
		end
		arg1.TargetSize = UDim2.fromOffset(var248, var253 + var255 + PadY_2)
		tbl_6_upvr.LevelTilesDirty = false
	end
	local CanvasPosition = arg1.ScrollingFrame.CanvasPosition
	local Y = CanvasPosition.Y
	if arg1.LastCanvasPosition == Y then
		CanvasPosition = false
	else
		CanvasPosition = true
	end
	arg1.LastCanvasPosition = Y
	if var231 or CanvasPosition then
		tbl_13_upvr.DimensionsChanged(arg1)
	end
end
function tbl_13_upvr.DimensionsChanged(arg1) -- Line 1035
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: tbl_12_upvr (readonly)
	]]
	if arg1.ActiveLevelTile then
		local Properties_2 = any_CollectionUICreate_result1_upvr.Properties
		local ActiveLevelTile_3 = arg1.ActiveLevelTile
		local TileSizeY = arg1.TileSizeY
		local StrokeMedium = module_10_upvr.ScaledSize.StrokeMedium
		local var281 = TileSizeY * tbl_12_upvr.PlayerIconSizeFactor // 1
		local ceiled = math.ceil(StrokeMedium)
		local var283 = math.ceil((var281 - TileSizeY) * 0.5) + ceiled
		local var284 = var281 * 0.5
		local var285 = var281 + ceiled * 2
		ActiveLevelTile_3.PlayerFrame.Position = UDim2.fromOffset((Properties_2.PosX + arg1.ListPosX) - (var285 - (var284 - (var284 ^ 2 - (TileSizeY * 0.5) ^ 2) ^ 0.5) // 1), Properties_2.PosY + arg1.ListPosY - var283)
		ActiveLevelTile_3.PlayerFrame.Size = UDim2.fromOffset(var285, arg1.ListSizeY + var283 * 2)
		ActiveLevelTile_3.PlayerIcon.Position = UDim2.fromOffset(var285 - ceiled, ActiveLevelTile_3.LevelTile.Button.Position.Y.Offset - arg1.LastCanvasPosition + var283 + TileSizeY * 0.5 // 1)
		ActiveLevelTile_3.PlayerIcon.Size = UDim2.fromOffset(var281, var281)
		ActiveLevelTile_3.PlayerStroke.Thickness = StrokeMedium
	end
end
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr.LevelSelect] = tbl_13_upvr
local any_TableMerge_result1 = module_9_upvr.TableMerge(tbl_8_upvw, any_CollectionUICreate_result1_upvr)
tbl_8_upvw = any_TableMerge_result1
return any_TableMerge_result1