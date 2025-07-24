-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:24
-- Luau version 6, Types version 3
-- Time taken: 0.129066 seconds

local tbl_57_upvw = {}
local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_9_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_13_upvr = require(Modules:WaitForChild("ClientData"))
local module_5_upvr = require(Modules:WaitForChild("ItemActionHandler"))
local module_30_upvr = require(Modules:WaitForChild("ItemDataUtility"))
local module_32_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local module_23_upvr = require(Modules:WaitForChild("Pets"))
local module_21_upvr = require(Modules:WaitForChild("Products"))
local module_17_upvr = require(Modules:WaitForChild("Tweens"))
local module_10_upvr = require(Modules:WaitForChild("UIButton"))
local module_34_upvr = require(Modules:WaitForChild("UIEffects"))
local module_4_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_33_upvr = require(Modules:WaitForChild("UISelection"))
local module_22_upvr = require(Modules:WaitForChild("UIShared"))
local module_6_upvr = require(Modules:WaitForChild("Utility"))
local module_3_upvr = require(Modules:WaitForChild("Worlds"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_26_upvr = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_35 = require(UserInterface:WaitForChild("SidebarUI"))
local table_freeze_result1_upvr_3 = table.freeze({
	Button = 1;
	Text = 2;
})
local table_freeze_result1_upvr_2 = table.freeze({
	ShowAll = 1;
	OmitUnlockable = 2;
	Remove = 3;
	Obscure = 4;
})
local any_TableMerge_result1_7_upvr = module_6_upvr.TableMerge(module_26_upvr.CollectionType, {
	Inventory_Landing = 1000;
	InventoryPanel = 2000;
	InventoryPanel_Pet = 2010;
	InventoryPanel_Trail = 2020;
	InventoryPanel_Dance = 2030;
	InventoryTiled = 3000;
	InventoryTiled_Pet = 3010;
	InventoryTiled_Trail = 3020;
	InventoryTiled_Dance = 3030;
	Inventory_Level = 4000;
})
tbl_57_upvw.IsOpen = module_4_upvr.CreateExclusivityOpenHandler(module_4_upvr.InventoryUIGroup)
local any_CollectionUICreate_result1_upvr = module_26_upvr.CollectionUICreate(any_TableMerge_result1_7_upvr, module_6_upvr.HierarchyCreate({{any_TableMerge_result1_7_upvr._UIMain}, {any_TableMerge_result1_7_upvr.Inventory_Landing, any_TableMerge_result1_7_upvr._UIMain}, {any_TableMerge_result1_7_upvr.InventoryPanel}, {any_TableMerge_result1_7_upvr.InventoryPanel_Trail, any_TableMerge_result1_7_upvr.InventoryPanel}, {any_TableMerge_result1_7_upvr.InventoryPanel_Dance, any_TableMerge_result1_7_upvr.InventoryPanel}, {any_TableMerge_result1_7_upvr.InventoryPanel_Pet, any_TableMerge_result1_7_upvr.InventoryPanel}, {any_TableMerge_result1_7_upvr.InventoryTiled, any_TableMerge_result1_7_upvr.Inventory_Landing}, {any_TableMerge_result1_7_upvr.InventoryTiled_Trail, any_TableMerge_result1_7_upvr.InventoryTiled}, {any_TableMerge_result1_7_upvr.InventoryTiled_Dance, any_TableMerge_result1_7_upvr.InventoryTiled}, {any_TableMerge_result1_7_upvr.InventoryTiled_Pet, any_TableMerge_result1_7_upvr.InventoryTiled}, {any_TableMerge_result1_7_upvr.Inventory_Level, any_TableMerge_result1_7_upvr.Inventory_Landing}}), tbl_57_upvw.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 112
	--[[ Upvalues[2]:
		[1]: module_22_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	module_22_upvr.UIExclusivityGroup.Deactivate(module_4_upvr.InventoryUIGroup)
end
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local var52_upvw
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 119
	--[[ Upvalues[3]:
		[1]: RenderStepped_2_upvr (readonly)
		[2]: var52_upvw (read and write)
		[3]: tbl_57_upvw (read and write)
	]]
	RenderStepped_2_upvr(...)
	var52_upvw.Selected = tbl_57_upvw.IsOpen()
end
RenderStepped_2_upvr = "InventoryUI"
any_CollectionUICreate_result1_upvr.Name = RenderStepped_2_upvr
RenderStepped_2_upvr = module_9_upvr.DisplayOrder_InventoryUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RenderStepped_2_upvr
RenderStepped_2_upvr = ReplicatedStorage:WaitForChild("Bindables")
local module_20_upvr = require(Modules:WaitForChild("UILegacySupport"))
RenderStepped_2_upvr:WaitForChild("OpenShops").Event:Connect(function(arg1) -- Line 136
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_20_upvr (readonly)
	]]
	if arg1 ~= nil then
		local var55 = any_CollectionUICreate_result1_upvr
		if module_20_upvr.LegacyBindableObjects[arg1] == nil then
			var55 = false
		else
			var55 = true
		end
		var55.RequestClose(var55)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr._UIMain].Open = function() -- Line 143
	--[[ Upvalues[1]:
		[1]: module_20_upvr (readonly)
	]]
	module_20_upvr.CloseShops()
end
local any_MemberCreate_result1_upvr = module_4_upvr.MemberCreate(module_4_upvr.InventoryUIGroup)
var52_upvw = module_35.ButtonProfileRegister({
	ButtonTheme = module_10_upvr.Button.Themes.Floating;
	Icon = module_9_upvr.Inventory_Legacy;
	Order = module_35.SidebarButtonOrder.Inventory;
	Style = module_35.SidebarButtonStyle.IconText;
	Text = "Items";
	PressFunction = function() -- Line 154, Named "ToggleInterface"
		--[[ Upvalues[5]:
			[1]: tbl_57_upvw (read and write)
			[2]: module_4_upvr (readonly)
			[3]: module_22_upvr (readonly)
			[4]: any_MemberCreate_result1_upvr (readonly)
			[5]: any_CollectionUICreate_result1_upvr (readonly)
		]]
		if not tbl_57_upvw.IsOpen() then
			module_4_upvr.ClosePopups()
			module_22_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
		else
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end;
}, module_35.SidebarRegion.Left)
local var59 = var52_upvw
tbl_57_upvw.InventoryButton = var59
any_CollectionUICreate_result1_upvr.State.ClosingSelection = var59.Button.Button
local tbl_63_upvr = {
	CheckmarkScale = 0.375;
	DetailsDividerScaleY = 0.875;
	DetailsSizeXEm = 8.75;
	DetailsInventoryPadEm = 1;
	DetailsItemDisplayEm = 4.375;
	IconPadFactor = 0.25;
	ItemTileCornerRadiusEm = 0.5;
	ItemTileItemInsetEm = 0.25;
	LevelButtonScaleX = 1.25;
	TabButtonTextSizeEm = 1.25;
	TextSizeCounterEm = 2.75;
	TextSizeDetailsEm = 1;
	TextSizeDetailsLargeEm = 1.125;
	TextSizeHeaderEm = 1.75;
	TextSizeNameEm = 0.7;
	TextSizePriceEm = 0.825;
	TextSizeSubHeaderEm = 1.25;
	TilePadXEm = 0.25;
	TilesPerRow = 4;
	TileTextInsetEm = 0.25;
	WrapperSizeXEm = 34;
	WrapperSizeYEm = 20;
}
local tbl_73_upvr = {
	BuyRandom = "Buy random %s:";
	Count = "x%s";
	Energy = "+%sx";
	Equip = "Does not count again equip limit.";
	EquipCount = "%i / %i";
	Obscured = "%s ???";
	PointsPerSecond = "+%s / sec";
}
local tbl_27 = {}
local tbl_13_upvr = {}
local tbl_2_upvr = {}
local tbl_20_upvr = {}
local tbl_37_upvr = {}
local tbl_24_upvr = {}
local tbl_79_upvr = {}
local tbl_7_upvr = {}
local tbl_36_upvr = {}
local tbl_17_upvr = {}
local tbl_51_upvr = {}
local tbl_44_upvr = {}
local tbl_54_upvr = {}
local tbl_61_upvr = {}
local tbl_62_upvr = {}
local tbl_28_upvr = {}
local tbl_60_upvr = {}
local tbl_11_upvr = {}
local tbl_75_upvr = {
	[#tbl_75_upvr + 1] = {
		CollectionType = any_TableMerge_result1_7_upvr.InventoryTiled_Trail;
		ItemType = module_8_upvr.ItemType.Trail;
		PanelType = any_TableMerge_result1_7_upvr.InventoryPanel_Trail;
		RequiresLootboxApproval = true;
		IsEnabled = module_13_upvr.OnboardingComplete;
	};
}
if module_7_upvr.DancesEnabled then
	tbl_75_upvr[#tbl_75_upvr + 1] = {
		CollectionType = any_TableMerge_result1_7_upvr.InventoryTiled_Dance;
		ItemType = module_8_upvr.ItemType.Dance;
		PanelType = any_TableMerge_result1_7_upvr.InventoryPanel_Dance;
		RequiresLootboxApproval = true;
		IsEnabled = module_13_upvr.OnboardingComplete;
	}
end
tbl_75_upvr[#tbl_75_upvr + 1] = {
	CollectionType = any_TableMerge_result1_7_upvr.InventoryTiled_Pet;
	ItemType = module_8_upvr.ItemType.Pet;
	PanelType = any_TableMerge_result1_7_upvr.InventoryPanel_Pet;
	IsEnabled = function() -- Line 525, Named "IsEnabled"
		return true
	end;
}
tbl_75_upvr[#tbl_75_upvr + 1] = {
	CollectionType = any_TableMerge_result1_7_upvr.Inventory_Level;
	ItemType = module_8_upvr.ItemType.Level;
	IsEnabled = module_13_upvr.OnboardingComplete;
}
local tbl_21_upvr = {}
for _, v in tbl_75_upvr do
	tbl_21_upvr[v.CollectionType] = v
	if v.PanelType then
		({})[v.PanelType] = v
	end
end
table.sort(tbl_75_upvr, function(arg1, arg2) -- Line 549
	local var87
	if arg1.CollectionType >= arg2.CollectionType then
		var87 = false
	else
		var87 = true
	end
	return var87
end)
any_CollectionUICreate_result1_upvr.RequestCollection(tbl_75_upvr[1].CollectionType)
local function ItemDimsCalculate_upvr(arg1, arg2) -- Line 559, Named "ItemDimsCalculate"
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: tbl_63_upvr (readonly)
	]]
	local PadY = any_CollectionUICreate_result1_upvr.Properties.PadY
	local var89 = module_22_upvr.EmSize * tbl_63_upvr.TextSizePriceEm // 1
	local StrokeVeryThin = module_22_upvr.ScaledSize.StrokeVeryThin
	local ceiled_2 = math.ceil(StrokeVeryThin)
	local var92 = module_22_upvr.EmSize * tbl_63_upvr.TilePadXEm // 1
	local any_ComputeCornerDims_result1 = module_22_upvr.ComputeCornerDims(tbl_63_upvr.ItemTileCornerRadiusEm)
	local var94
	local var95
	if arg2 then
		var94 = module_22_upvr.EmSize * arg2 // 1
		var95 = var94 + ceiled_2 * 2
	else
		var95 = module_22_upvr.ComputeEvenlySpacedSize(arg1, tbl_63_upvr.TilesPerRow, var92) // 1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var94 = var95 - ceiled_2 * 2
	end
	local var96 = module_22_upvr.EmSize * tbl_63_upvr.TileTextInsetEm // 1
	local var97 = module_22_upvr.EmSize * tbl_63_upvr.ItemTileItemInsetEm // 1
	local var98 = var94 - 2 * var97
	local var99 = PadY * 0.5 // 1
	local var100 = var89 + var99
	local module_11 = {
		CurrencyInset = var100;
		CurrencySize = var89;
		CurrencySizeUDim2 = UDim2.fromOffset(var89, var89);
		ItemInset = var97;
		ItemSize = var98;
		ItemSizeUDim2 = UDim2.fromOffset(var98, var98);
		ItemCornerRadius = UDim.new(0, math.max(any_ComputeCornerDims_result1.Radius - var97, 0));
		PriceSizeX = var94 - var100 - 2 * var99;
	}
	module_11.SizeX = arg1
	module_11.TextSizeNameY = module_22_upvr.EmSize * tbl_63_upvr.TextSizeNameEm // 1
	module_11.TextSizePriceY = var89
	module_11.TileCornerRadius = any_ComputeCornerDims_result1.RadiusUDim
	module_11.TileInset = ceiled_2
	module_11.TilePaddedSizeInset = var95 + var92
	module_11.TilePadX = var92
	module_11.TileSize = var94
	module_11.TileSizeInset = var95
	module_11.TileSizeUDim2 = UDim2.fromOffset(var94, var94)
	module_11.TileStrokeThickness = StrokeVeryThin
	module_11.TileTextInset = var96
	module_11.TileTextSizeX = var94 - 2 * var96
	module_11.UIPadX = any_CollectionUICreate_result1_upvr.Properties.PadX
	module_11.UIPadY = PadY
	return module_11
end
local function Initialize(arg1) -- Line 653
	--[[ Upvalues[4]:
		[1]: module_17_upvr (readonly)
		[2]: module_26_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_9_upvr (readonly)
	]]
	local module_2 = {
		TargetCollectionType = nil;
		SizeX = 0;
		SizeY = 0;
		SizeXTween = module_17_upvr.new(0, module_26_upvr.TweenDurations.Display, Enum.EasingStyle.Quad);
		SizeYTween = module_17_upvr.new(0, module_26_upvr.TweenDurations.Display, Enum.EasingStyle.Quad);
	}
	arg1.Wrapper.AnchorPoint = Vector2.zero
	module_2.Frame = module_6_upvr.I("Frame", {
		AnchorPoint = Vector2.yAxis;
		BackgroundColor3 = module_9_upvr.BackgroundColor1;
		BackgroundTransparency = module_9_upvr.BackgroundTransparency1;
		Position = UDim2.fromScale(0, 1);
		ZIndex = -1000;
		Parent = arg1.Wrapper;
	})
	module_2.FrameCorner = module_6_upvr.I("UICorner", {
		Parent = module_2.Frame;
	})
	return module_6_upvr.TableMerge(module_2, arg1)
end
tbl_2_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 693
end
tbl_2_upvr.Destroy = Destroy
local function DimensionsChanged(arg1) -- Line 699
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: any_TableMerge_result1_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 9 start (CF ANALYSIS FAILED)
	local PosX = any_CollectionUICreate_result1_upvr.Properties.PosX
	local var106 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_7_upvr.InventoryTiled]
	if var106 then
		PosX += var106.ListPosX
		local ListRegionX = var106.ListRegionX
		if arg1.SizeXTween.Value < ListRegionX then
			PosX += (ListRegionX - arg1.SizeX) * 0.5 // 1
			-- KONSTANTWARNING: GOTO [54] #38
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		PosX += (any_CollectionUICreate_result1_upvr.Properties.SizeX * 0.5 - arg1.SizeXTween.Value * 0.5) // 1
	end
	-- KONSTANTERROR: [0] 1. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 38. Error Block 6 start (CF ANALYSIS FAILED)
	arg1.Wrapper.Position = UDim2.fromOffset(PosX, any_CollectionUICreate_result1_upvr.Properties.PosY + any_CollectionUICreate_result1_upvr.Properties.SizeY)
	-- KONSTANTERROR: [54] 38. Error Block 6 end (CF ANALYSIS FAILED)
end
tbl_2_upvr.DimensionsChanged = DimensionsChanged
local function Update(arg1, arg2, arg3) -- Line 733
	--[[ Upvalues[4]:
		[1]: module_17_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local TargetCollectionType = arg1.TargetCollectionType
	local var109
	arg1.TargetCollectionType = var109
	local var110
	if TargetCollectionType == nil then
		var109 = false
	else
		var109 = true
	end
	local var111 = arg1.SubCollection_ByType[TargetCollectionType]
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 29. Error Block 40 start (CF ANALYSIS FAILED)
	var110 = arg1.SizeX
	module_17_upvr.Begin(arg1.SizeXTween, arg3, var110)
	-- KONSTANTERROR: [43] 29. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 35. Error Block 53 start (CF ANALYSIS FAILED)
	module_17_upvr.Update(arg1.SizeXTween, arg3)
	if var109 then
		var110 = arg1.SizeY
	else
		var110 = 0
	end
	module_17_upvr.Tween(arg1.SizeYTween, arg3, var110)
	if var109 then
		var110 = -arg1.SizeY
		-- KONSTANTWARNING: GOTO [86] #60
	end
	-- KONSTANTERROR: [52] 35. Error Block 53 end (CF ANALYSIS FAILED)
end
tbl_2_upvr.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryPanel] = tbl_2_upvr
local function Initialize(arg1) -- Line 817
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_TableMerge_result1_4 = module_6_upvr.TableMerge({
		DrawUpdated = false;
		SizeX = 0;
		SizeY = 0;
	}, arg1)
	any_TableMerge_result1_4.Wrapper.AnchorPoint = Vector2.new(0.5, 1)
	any_TableMerge_result1_4.Wrapper.Position = UDim2.fromScale(0, 1)
	return any_TableMerge_result1_4
end
tbl_28_upvr.Initialize = Initialize
local tbl_10_upvr = {}
function tbl_28_upvr.SetScrollTarget(arg1, arg2) -- Line 833
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	local var115 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[tbl_10_upvr[arg1._Type].CollectionType]
	if var115 then
		var115.ScrollingFrame.NextSelectionDown = arg2
	end
end
local function Update(arg1) -- Line 849
	if arg1.DrawUpdated then
		arg1.Wrapper.Size = UDim2.fromOffset(arg1.SizeX, arg1.SizeY)
	end
end
tbl_28_upvr.Update = Update
function tbl_28_upvr.InitializeBuyRandom(arg1, arg2) -- Line 861
	--[[ Upvalues[9]:
		[1]: module_30_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: tbl_28_upvr (readonly)
		[4]: tbl_73_upvr (readonly)
		[5]: module_9_upvr (readonly)
		[6]: module_22_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: module_5_upvr (readonly)
		[9]: module_6_upvr (readonly)
	]]
	assert(module_30_upvr.GetRandomItemCost(module_13_upvr.LocalSaveData, arg2), "Unsupported ItemType")
	local any_Initialize_result1_3 = tbl_28_upvr.Initialize(arg1)
	local tbl_56 = {
		_Connections = {};
		CostDirty = true;
	}
	tbl_56.ItemType = arg2
	tbl_56.PriceString = ""
	tbl_56.PromptText = string.format(tbl_73_upvr.BuyRandom, module_9_upvr.FrontEndNames.Items_ByItemType[arg2].Singular.Proper)
	tbl_56.Flag = module_22_upvr.TextBoundsFlagCreate()
	local any_TextBoundsLabelCreate_result1_18, any_TextBoundsLabelCreate_result2_4 = module_22_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_56.PromptText, tbl_56.Flag)
	tbl_56.PromptLabel = any_TextBoundsLabelCreate_result1_18
	tbl_56.PromptBounds = any_TextBoundsLabelCreate_result2_4
	tbl_56.BuyButton = module_10_upvr.Button.Common.Create.InlineIcon(any_Initialize_result1_3.Wrapper)
	local var121_upvw = false
	tbl_56.BuyButton.Button.Activated:Connect(function() -- Line 899
		--[[ Upvalues[3]:
			[1]: var121_upvw (read and write)
			[2]: module_5_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		if var121_upvw then
		else
			var121_upvw = true
			module_5_upvr.ItemBuyRandom(arg2, true)
			var121_upvw = false
		end
	end)
	local any_TableMerge_result1_9_upvr = module_6_upvr.TableMerge(tbl_56, any_Initialize_result1_3)
	local function MarkCostDirty(arg1_2) -- Line 916
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: any_TableMerge_result1_9_upvr (readonly)
		]]
		if arg1_2 == arg2 then
			any_TableMerge_result1_9_upvr.CostDirty = true
		end
	end
	any_TableMerge_result1_9_upvr._Connections[#any_TableMerge_result1_9_upvr._Connections + 1] = module_13_upvr.Signals.InventoryOwnedAdded:Connect(MarkCostDirty)
	any_TableMerge_result1_9_upvr._Connections[#any_TableMerge_result1_9_upvr._Connections + 1] = module_13_upvr.Signals.InventoryOwnedRemoved:Connect(MarkCostDirty)
	tbl_28_upvr.SetScrollTarget(any_TableMerge_result1_9_upvr, any_TableMerge_result1_9_upvr.BuyButton.Button)
	return any_TableMerge_result1_9_upvr
end
function tbl_28_upvr.DestroyBuyRandom(arg1) -- Line 939
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	for _, v_2 in arg1._Connections do
		v_2:Disconnect()
	end
	module_10_upvr.Button.Destroy(arg1.BuyButton)
end
function tbl_28_upvr.UpdateBuyRandom(arg1, arg2, arg3) -- Line 950
	--[[ Upvalues[8]:
		[1]: module_30_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: module_10_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_22_upvr (readonly)
		[7]: any_CollectionUICreate_result1_upvr (readonly)
		[8]: tbl_28_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var125
	if arg1.CostDirty then
		local BuyButton_2_upvr = arg1.BuyButton
		local ItemType = arg1.ItemType
		local any_GetRandomItemCost_result1, any_GetRandomItemCost_result2 = module_30_upvr.GetRandomItemCost(module_13_upvr.LocalSaveData, ItemType)
		var125 = module_30_upvr.TransactionType.Invalid
		if any_GetRandomItemCost_result1 == var125 then
		else
		end
		var125 = any_GetRandomItemCost_result1
		if var125 then
			if module_30_upvr.GetRandomUnownedItem(module_13_upvr.LocalSaveData, ItemType) == nil then
				var125 = false
			else
				var125 = true
			end
		end
		local var130
		if var125 then
			var130 = module_30_upvr.TransactionType.Currency
			if any_GetRandomItemCost_result1 == var130 then
				var130 = module_30_upvr.RandomCostCurrency_ByItemType[ItemType]
				BuyButton_2_upvr.Image.Image = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Currency_ByCurrencyType, var130, module_9_upvr.ImageMapStyle.OutlineHeavy)
			else
				var130 = module_10_upvr.Button.Themes
			end
			var130 = module_30_upvr.GeneratePriceStringAsync
			var130(function(arg1_3) -- Line 972, Named "UpdatePriceString"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: BuyButton_2_upvr (readonly)
				]]
				if arg1.PriceString ~= arg1_3 then
					arg1.PriceString = arg1_3
					BuyButton_2_upvr.Label.Text = arg1_3
					arg1.Flag.Dirty = true
				end
			end, module_9_upvr.FALLBACK_PRICE_STRING, any_GetRandomItemCost_result1, any_GetRandomItemCost_result2, 1, module_6_upvr.FormatNumberOptions_PriceAbbreviation)
		else
			var130 = module_10_upvr.Button.Themes
			if true then
				var130 = "All Owned"
			else
				var130 = "Off Sale"
			end
			if arg1.PriceString ~= var130 then
				arg1.PriceString = var130
				BuyButton_2_upvr.Label.Text = var130
				arg1.Flag.Dirty = true
			end
		end
		BuyButton_2_upvr.Input.Enabled = false
		BuyButton_2_upvr.Theme = var130.Deactivated
		BuyButton_2_upvr.Image.Visible = false
		arg1.CostDirty = false
	end
	BuyButton_2_upvr = module_22_upvr.TextBoundsFlagCheck(arg1.Flag)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		BuyButton_2_upvr = arg1.DrawDirty
		return BuyButton_2_upvr
	end
	if BuyButton_2_upvr or INLINED() then
		BuyButton_2_upvr = any_CollectionUICreate_result1_upvr.Properties.PadX
		local var131 = BuyButton_2_upvr
		var125 = module_22_upvr
		local var132 = var125.SteppedSize.ButtonFancyY + any_CollectionUICreate_result1_upvr.Properties.PadY
		var125 = module_22_upvr
		local ButtonFancyText_4 = var125.SteppedSize.ButtonFancyText
		var125 = module_22_upvr
		local any_DimTrackerCreate_result1 = var125.DimTrackerCreate()
		var125 = {}
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var131)
		local PromptBounds_3 = arg1.PromptBounds
		local PromptLabel = arg1.PromptLabel
		if module_22_upvr.CachedTextBoundsUpdate(PromptBounds_3, arg1.PromptText, ButtonFancyText_4) then
			PromptLabel.TextSize = ButtonFancyText_4
		end
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, PromptLabel, 0, PromptBounds_3.X)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, ButtonFancyText_4 * 0.5 // 1)
		var125[PromptLabel] = {
			Position = UDim.new(0, (var132 * 0.5 - PromptBounds_3.Y * 0.5) // 1);
			Size = UDim.new(0, PromptBounds_3.Y);
		}
		local BuyButton = arg1.BuyButton
		local ButtonFancyX = module_22_upvr.SteppedSize.ButtonFancyX
		local ButtonFancyY_5 = module_22_upvr.SteppedSize.ButtonFancyY
		module_10_upvr.Button.Common.Resize.InlineIcon(BuyButton, ButtonFancyText_4, ButtonFancyText_4, ButtonFancyX)
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, BuyButton.Button, 0, ButtonFancyX)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var131)
		var125[BuyButton.Button] = {
			Position = UDim.new(0, (var132 * 0.5 - ButtonFancyY_5 * 0.5) // 1);
			Size = UDim.new(0, ButtonFancyY_5);
		}
		module_22_upvr.DimTrackerApply(any_DimTrackerCreate_result1, var125, false)
		arg1.DrawUpdated = true
		arg1.SizeX = any_DimTrackerCreate_result1.Offset
		arg1.SizeY = var132
	else
		var131 = false
		arg1.DrawUpdated = var131
	end
	var131 = module_10_upvr.Button.Update
	var131(arg1.BuyButton, arg3)
	var131 = tbl_28_upvr.Update
	var131(arg1)
end
local tbl_25 = {}
local function Initialize(arg1) -- Line 1107
	--[[ Upvalues[2]:
		[1]: tbl_28_upvr (readonly)
		[2]: module_8_upvr (readonly)
	]]
	return tbl_28_upvr.InitializeBuyRandom(arg1, module_8_upvr.ItemType.Trail)
end
tbl_25.Initialize = Initialize
tbl_25.Destroy = tbl_28_upvr.DestroyBuyRandom
tbl_25.Update = tbl_28_upvr.UpdateBuyRandom
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryPanel_Trail] = tbl_25
local tbl_39 = {}
local function Initialize(arg1) -- Line 1117
	--[[ Upvalues[2]:
		[1]: tbl_28_upvr (readonly)
		[2]: module_8_upvr (readonly)
	]]
	return tbl_28_upvr.InitializeBuyRandom(arg1, module_8_upvr.ItemType.Dance)
end
tbl_39.Initialize = Initialize
tbl_39.Destroy = tbl_28_upvr.DestroyBuyRandom
tbl_39.Update = tbl_28_upvr.UpdateBuyRandom
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryPanel_Dance] = tbl_39
local tbl_58 = {}
local function Initialize(arg1) -- Line 1133
	--[[ Upvalues[9]:
		[1]: tbl_28_upvr (readonly)
		[2]: module_21_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_22_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_9_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: module_32_upvr (readonly)
		[9]: module_13_upvr (readonly)
	]]
	local any_Initialize_result1 = tbl_28_upvr.Initialize(arg1)
	local tbl_71_upvr = {
		_Connections = {};
		EquipDirty = true;
		EquipText = "";
		PromptText = "Equipped:";
		UpgradeProduct = module_21_upvr.ProductIncrementCounter_ByCounterType[module_8_upvr.CounterType.PetEquipLimit];
		Flag = module_22_upvr.TextBoundsFlagCreate();
	}
	local any_TextBoundsLabelCreate_result1_6, any_TextBoundsLabelCreate_result2_6 = module_22_upvr.TextBoundsLabelCreate(any_Initialize_result1.Wrapper, tbl_71_upvr.PromptText, tbl_71_upvr.Flag)
	tbl_71_upvr.PromptLabel = any_TextBoundsLabelCreate_result1_6
	tbl_71_upvr.PromptBounds = any_TextBoundsLabelCreate_result2_6
	tbl_71_upvr.EquipFrame = module_6_upvr.I("Frame", {
		BackgroundColor3 = module_9_upvr.BackgroundColor1;
		Parent = arg1.Wrapper;
	})
	module_6_upvr.I("UICorner", {
		CornerRadius = UDim.new(1, 0);
		Parent = tbl_71_upvr.EquipFrame;
	})
	local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_7 = module_22_upvr.TextBoundsLabelCreate(tbl_71_upvr.EquipFrame, nil, tbl_71_upvr.Flag, module_9_upvr.FontFaceItalic, module_9_upvr.TextColor3)
	tbl_71_upvr.EquipLabel = any_TextBoundsLabelCreate_result1_3
	tbl_71_upvr.EquipBounds = any_TextBoundsLabelCreate_result2_7
	module_6_upvr.PropsApply(tbl_71_upvr.EquipLabel, module_22_upvr.Properties.Centered)
	local any_CreateFancy_result1_2 = module_10_upvr.Button.CreateFancy(any_Initialize_result1.Wrapper, module_10_upvr.Button.Themes.Manage, {
		Text = "Equip Best";
	})
	local var156_upvw = false
	any_CreateFancy_result1_2.Button.Activated:Connect(function() -- Line 1192
		--[[ Upvalues[3]:
			[1]: var156_upvw (read and write)
			[2]: module_32_upvr (copied, readonly)
			[3]: module_8_upvr (copied, readonly)
		]]
		if var156_upvw then
		else
			var156_upvw = true
			local tbl = {
				Request = module_8_upvr.StateRequestType.PetState;
				Args = {module_8_upvr.PetRequestType.EquipBest};
				Callback = coroutine.running();
			}
			var156_upvw = false
		end
	end)
	tbl_71_upvr.EquipButton = any_CreateFancy_result1_2
	local any_CreateFancy_result1_7_upvr = module_10_upvr.Button.CreateFancy(any_Initialize_result1.Wrapper, nil, {
		Text = '+';
	})
	local var162_upvw = false
	any_CreateFancy_result1_7_upvr.Button.Activated:Connect(function() -- Line 1223
		--[[ Upvalues[5]:
			[1]: var162_upvw (read and write)
			[2]: any_CreateFancy_result1_7_upvr (readonly)
			[3]: tbl_71_upvr (readonly)
			[4]: module_32_upvr (copied, readonly)
			[5]: module_8_upvr (copied, readonly)
		]]
		if var162_upvw or not any_CreateFancy_result1_7_upvr.Input.Enabled or not tbl_71_upvr.UpgradeProduct then
		else
			var162_upvw = true
			local _ = {
				Request = module_8_upvr.StateRequestType.CounterIncrement;
				Args = {module_8_upvr.CounterType.PetEquipLimit, module_8_upvr.UnlockMethod.Product};
				Callback = coroutine.running();
			}
			var162_upvw = false
		end
	end)
	tbl_71_upvr.UpgradeButton = any_CreateFancy_result1_7_upvr
	any_CreateFancy_result1_7_upvr = module_6_upvr.TableMerge(tbl_71_upvr, any_Initialize_result1)
	local var165_upvr = any_CreateFancy_result1_7_upvr
	var165_upvr._Connections[#var165_upvr._Connections + 1] = module_13_upvr.Signals.CounterChanged:Connect(function(arg1_4) -- Line 1250, Named "MarkEquipDirty"
		--[[ Upvalues[2]:
			[1]: module_8_upvr (copied, readonly)
			[2]: var165_upvr (readonly)
		]]
		if arg1_4 == module_8_upvr.CounterType.PetEquipLimit then
			var165_upvr.EquipDirty = true
		end
	end)
	tbl_28_upvr.SetScrollTarget(var165_upvr, var165_upvr.EquipButton.Button)
	return var165_upvr
end
tbl_58.Initialize = Initialize
local function Destroy(arg1) -- Line 1271
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	for _, v_3 in arg1._Connections do
		v_3:Disconnect()
	end
	module_10_upvr.Button.Destroy(arg1.EquipButton)
	module_10_upvr.Button.Destroy(arg1.UpgradeButton)
end
tbl_58.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 1283
	--[[ Upvalues[8]:
		[1]: module_13_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: tbl_73_upvr (readonly)
		[4]: module_7_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: module_22_upvr (readonly)
		[7]: any_CollectionUICreate_result1_upvr (readonly)
		[8]: tbl_28_upvr (readonly)
	]]
	if module_13_upvr.LocalPetState.Dirty or arg1.EquipDirty then
		local any_SaveDataGetPetEquipLimit_result1_2 = module_8_upvr.SaveDataGetPetEquipLimit(module_13_upvr.LocalSaveData)
		local formatted_2 = string.format(tbl_73_upvr.EquipCount, #module_13_upvr.LocalPetState.Equipped, any_SaveDataGetPetEquipLimit_result1_2)
		if arg1.EquipText ~= formatted_2 then
			arg1.EquipText = formatted_2
			arg1.EquipLabel.Text = formatted_2
			arg1.Flag.Dirty = true
		end
		local var192 = false
		if any_SaveDataGetPetEquipLimit_result1_2 < module_7_upvr.PetsMaxEquippable then
			var192 = false
			if arg1.UpgradeProduct ~= nil then
				var192 = not arg1.UpgradeProduct.Disabled
			end
		end
		local UpgradeButton_3 = arg1.UpgradeButton
		UpgradeButton_3.Input.Enabled = var192
		if var192 then
			UpgradeButton_3 = module_10_upvr.Button.Themes.Upgrade
		else
			UpgradeButton_3 = module_10_upvr.Button.Themes.Deactivated
		end
		arg1.UpgradeButton.Theme = UpgradeButton_3
		arg1.EquipDirty = false
	end
	if module_22_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		local PadX = any_CollectionUICreate_result1_upvr.Properties.PadX
		local var195 = module_22_upvr.SteppedSize.ButtonFancyY + any_CollectionUICreate_result1_upvr.Properties.PadY
		local ButtonFancyText_3 = module_22_upvr.SteppedSize.ButtonFancyText
		local var197 = ButtonFancyText_3 * 0.5 // 1
		local any_DimTrackerCreate_result1_2 = module_22_upvr.DimTrackerCreate()
		local tbl_5 = {}
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, PadX)
		local PromptBounds = arg1.PromptBounds
		local PromptLabel_3 = arg1.PromptLabel
		if module_22_upvr.CachedTextBoundsUpdate(PromptBounds, arg1.PromptText, ButtonFancyText_3) then
			PromptLabel_3.TextSize = ButtonFancyText_3
		end
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, PromptLabel_3, 0, PromptBounds.X)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, var197)
		tbl_5[PromptLabel_3] = {
			Position = UDim.new(0, (var195 * 0.5 - PromptBounds.Y * 0.5) // 1);
			Size = UDim.new(0, PromptBounds.Y);
		}
		local EquipBounds = arg1.EquipBounds
		local EquipFrame = arg1.EquipFrame
		module_22_upvr.CachedTextBoundsConform(EquipBounds, arg1.EquipLabel, arg1.EquipText, ButtonFancyText_3)
		local ButtonFancyY_3 = module_22_upvr.SteppedSize.ButtonFancyY
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, EquipFrame, 0, EquipBounds.X + 2 * var197)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, var197)
		tbl_5[EquipFrame] = {
			Position = UDim.new(0, (var195 * 0.5 - ButtonFancyY_3 * 0.5) // 1);
			Size = UDim.new(0, ButtonFancyY_3);
		}
		local EquipButton = arg1.EquipButton
		local UpgradeButton_2 = arg1.UpgradeButton
		local ButtonFancyY_4 = module_22_upvr.SteppedSize.ButtonFancyY
		module_10_upvr.Button.AdjustText(EquipButton, nil, nil, nil, module_22_upvr.SteppedSize.ButtonFancyText)
		module_10_upvr.Button.AdjustText(UpgradeButton_2, nil, nil, nil, module_22_upvr.SteppedSize.ButtonFancyText)
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, EquipButton.Button, 0, module_22_upvr.SteppedSize.ButtonFancyX)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, var197)
		module_22_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, UpgradeButton_2.Button, 0, ButtonFancyY_4)
		module_22_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, PadX)
		local tbl_33 = {
			Position = UDim.new(0, (var195 * 0.5 - ButtonFancyY_4 * 0.5) // 1);
			Size = UDim.new(0, ButtonFancyY_4);
		}
		tbl_5[EquipButton.Button] = tbl_33
		tbl_5[UpgradeButton_2.Button] = tbl_33
		module_22_upvr.DimTrackerApply(any_DimTrackerCreate_result1_2, tbl_5, false)
		arg1.DrawUpdated = true
		arg1.SizeX = any_DimTrackerCreate_result1_2.Offset
		arg1.SizeY = var195
	else
		arg1.DrawUpdated = false
	end
	module_10_upvr.Button.Update(arg1.EquipButton, arg3)
	module_10_upvr.Button.Update(arg1.UpgradeButton, arg3)
	tbl_28_upvr.Update(arg1)
end
tbl_58.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryPanel_Pet] = tbl_58
local function Initialize(arg1) -- Line 1425
	--[[ Upvalues[5]:
		[1]: tbl_75_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_10_upvr (readonly)
		[4]: any_CollectionUICreate_result1_upvr (readonly)
		[5]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl_9 = {
		TabButtons = {};
	}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 58. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [90.5]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [90.8]
	tbl_9.TabButtons[nil] = nil
	-- KONSTANTERROR: [88] 58. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if tbl_9.TabButtons then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not tbl_9.TabButtons then
			-- KONSTANTWARNING: GOTO [88] #58
		end
	else
	end
	-- KONSTANTERROR: [9] 8. Error Block 11 end (CF ANALYSIS FAILED)
end
tbl_27.Initialize = Initialize
local function Destroy(arg1) -- Line 1477
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	for _, v_4 in arg1.TabButtons do
		module_10_upvr.Button.Destroy(v_4)
	end
end
tbl_27.Destroy = Destroy
function tbl_27.DimensionsChanged(arg1) -- Line 1486
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: any_TableMerge_result1_7_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local var214 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_7_upvr.InventoryPanel]
	if var214 then
		tbl_2_upvr.DimensionsChanged(var214)
	end
end
function tbl_27.Resolve(arg1, arg2, arg3) -- Line 1499
	--[[ Upvalues[4]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: tbl_21_upvr (readonly)
		[3]: any_TableMerge_result1_7_upvr (readonly)
		[4]: module_13_upvr (readonly)
	]]
	local var215 = tbl_21_upvr[any_CollectionUICreate_result1_upvr.CollectionGetDeepestActiveType(arg1)]
	local var216 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_7_upvr.InventoryPanel]
	if var215 and var215.PanelType and (not var215.RequiresLootboxApproval or module_13_upvr.LocalPolicyState.LootboxesEnabled) then
		any_CollectionUICreate_result1_upvr.RequestCollection(var215.PanelType)
		if not var216 then
			local any_CollectionCreate_result1 = any_CollectionUICreate_result1_upvr.CollectionCreate(any_TableMerge_result1_7_upvr.InventoryPanel)
			any_CollectionCreate_result1.Wrapper.Parent = any_CollectionUICreate_result1_upvr.Properties.ScreenGui
			var216 = any_CollectionCreate_result1
		end
		var216.TargetCollectionType = var215.PanelType
	end
	if var216 then
		any_CollectionUICreate_result1_upvr.CollectionResolve(var216, arg2, arg3)
	end
end
local function Update(arg1, arg2, arg3) -- Line 1536
	--[[ Upvalues[6]:
		[1]: module_22_upvr (readonly)
		[2]: tbl_63_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
		[4]: tbl_75_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: any_TableMerge_result1_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.DrawDirty then
		local var261 = module_22_upvr.EmSize * tbl_63_upvr.WrapperSizeXEm // 1
		local PadY_3 = any_CollectionUICreate_result1_upvr.Properties.PadY
		if arg1.DrawDirty then
			local var263 = PadY_3 * 0.5 // 1
			local var264 = tbl_63_upvr.TabButtonTextSizeEm * module_22_upvr.EmSize // 1
			local var265 = var264 + 2 * var263
			local any_ComputeEvenlySpacedSize_result1_3, any_ComputeEvenlySpacedSize_result2 = module_22_upvr.ComputeEvenlySpacedSize(var261 - any_CollectionUICreate_result1_upvr.Properties.CloseInsetX - 2 * PadY_3, #arg1.TabButtons, PadY_3)
			for i_5, v_5 in arg1.TabButtons do
				v_5.Button.Position = UDim2.fromOffset(PadY_3 + any_ComputeEvenlySpacedSize_result2 * (i_5 - 1), PadY_3 + ((any_CollectionUICreate_result1_upvr.Properties.CloseInsetY - PadY_3) * 0.5 - var265 * 0.5) // 1)
				v_5.Button.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1_3, var265)
				v_5.Label.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1_3 - 2 * var263, var264)
				local _
			end
			arg1.TargetSize = UDim2.fromOffset(var261, module_22_upvr.EmSize * tbl_63_upvr.WrapperSizeYEm // 1)
		end
	end
	for i_6, v_6 in tbl_75_upvr do
		local var269 = arg1.TabButtons[i_6]
		local CollectionType = v_6.CollectionType
		if any_CollectionUICreate_result1_upvr.CollectionTypeIsActive(CollectionType) then
			CollectionType = module_10_upvr.ButtonState.Selected
		else
			CollectionType = nil
		end
		var269.StateOverride = CollectionType
		module_10_upvr.Button.Update(var269, arg3)
	end
	any_CollectionUICreate_result1_upvr.CollectionUpdate_Display(arg1, arg2, arg3)
	local var271 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_7_upvr.InventoryPanel]
	if var271 then
		if arg1.DrawDirty then
			any_CollectionUICreate_result1_upvr.CollectionMarkDirty(var271, "DrawDirty")
		end
		any_CollectionUICreate_result1_upvr.CollectionUpdate(var271, arg2, arg3)
		arg1.OverhangSize = var271.OverhangSize
		arg1.TargetOffset = var271.TargetOffset
	else
		arg1.OverhangSize = nil
		arg1.TargetOffset = nil
	end
end
tbl_27.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.Inventory_Landing] = tbl_27
local function Initialize(arg1) -- Line 1636
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_26_upvr (readonly)
	]]
	local module_28 = {
		DetailsDisplay = nil;
		ListPosX = 0;
		ListPosY = 0;
		ListRegionX = 0;
		ListRegionY = 0;
		Flag = module_22_upvr.TextBoundsFlagCreate();
	}
	arg1.SubWrapper = module_6_upvr.I("Frame", {
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Parent = arg1.Wrapper;
	})
	module_28.DetailsWrapper = module_6_upvr.I("Frame", {
		BackgroundTransparency = 1;
		SelectionBehaviorDown = Enum.SelectionBehavior.Stop;
		SelectionBehaviorRight = Enum.SelectionBehavior.Stop;
		SelectionGroup = true;
		Parent = arg1.Wrapper;
	})
	module_28.DetailsDivider = module_26_upvr.CreateDivider(90, arg1.Wrapper)
	return module_6_upvr.TableMerge(module_28, arg1)
end
tbl_20_upvr.Initialize = Initialize
function tbl_20_upvr.ComponentCreate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1681
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local tbl_77 = {}
	tbl_77.Alignment = arg3
	tbl_77.Tag = arg5
	tbl_77.Type = arg2
	tbl_77.SizeX = 0
	tbl_77.SizeY = 0
	local any_TableMerge_result1 = module_6_upvr.TableMerge(tbl_77, arg4)
	if arg6 then
		table.insert(arg1.Components, 1, any_TableMerge_result1)
	else
		arg1.Components[#arg1.Components + 1] = any_TableMerge_result1
	end
	if arg5 then
		arg1.Component_ByTag[arg5] = any_TableMerge_result1
	end
	return any_TableMerge_result1
end
function tbl_20_upvr.ComponentDestroy(arg1, arg2) -- Line 1714
	--[[ Upvalues[2]:
		[1]: table_freeze_result1_upvr_3 (readonly)
		[2]: module_10_upvr (readonly)
	]]
	if arg2.Type == table_freeze_result1_upvr_3.Button then
		module_10_upvr.Button.Destroy(arg2.Button)
	elseif arg2.Type == table_freeze_result1_upvr_3.Text then
		arg2.Label:Destroy()
		if arg2.Icon then
			arg2.Icon:Destroy()
		end
	end
	local table_find_result1 = table.find(arg1.Components, arg2)
	if table_find_result1 then
		table.remove(arg1.Components, table_find_result1)
	end
	if arg2.Tag then
		arg1.Component_ByTag[arg2.Tag] = nil
	end
end
function tbl_20_upvr.DestroyDetails(arg1) -- Line 1743
	--[[ Upvalues[3]:
		[1]: tbl_36_upvr (readonly)
		[2]: tbl_51_upvr (readonly)
		[3]: tbl_20_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.DetailsDisplay then
		local DetailsDisplay_3 = arg1.DetailsDisplay
		arg1.DetailsDisplay = nil
		tbl_36_upvr.Destroy(DetailsDisplay_3.ItemDisplay)
		if DetailsDisplay_3.NameDisplay then
			tbl_51_upvr.Destroy(DetailsDisplay_3.NameDisplay)
			DetailsDisplay_3.NameDisplay = nil
		end
		for i_7 = #DetailsDisplay_3.Components, 1, -1 do
			tbl_20_upvr.ComponentDestroy(DetailsDisplay_3, DetailsDisplay_3.Components[i_7])
			local _
		end
	end
end
local function Destroy(arg1) -- Line 1768
	--[[ Upvalues[1]:
		[1]: tbl_20_upvr (readonly)
	]]
	tbl_20_upvr.DestroyDetails(arg1)
end
tbl_20_upvr.Destroy = Destroy
local table_freeze_result1_upvr = table.freeze({
	Action = 1;
	CombinePets = 2;
	Price = 3;
})
local module_15_upvr = require(UserInterface:WaitForChild("NotificationsUI"))
local function Update(arg1, arg2, arg3) -- Line 1775
	--[[ Upvalues[28]:
		[1]: tbl_62_upvr (readonly)
		[2]: tbl_20_upvr (readonly)
		[3]: tbl_36_upvr (readonly)
		[4]: module_30_upvr (readonly)
		[5]: tbl_51_upvr (readonly)
		[6]: tbl_73_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: module_22_upvr (readonly)
		[9]: module_9_upvr (readonly)
		[10]: table_freeze_result1_upvr_3 (readonly)
		[11]: module_10_upvr (readonly)
		[12]: table_freeze_result1_upvr (readonly)
		[13]: module_8_upvr (readonly)
		[14]: tbl_7_upvr (readonly)
		[15]: module_5_upvr (readonly)
		[16]: tbl_61_upvr (readonly)
		[17]: module_23_upvr (readonly)
		[18]: module_13_upvr (readonly)
		[19]: module_7_upvr (readonly)
		[20]: module_32_upvr (readonly)
		[21]: tbl_11_upvr (readonly)
		[22]: module_15_upvr (readonly)
		[23]: module_33_upvr (readonly)
		[24]: any_CollectionUICreate_result1_upvr (readonly)
		[25]: tbl_63_upvr (readonly)
		[26]: ItemDimsCalculate_upvr (readonly)
		[27]: any_TableMerge_result1_7_upvr (readonly)
		[28]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var468_upvr = arg1.SubCollection_ByType[arg1.ActiveCollectionType]
	local var469
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 37. Error Block 200 start (CF ANALYSIS FAILED)
	var469 = var468_upvr.PendingTile
	if var469 then
		var469 = tbl_62_upvr.Select
		var469(var468_upvr.PendingTile)
		var469 = nil
		var468_upvr.PendingTile = var469
	end
	var469 = var468_upvr
	if var469 then
		var469 = var468_upvr.SelectedTile
	end
	local var470_upvw = var469
	-- KONSTANTERROR: [52] 37. Error Block 200 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [69] 49. Error Block 274 start (CF ANALYSIS FAILED)
	if not arg1.ActiveCollectionUpdated and (var470_upvw == nil or arg1.DetailsDisplay ~= nil) or arg1.DetailsDisplay ~= nil then
		if var470_upvw == arg1.DetailsDisplay.ItemTile then
		else
		end
	end
	if true then
		tbl_20_upvr.DestroyDetails(arg1)
		local any_Create_result1_7 = tbl_36_upvr.Create(arg1.DetailsWrapper)
		local tbl_46 = {
			_SelectionPending = true;
			Dirty = true;
			ItemDisplay = any_Create_result1_7;
			ItemTile = var470_upvw;
			Component_ByTag = {};
			Components = {};
		}
		local var473
		if var470_upvw then
			local ItemData_3_upvr = var470_upvw.ItemData
			local var475_upvr = module_30_upvr.ItemType_ByItemData[ItemData_3_upvr]
			local any_Create_result1 = tbl_51_upvr.Create()
			tbl_46.NameDisplay = any_Create_result1
			var473 = arg1.DetailsWrapper
			any_Create_result1.NameLabel.Parent = var473
			if ItemData_3_upvr.EnergyMultiplier then
				local tbl_47 = {}
				var473 = string.format(tbl_73_upvr.Energy, module_6_upvr.FormatNumber(ItemData_3_upvr.EnergyMultiplier, module_6_upvr.FormatNumberOptions_BoostAbbreviation))
				tbl_47.Text = var473
				var473 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_47.Text, arg1.Flag)
				local any_TextBoundsLabelCreate_result1_21_upvw, any_TextBoundsLabelCreate_result2_3 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_47.Text, arg1.Flag)
				tbl_47.Label = any_TextBoundsLabelCreate_result1_21_upvw
				tbl_47.Bounds = any_TextBoundsLabelCreate_result2_3
				any_TextBoundsLabelCreate_result1_21_upvw = module_6_upvr.I
				any_TextBoundsLabelCreate_result1_21_upvw = any_TextBoundsLabelCreate_result1_21_upvw("ImageLabel", module_22_upvr.Properties.Image, {
					Image = module_9_upvr.EnergyImage_256;
					Parent = arg1.DetailsWrapper;
				})
				tbl_47.Icon = any_TextBoundsLabelCreate_result1_21_upvw
				any_TextBoundsLabelCreate_result1_21_upvw = tbl_20_upvr.ComponentCreate(tbl_46, table_freeze_result1_upvr_3.Text, Enum.VerticalAlignment.Top, tbl_47)
			end
			any_TextBoundsLabelCreate_result1_21_upvw = module_10_upvr.Button
			any_TextBoundsLabelCreate_result1_21_upvw = arg1.DetailsWrapper
			local any_CreateFancy_result1 = any_TextBoundsLabelCreate_result1_21_upvw.CreateFancy(any_TextBoundsLabelCreate_result1_21_upvw)
			any_TextBoundsLabelCreate_result1_21_upvw = tbl_20_upvr.ComponentCreate
			any_TextBoundsLabelCreate_result1_21_upvw(tbl_46, table_freeze_result1_upvr_3.Button, Enum.VerticalAlignment.Bottom, {
				Button = any_CreateFancy_result1;
			}, table_freeze_result1_upvr.Action)
			any_TextBoundsLabelCreate_result1_21_upvw = nil
			if var475_upvr ~= module_8_upvr.ItemType.Pet then
				any_Create_result1_7.ImageDisplay = tbl_7_upvr.Create(any_Create_result1_7)
				local tbl_40 = {
					Text = module_9_upvr.FrontEndNames.Items_ByItemType[var475_upvr].Singular.Proper;
				}
				local any_TextBoundsLabelCreate_result1_5, any_TextBoundsLabelCreate_result2_12 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_40.Text, arg1.Flag)
				tbl_40.Label = any_TextBoundsLabelCreate_result1_5
				tbl_40.Bounds = any_TextBoundsLabelCreate_result2_12
				if var475_upvr == module_8_upvr.ItemType.Dance then
					local tbl_45 = {
						Text = string.format(tbl_73_upvr.PointsPerSecond, module_6_upvr.FormatNumber(ItemData_3_upvr.PointsPerSecond));
					}
					local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_23 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_45.Text, arg1.Flag)
					tbl_45.Label = any_TextBoundsLabelCreate_result1
					tbl_45.Bounds = any_TextBoundsLabelCreate_result2_23
					tbl_45.Icon = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
						Image = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Currency_ByCurrencyType, module_8_upvr.CurrencyType.MemePoints);
						Parent = arg1.DetailsWrapper;
					})
				end
				local var491_upvw = false
				function any_TextBoundsLabelCreate_result1_21_upvw() -- Line 1987
					--[[ Upvalues[6]:
						[1]: var491_upvw (read and write)
						[2]: var470_upvw (read and write)
						[3]: module_8_upvr (copied, readonly)
						[4]: module_5_upvr (copied, readonly)
						[5]: var475_upvr (readonly)
						[6]: ItemData_3_upvr (readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var492
					if var491_upvw then
					else
						var491_upvw = true
						if 0 >= var470_upvw.Count then
							var492 = false
						else
							var492 = true
						end
						if not var492 then
							local _ = module_8_upvr.ItemAction.Buy
						elseif not var470_upvw.Equipped then
						else
						end
						if module_8_upvr.ItemAction.Unequip then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							module_5_upvr.ItemActionPerform(module_8_upvr.ItemAction.Unequip, var475_upvr, ItemData_3_upvr, true)
						end
						var491_upvw = false
					end
				end
			else
				any_Create_result1_7.ViewportDisplay = tbl_61_upvr.Create(any_Create_result1_7)
				tbl_46._QueryPet = true
				local tbl_78 = {
					Text = module_23_upvr.FrontEndNames.PetSizeMod_ByMod[ItemData_3_upvr.SizeMod];
					TextScale = 1.25;
				}
				local any_TextBoundsLabelCreate_result1_14, any_TextBoundsLabelCreate_result2_13 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_78.Text, arg1.Flag, module_9_upvr.FontFaceBold, module_23_upvr.Colors.PetSizeMod_ByMod[ItemData_3_upvr.SizeMod])
				tbl_78.Label = any_TextBoundsLabelCreate_result1_14
				tbl_78.Bounds = any_TextBoundsLabelCreate_result2_13
				if select(2, module_23_upvr.PetCanCombine(ItemData_3_upvr, module_13_upvr.LocalPlayerState)) ~= nil then
					local any_CreateFancy_result1_5 = module_10_upvr.Button.CreateFancy(arg1.DetailsWrapper, nil, {
						Text = string.format("Fuse x%i", module_7_upvr.PetsCombineCount);
					})
					local var499_upvw = false
					local function CombinePets_upvr() -- Line 2069, Named "CombinePets"
						--[[ Upvalues[8]:
							[1]: var499_upvw (read and write)
							[2]: module_23_upvr (copied, readonly)
							[3]: ItemData_3_upvr (readonly)
							[4]: module_13_upvr (copied, readonly)
							[5]: module_32_upvr (copied, readonly)
							[6]: module_8_upvr (copied, readonly)
							[7]: var468_upvr (readonly)
							[8]: tbl_11_upvr (copied, readonly)
						]]
						if var499_upvw then
						else
							var499_upvw = true
							local any_PetCanCombine_result1_2, any_PetCanCombine_result2_2 = module_23_upvr.PetCanCombine(ItemData_3_upvr, module_13_upvr.LocalPlayerState)
							if any_PetCanCombine_result1_2 then
								if module_32_upvr.MakeRequest({
									Request = module_8_upvr.StateRequestType.PetState;
									Args = {module_8_upvr.PetRequestType.Combine, ItemData_3_upvr.Id};
									Callback = coroutine.running();
								}).Response == module_8_upvr.ResponseType.Success and var468_upvr and any_PetCanCombine_result2_2 and not module_23_upvr.PetCanCombine(ItemData_3_upvr, module_13_upvr.LocalPlayerState) then
									task.defer(tbl_11_upvr.AttemptSelection, var468_upvr, any_PetCanCombine_result2_2, false)
								end
							end
							var499_upvw = false
						end
					end
					any_CreateFancy_result1_5.Button.Activated:Connect(CombinePets_upvr)
					module_10_upvr.Button.BindToKeyCode(any_CreateFancy_result1_5, function() -- Line 2117
						--[[ Upvalues[1]:
							[1]: CombinePets_upvr (readonly)
						]]
						task.spawn(CombinePets_upvr)
						return Enum.ContextActionResult.Sink
					end, Enum.KeyCode.ButtonY, module_10_upvr.IconLocation.RightClose)
					tbl_20_upvr.ComponentCreate(tbl_46, table_freeze_result1_upvr_3.Button, Enum.VerticalAlignment.Bottom, {
						Button = any_CreateFancy_result1_5;
					}, table_freeze_result1_upvr.CombinePets, true)
				end
				local var507_upvw = false
				function any_TextBoundsLabelCreate_result1_21_upvw() -- Line 2139
					--[[ Upvalues[12]:
						[1]: var507_upvw (read and write)
						[2]: var470_upvw (read and write)
						[3]: module_8_upvr (copied, readonly)
						[4]: ItemData_3_upvr (readonly)
						[5]: module_13_upvr (copied, readonly)
						[6]: module_32_upvr (copied, readonly)
						[7]: module_9_upvr (copied, readonly)
						[8]: var475_upvr (readonly)
						[9]: module_15_upvr (copied, readonly)
						[10]: tbl_62_upvr (copied, readonly)
						[11]: var468_upvr (readonly)
						[12]: tbl_11_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
					local var508
					if var507_upvw then return end
					var507_upvw = true
					if 0 >= var470_upvw.Count then
						var508 = false
					else
						var508 = true
					end
					-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [26] 22. Error Block 50 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [26] 22. Error Block 50 end (CF ANALYSIS FAILED)
				end
			end
			if any_TextBoundsLabelCreate_result1_21_upvw then
				any_CreateFancy_result1.Button.Activated:Connect(any_TextBoundsLabelCreate_result1_21_upvw)
				module_10_upvr.Button.BindToKeyCode(any_CreateFancy_result1, function() -- Line 2260
					--[[ Upvalues[1]:
						[1]: any_TextBoundsLabelCreate_result1_21_upvw (read and write)
					]]
					any_TextBoundsLabelCreate_result1_21_upvw()
					return Enum.ContextActionResult.Sink
				end, Enum.KeyCode.ButtonX, module_10_upvr.IconLocation.RightClose)
			end
			if ItemData_3_upvr.NotCountedAgainstEquipLimit then
				local tbl_76 = {
					Text = tbl_73_upvr.Equip;
				}
				local any_TextBoundsLabelCreate_result1_16, any_TextBoundsLabelCreate_result2_9 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, tbl_76.Text, arg1.Flag, module_9_upvr.FontFaceItalic, module_9_upvr.TextColor4)
				tbl_76.Label = any_TextBoundsLabelCreate_result1_16
				tbl_76.Bounds = any_TextBoundsLabelCreate_result2_9
			end
			tbl_36_upvr.Assign(any_Create_result1_7, var470_upvw)
			tbl_51_upvr.Assign(any_Create_result1, ItemData_3_upvr, arg1.Flag)
		else
			ItemData_3_upvr = {}
			local var513 = ItemData_3_upvr
			var475_upvr = "Select an item to see its details."
			var513.Text = var475_upvr
			var475_upvr = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, var513.Text, arg1.Flag, module_9_upvr.FontFaceItalic, module_9_upvr.TextColor4)
			local any_TextBoundsLabelCreate_result1_8, any_TextBoundsLabelCreate_result2 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, var513.Text, arg1.Flag, module_9_upvr.FontFaceItalic, module_9_upvr.TextColor4)
			var513.Label = any_TextBoundsLabelCreate_result1_8
			var513.Bounds = any_TextBoundsLabelCreate_result2
			any_TextBoundsLabelCreate_result1_8 = tbl_20_upvr.ComponentCreate(tbl_46, table_freeze_result1_upvr_3.Text, Enum.VerticalAlignment.Top, var513)
		end
		var513 = tbl_46.Components
		any_TextBoundsLabelCreate_result1_8 = nil
		for i_8, v_7 in var513, any_TextBoundsLabelCreate_result1_8 do
			if v_7.Tag then
				tbl_46.Component_ByTag[v_7.Tag] = v_7
			end
		end
		arg1.DetailsDisplay = tbl_46
	end
	if arg1.DetailsDisplay then
		local DetailsDisplay_5_upvr = arg1.DetailsDisplay
		local ItemDisplay_3 = DetailsDisplay_5_upvr.ItemDisplay
		var513 = DetailsDisplay_5_upvr.ItemTile
		local var518 = var513
		if var518 then
			any_TextBoundsLabelCreate_result1_8 = var518.ItemData
			local var519 = any_TextBoundsLabelCreate_result1_8
			if DetailsDisplay_5_upvr._SelectionPending and var518.Display then
				i_8 = module_33_upvr
				i_8 = arg1.SubWrapper
				if i_8.IsInterfaceSelected(i_8) then
					i_8 = any_CollectionUICreate_result1_upvr
					v_7 = var518.Display
					i_8 = v_7.Frame
					i_8.State.PendingSelection = i_8
				end
				DetailsDisplay_5_upvr._SelectionPending = false
			end
			if DetailsDisplay_5_upvr._QueryPet then
				i_8 = tbl_36_upvr
				i_8 = ItemDisplay_3
				v_7 = var518
				if i_8.AttemptSetModel(i_8, v_7) then
					DetailsDisplay_5_upvr._QueryPet = nil
				end
			end
			local var520 = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				i_8 = var518.CountDirty
				return i_8
			end
			if true or INLINED_8() then
				v_7 = var518.Count
				if 0 >= v_7 then
					i_8 = false
				else
					i_8 = true
				end
				if i_8 then
					v_7 = DetailsDisplay_5_upvr.Component_ByTag[table_freeze_result1_upvr.Price]
					if v_7 then
						var520 = true
						tbl_20_upvr.ComponentDestroy(DetailsDisplay_5_upvr, v_7)
						-- KONSTANTWARNING: GOTO [868] #597
					end
				else
					v_7 = module_30_upvr.GetItemCost(var519)
					local any_GetItemCost_result1_4, any_GetItemCost_result2_3 = module_30_upvr.GetItemCost(var519)
					if any_GetItemCost_result1_4 ~= module_30_upvr.TransactionType.Invalid then
						local var523_upvw
						if not var523_upvw then
							var520 = true
							local any_TextBoundsLabelCreate_result1_7, any_TextBoundsLabelCreate_result2_5 = module_22_upvr.TextBoundsLabelCreate(arg1.DetailsWrapper, module_9_upvr.FALLBACK_PRICE_STRING, arg1.Flag)
							local var526
							if any_GetItemCost_result1_4 == module_30_upvr.TransactionType.Currency then
								var526 = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
									Image = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Currency_ByCurrencyType, module_8_upvr.CurrencyType_ByItemType[module_30_upvr.ItemType_ByItemData[var519]]);
									Parent = arg1.DetailsWrapper;
								})
							end
							var523_upvw = tbl_20_upvr.ComponentCreate(DetailsDisplay_5_upvr, table_freeze_result1_upvr_3.Text, Enum.VerticalAlignment.Bottom, {
								Bounds = any_TextBoundsLabelCreate_result2_5;
								Icon = var526;
								Label = any_TextBoundsLabelCreate_result1_7;
								Text = module_9_upvr.FALLBACK_PRICE_STRING;
							}, table_freeze_result1_upvr.Price, true)
						end
						module_30_upvr.GeneratePriceStringAsync(function(arg1_6) -- Line 2428, Named "UpdatePriceComponent"
							--[[ Upvalues[2]:
								[1]: var523_upvw (read and write)
								[2]: DetailsDisplay_5_upvr (readonly)
							]]
							if var523_upvw.Text ~= arg1_6 then
								var523_upvw.Text = arg1_6
								var523_upvw.Label.Text = arg1_6
								DetailsDisplay_5_upvr.Dirty = true
							end
						end, module_9_upvr.FALLBACK_PRICE_STRING, any_GetItemCost_result1_4, any_GetItemCost_result2_3, 1, module_6_upvr.FormatNumberOptions_PriceAbbreviation)
					end
				end
			end
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				i_8 = var518.EquippedDirty
				return i_8
			end
			if DetailsDisplay_5_upvr or INLINED_9() then
				any_GetItemCost_result1_4 = tbl_36_upvr
				i_8 = any_GetItemCost_result1_4.EvaluateEquipped
				any_GetItemCost_result1_4 = ItemDisplay_3
				i_8(any_GetItemCost_result1_4, var518)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				i_8 = any_GetItemCost_result1_4.Dirty
				any_GetItemCost_result1_4 = module_13_upvr.LocalPetState
				return i_8
			end
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				i_8 = var518.CountDirty
				return i_8
			end
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				i_8 = var518.EquippedDirty
				return i_8
			end
			if true or INLINED_10() or INLINED_11() or INLINED_12() then
				any_GetItemCost_result1_4 = DetailsDisplay_5_upvr.Component_ByTag
				i_8 = any_GetItemCost_result1_4[table_freeze_result1_upvr.Action]
				if i_8 then
					any_GetItemCost_result1_4 = tbl_62_upvr.GetButtonDetails(var518)
					local any_GetButtonDetails_result1_2, any_GetButtonDetails_result2, any_GetButtonDetails_result3 = tbl_62_upvr.GetButtonDetails(var518)
					i_8.Button.Theme = any_GetButtonDetails_result1_2
					module_10_upvr.Button.SetText(i_8.Button, any_GetButtonDetails_result2)
					i_8.Button.Input.Enabled = any_GetButtonDetails_result3
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if true then
						module_10_upvr.Button.Refresh(i_8.Button, arg3)
					end
				end
				any_GetButtonDetails_result1_2 = DetailsDisplay_5_upvr.Component_ByTag
				i_8 = any_GetButtonDetails_result1_2[table_freeze_result1_upvr.CombinePets]
				if i_8 then
					any_GetButtonDetails_result1_2 = module_23_upvr.PetCanCombine
					local LocalPlayerState_2 = module_13_upvr.LocalPlayerState
					any_GetButtonDetails_result1_2 = any_GetButtonDetails_result1_2(var519, LocalPlayerState_2)
					if any_GetButtonDetails_result1_2 then
						LocalPlayerState_2 = module_10_upvr.Button.Themes.Attention
					else
						LocalPlayerState_2 = module_10_upvr.Button.Themes.Deactivated
					end
					i_8.Button.Theme = LocalPlayerState_2
					i_8.Button.Input.Enabled = any_GetButtonDetails_result1_2
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if true then
						module_10_upvr.Button.Refresh(i_8.Button, arg3)
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local function INLINED_13() -- Internal function, doesn't exist in bytecode
				i_8 = var518.ObscuredDirty
				return i_8
			end
			if true or INLINED_13() then
				any_GetButtonDetails_result1_2 = tbl_36_upvr
				i_8 = any_GetButtonDetails_result1_2.EvaluateObscured
				any_GetButtonDetails_result1_2 = ItemDisplay_3
				i_8(any_GetButtonDetails_result1_2, var518)
			end
			if var520 then
			end
		end
		var519 = DetailsDisplay_5_upvr.Components
		for _, v_8 in var519 do
			if v_8.Type == table_freeze_result1_upvr_3.Button then
				module_10_upvr.Button.Update(v_8.Button, arg3)
			end
		end
		var519 = DetailsDisplay_5_upvr.Dirty
		if var519 then
			var519 = false
			DetailsDisplay_5_upvr.Dirty = var519
		end
	end
	DetailsDisplay_5_upvr = module_22_upvr.TextBoundsFlagCheck(arg1.Flag)
	local var533 = DetailsDisplay_5_upvr
	if not var533 then
		var533 = arg1.DrawDirty
	end
	if true or var533 then
		var519 = any_CollectionUICreate_result1_upvr
		var518 = var519.Properties
		var519 = any_CollectionUICreate_result1_upvr.Properties
		var518 = var519.PadY
		local var534 = var518
		var519 = module_22_upvr.EmSize * tbl_63_upvr.WrapperSizeXEm // 1
		local var535 = any_CollectionUICreate_result1_upvr.Properties.CloseInsetY + var534
		local var536 = module_22_upvr.EmSize * tbl_63_upvr.DetailsInventoryPadEm // 1
		local var537 = module_22_upvr.EmSize * tbl_63_upvr.WrapperSizeYEm // 1 - var535 - var534
		local var538 = module_22_upvr.EmSize * tbl_63_upvr.DetailsSizeXEm // 1
		if arg1.DetailsDisplay then
			local DetailsDisplay_4 = arg1.DetailsDisplay
			local var540 = module_22_upvr.EmSize * tbl_63_upvr.TextSizeDetailsLargeEm // 1
			local var541 = var540 * 2
			local var542 = 0
			local ItemDisplay = DetailsDisplay_4.ItemDisplay
			local NameDisplay_2 = DetailsDisplay_4.NameDisplay
			if NameDisplay_2 then
				module_22_upvr.CachedTextBoundsUpdate(NameDisplay_2.NameBounds, NameDisplay_2.NameText, var540, var538)
				local minimum_3 = math.min(NameDisplay_2.NameBounds.Y, var541)
				NameDisplay_2.NameLabel.Position = UDim2.fromOffset((var538 * 0.5 - NameDisplay_2.NameBounds.X * 0.5) // 1, var542 + var541 - minimum_3)
				NameDisplay_2.NameLabel.Size = UDim2.fromOffset(NameDisplay_2.NameBounds.X, minimum_3)
				NameDisplay_2.NameStroke.Thickness = module_22_upvr.ScaledSize.StrokeVeryThin
			end
			local var546 = (var542) + (var541 + var534)
			local ItemDimsCalculate_result1_2 = ItemDimsCalculate_upvr(var538, tbl_63_upvr.DetailsItemDisplayEm)
			tbl_36_upvr.Resize(ItemDisplay, ItemDimsCalculate_result1_2)
			ItemDisplay.Frame.Position = UDim2.fromOffset((var538 * 0.5 - ItemDimsCalculate_result1_2.TileSize * 0.5) // 1, var546 + ItemDimsCalculate_result1_2.TileInset)
			local tbl_41 = {
				[false] = {};
				[true] = {};
			}
			local tbl_49 = {
				[false] = (var546) + (ItemDimsCalculate_result1_2.TileSizeInset + var534);
				[true] = var537 - var534;
			}
			for _, v_9 in DetailsDisplay_4.Components do
				local var550
				if var550 == table_freeze_result1_upvr_3.Button then
					var550 = module_22_upvr.SteppedSize.ButtonFancyX
					v_9.SizeX = var550
					var550 = module_22_upvr.SteppedSize.ButtonFancyY
					v_9.SizeY = var550
					var550 = v_9.Button.Button
					var550.Size = UDim2.fromOffset(v_9.SizeX, v_9.SizeY)
					var550 = module_10_upvr.Button.AdjustText
					var550(v_9.Button, nil, nil, nil, module_22_upvr.SteppedSize.ButtonFancyText)
				elseif v_9.Type == table_freeze_result1_upvr_3.Text then
					if v_9.Tag == table_freeze_result1_upvr.Price then
					end
					local var551 = var538
					local var552 = 0
					if v_9.Icon then
						var552 = var540 * (1 + tbl_63_upvr.IconPadFactor) // 1
						var551 -= var552
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
						v_9.Icon.Size = UDim2.fromOffset(var540, var540)
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_22_upvr.CachedTextBoundsConform(v_9.Bounds, v_9.Label, v_9.Text, var540, var551)
					v_9.SizeX = var552 + v_9.Bounds.X
					v_9.SizeY = v_9.Bounds.Y
				end
				if v_9.Alignment ~= Enum.VerticalAlignment.Bottom then
				else
				end
				table.insert(tbl_41[true], v_9)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if true then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					tbl_49[true] -= v_9.SizeY + var534
				end
			end
			for i_11, v_10 in tbl_41 do
				local var553 = tbl_49[i_11]
				for _, v_11 in v_10 do
					if v_11.Type == table_freeze_result1_upvr_3.Button then
						v_11.Button.Button.Position = UDim2.fromOffset((var538 * 0.5 - v_11.SizeX * 0.5) // 1, var553)
					elseif v_11.Type == table_freeze_result1_upvr_3.Text then
						local var554 = (var538 * 0.5 - v_11.SizeX * 0.5) // 1
						if v_11.Icon then
							local TextSize = v_11.Bounds.TextSize
							var554 -= TextSize * tbl_63_upvr.IconPadFactor // 1
							v_11.Icon.Position = UDim2.fromOffset(var554, var553 + (v_11.SizeY * 0.5 - TextSize * 0.5) // 1)
							var554 += TextSize * (1 + tbl_63_upvr.IconPadFactor) // 1
						end
						v_11.Label.Position = UDim2.fromOffset(var554, var553 + (v_11.SizeY * 0.5 - v_11.Bounds.Y * 0.5) // 1)
					end
				end
			end
		end
		if var533 then
			local var556 = 2 * var518.PadX
			local var557 = (var519) - (var538 + var556 + 2 * var536)
			local var558 = var557 + var556 + var536
			local ceiled_3 = math.ceil(module_22_upvr.ScaledSize.StrokeVeryThin)
			local var560 = var537 * tbl_63_upvr.DetailsDividerScaleY // 1
			arg1.DetailsWrapper.Position = UDim2.fromOffset(var558, var535)
			arg1.DetailsWrapper.Size = UDim2.fromOffset(var538, var537)
			arg1.DetailsDivider.Position = UDim2.fromOffset((var558) - (var536 + ceiled_3 * 0.5 // 1), var535 + (var537 * 0.5 - var560 * 0.5) // 1)
			arg1.DetailsDivider.Size = UDim2.fromOffset(ceiled_3, var560)
			local var561 = true
			if arg1.ListRegionX == var557 then
				if arg1.ListRegionY == var537 then
					var561 = false
				else
					var561 = true
				end
			end
			if var561 then
				local var562 = var556 * 0.5
				arg1.ListPosX = var562
				arg1.ListPosY = var535
				arg1.ListRegionX = var557
				arg1.ListRegionY = var537
				local SubWrapper_2 = arg1.SubWrapper
				if SubWrapper_2 then
					SubWrapper_2.Position = UDim2.fromOffset(arg1.ListPosX, arg1.ListPosY)
					SubWrapper_2.Size = UDim2.fromOffset(arg1.ListRegionX + var562, arg1.ListRegionY)
				end
				local var564 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_7_upvr.InventoryPanel]
				if var564 then
					tbl_2_upvr.DimensionsChanged(var564)
				end
			end
		end
	end
	var534 = any_CollectionUICreate_result1_upvr
	var534 = arg1
	var519 = arg2
	var534.CollectionUpdate_Display(var534, var519, arg3)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return var561
	end
	-- KONSTANTERROR: [69] 49. Error Block 274 end (CF ANALYSIS FAILED)
end
tbl_20_upvr.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryTiled] = tbl_20_upvr
local function Assign(arg1, arg2, arg3) -- Line 2795
	arg1.CountBounds.Flag = arg3
end
tbl_37_upvr.Assign = Assign
local function Create(arg1) -- Line 2806
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	local module_19 = {
		CountText = "";
	}
	local any_TextBoundsLabelCreate_result1_13, any_TextBoundsLabelCreate_result2_19 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_19.CountText, nil, nil, module_9_upvr.TextHighlightColor1)
	module_19.CountLabel = any_TextBoundsLabelCreate_result1_13
	module_19.CountBounds = any_TextBoundsLabelCreate_result2_19
	module_19.CountStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_9_upvr.TextStrokeColor1;
		Parent = module_19.CountLabel;
	})
	return module_19
end
tbl_37_upvr.Create = Create
local function Destroy(arg1) -- Line 2830
	arg1.CountLabel:Destroy()
end
tbl_37_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 2837
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.CountBounds, arg1.CountLabel, arg1.CountText, arg2.TextSizePriceY)
	arg1.CountLabel.Position = UDim2.fromOffset((arg2.TileSize) - (arg2.ItemInset + arg1.CountBounds.X), (arg2.TileSize) - (arg2.ItemInset + arg1.CountBounds.Y + arg2.TextSizePriceY))
	arg1.CountStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_37_upvr.Resize = Resize
function tbl_37_upvr.SetCount(arg1, arg2) -- Line 2855
	--[[ Upvalues[2]:
		[1]: tbl_73_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local var569
	if arg1.Count == arg2 then
		var569 = false
	else
		var569 = true
	end
	if var569 then
		arg1.Count = arg2
		arg1.CountText = string.format(tbl_73_upvr.Count, module_6_upvr.FormatNumber(arg2, module_6_upvr.FormatNumberOptions_BoostAbbreviation))
		arg1.CountLabel.Text = arg1.CountText
	end
	return var569
end
local function Assign(arg1, arg2, arg3) -- Line 2882
	--[[ Upvalues[2]:
		[1]: tbl_73_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	arg1.EnergyBounds.Flag = arg3
	local formatted = string.format(tbl_73_upvr.Energy, module_6_upvr.FormatNumber(arg2.EnergyMultiplier or 0, module_6_upvr.FormatNumberOptions_BoostAbbreviation))
	if arg1.EnergyText ~= formatted then
		arg1.EnergyText = formatted
		arg1.EnergyLabel.Text = arg1.EnergyText
	end
end
tbl_24_upvr.Assign = Assign
local function Create(arg1) -- Line 2905
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	local module_14 = {
		EnergyText = "";
	}
	local any_TextBoundsLabelCreate_result1_17, any_TextBoundsLabelCreate_result2_20 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_14.EnergyText, nil, nil, module_9_upvr.EnergyColor1)
	module_14.EnergyLabel = any_TextBoundsLabelCreate_result1_17
	module_14.EnergyBounds = any_TextBoundsLabelCreate_result2_20
	module_14.EnergyIcon = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_9_upvr.EnergyImage_Outline_256_16;
		Parent = arg1.Frame;
	})
	module_14.EnergyStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_9_upvr.TextStrokeColor1;
		Parent = module_14.EnergyLabel;
	})
	return module_14
end
tbl_24_upvr.Create = Create
local function Destroy(arg1) -- Line 2934
	arg1.EnergyIcon:Destroy()
	arg1.EnergyLabel:Destroy()
end
tbl_24_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 2942
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.EnergyBounds, arg1.EnergyLabel, arg1.EnergyText, arg2.TextSizePriceY)
	local var576 = (arg2.TileSize) - (arg2.ItemInset + arg1.EnergyBounds.X)
	local var577 = (arg2.TileSize) - (arg2.ItemInset + arg1.EnergyBounds.Y)
	arg1.EnergyLabel.Position = UDim2.fromOffset(var576, var577)
	arg1.EnergyIcon.Position = UDim2.fromOffset(var576 - arg2.CurrencySize, var577)
	arg1.EnergyIcon.Size = arg2.CurrencySizeUDim2
	arg1.EnergyStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_24_upvr.Resize = Resize
local function Create(arg1) -- Line 2970
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: tbl_63_upvr (readonly)
		[5]: tbl_36_upvr (readonly)
	]]
	local module_36 = {
		CheckmarkIcon = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
			AnchorPoint = Vector2.one;
			Image = module_9_upvr.Checkbox_Filled_Blurred_Glow;
			ImageColor3 = module_9_upvr.EnergyOuterRingIntenseColor;
			Position = UDim2.fromScale(1, 1);
			Size = UDim2.fromScale(tbl_63_upvr.CheckmarkScale, tbl_63_upvr.CheckmarkScale);
			ZIndex = tbl_36_upvr.ZIndexes.Checkmark;
			Parent = arg1.Frame;
		});
	}
	module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_9_upvr.Checkbox_Filled;
		ImageColor3 = module_9_upvr.EnergyInnerRingIntenseColor;
		Size = UDim2.fromScale(1, 1);
		Parent = module_36.CheckmarkIcon;
	})
	return module_36
end
tbl_79_upvr.Create = Create
local function Destroy(arg1) -- Line 2998
	arg1.CheckmarkIcon:Destroy()
end
tbl_79_upvr.Destroy = Destroy
local function Assign(arg1, arg2, arg3) -- Line 3009
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	tbl_7_upvr.Update(arg1, arg2)
end
tbl_7_upvr.Assign = Assign
local function Create(arg1) -- Line 3018
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: tbl_36_upvr (readonly)
	]]
	local module_16 = {
		Obscured = false;
		Image = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, module_22_upvr.Properties.Centered, {
			Image = module_9_upvr.FALLBACK_SHOP_IMAGE;
			ZIndex = tbl_36_upvr.ZIndexes.Item;
			Parent = arg1.Frame;
		});
		ImageCorner = module_6_upvr.I("UICorner", {
			Parent = module_16.Image;
		});
	}
	return module_16
end
tbl_7_upvr.Create = Create
local function Destroy(arg1) -- Line 3041
	arg1.Image:Destroy()
end
tbl_7_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 3048
	arg1.Image.Size = arg2.ItemSizeUDim2
	arg1.ImageCorner.CornerRadius = arg2.ItemCornerRadius
end
tbl_7_upvr.Resize = Resize
local function Update(arg1, arg2) -- Line 3057
	--[[ Upvalues[2]:
		[1]: module_9_upvr (readonly)
		[2]: module_30_upvr (readonly)
	]]
	local var584
	if arg1.Obscured then
		var584 = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Unowned_ByItemType, module_30_upvr.ItemType_ByItemData[arg2])
	else
		var584 = arg2.ShopImageId
	end
	local var585 = var584
	if not var585 then
		var585 = module_9_upvr.FALLBACK_SHOP_IMAGE
	end
	arg1.Image.Image = var585
end
tbl_7_upvr.Update = Update
tbl_36_upvr.ItemGradientProperties = {
	Rotation = 90;
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(0.25, 0.65), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(0.625, 1), NumberSequenceKeypoint.new(1, 0)});
}
tbl_36_upvr.StrokeGradientProperties = {
	Color = ColorSequence.new(module_9_upvr.TextStrokeColor2, module_9_upvr.TextStrokeColor3);
	Rotation = 45;
}
tbl_36_upvr.ZIndexes = {
	Checkmark = 3000;
	Cover = -1000;
	EnergyRing = 2000;
	Gradient = -1001;
	Item = -1002;
}
function tbl_36_upvr.GradientStrokeCreate(arg1) -- Line 3105
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: tbl_36_upvr (readonly)
	]]
	local tbl_72 = {
		Color = module_9_upvr.White;
	}
	tbl_72.Parent = arg1
	local any_I_result1 = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeBorder, tbl_72)
	module_6_upvr.I("UIGradient", tbl_36_upvr.StrokeGradientProperties, {
		Parent = any_I_result1;
	})
	return any_I_result1
end
local function Assign(arg1, arg2) -- Line 3121
	--[[ Upvalues[7]:
		[1]: tbl_37_upvr (readonly)
		[2]: tbl_24_upvr (readonly)
		[3]: tbl_17_upvr (readonly)
		[4]: tbl_44_upvr (readonly)
		[5]: tbl_61_upvr (readonly)
		[6]: tbl_7_upvr (readonly)
		[7]: tbl_51_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local ItemData_4 = arg2.ItemData
	local var594
	if var594 then
		var594 = arg2.TileRegion.TiledInventory.Flag
	end
	if arg1.ItemTile ~= arg2 then
		arg1.AssignDirty = true
		arg1.ItemTile = arg2
		if arg1.CountDisplay then
			tbl_37_upvr.Assign(arg1.CountDisplay, ItemData_4, var594)
		end
		if arg1.EnergyDisplay then
			tbl_24_upvr.Assign(arg1.EnergyDisplay, ItemData_4, var594)
		end
		if arg1.ModDisplay then
			tbl_17_upvr.Assign(arg1.ModDisplay, ItemData_4, var594)
		end
		if arg1.PriceDisplay then
			tbl_44_upvr.Assign(arg1.PriceDisplay, ItemData_4, arg1, var594)
		end
		if arg1.ViewportDisplay then
			tbl_61_upvr.SetModel(arg1.ViewportDisplay, nil)
		end
		if arg1.ImageDisplay then
			tbl_7_upvr.Assign(arg1.ImageDisplay, ItemData_4, var594)
		end
		if arg1.NameDisplay then
			tbl_51_upvr.Assign(arg1.NameDisplay, ItemData_4, var594)
		end
	end
	if true then
		arg1.DrawDirty = true
	end
end
tbl_36_upvr.Assign = Assign
local module_25_upvr = require(Modules:WaitForChild("BUPGameClient"))
function tbl_36_upvr.AttemptSetModel(arg1, arg2) -- Line 3193
	--[[ Upvalues[4]:
		[1]: module_30_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_25_upvr (readonly)
		[4]: tbl_61_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local var596 = "Missing ViewportDisplay"
	local assert_result1 = assert(arg1.ViewportDisplay, var596)
	if assert_result1.Model ~= nil then
		var596 = false
	else
		var596 = true
	end
	assert(var596, "Already populated")
	local ItemType_2 = module_8_upvr.ItemType
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [64] 45. Error Block 8 start (CF ANALYSIS FAILED)
	ItemType_2:PivotTo(assert_result1.Offset * tbl_61_upvr.Properties.PetOrientation)
	do
		return true
	end
	-- KONSTANTERROR: [64] 45. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 54. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 54. Error Block 9 end (CF ANALYSIS FAILED)
end
local function Create(arg1) -- Line 3243
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: tbl_36_upvr (readonly)
		[4]: module_22_upvr (readonly)
	]]
	local module_18 = {
		AssignDirty = false;
		DrawDirty = true;
		Obscured = false;
	}
	local tbl_55 = {
		BackgroundColor3 = module_9_upvr.BackgroundColor1;
	}
	tbl_55.Parent = arg1
	module_18.Frame = module_6_upvr.I("Frame", tbl_55)
	module_18.FrameCorner = module_6_upvr.I("UICorner", {
		Parent = module_18.Frame;
	})
	module_18.FrameStroke = tbl_36_upvr.GradientStrokeCreate(module_18.Frame)
	module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_9_upvr.ShopBubble_Soft_512;
		ScaleType = Enum.ScaleType.Stretch;
		Size = UDim2.fromScale(1, 1);
		ZIndex = tbl_36_upvr.ZIndexes.Cover;
		Parent = module_18.Frame;
	})
	return module_18
end
tbl_36_upvr.Create = Create
local function Destroy(arg1) -- Line 3280
	--[[ Upvalues[6]:
		[1]: tbl_37_upvr (readonly)
		[2]: tbl_24_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
		[4]: tbl_51_upvr (readonly)
		[5]: tbl_44_upvr (readonly)
		[6]: tbl_61_upvr (readonly)
	]]
	arg1.ItemTile = nil
	if arg1.CountDisplay then
		tbl_37_upvr.Destroy(arg1.CountDisplay)
		arg1.CountDisplay = nil
	end
	if arg1.EnergyDisplay then
		tbl_24_upvr.Destroy(arg1.EnergyDisplay)
		arg1.EnergyDisplay = nil
	end
	if arg1.ImageDisplay then
		tbl_7_upvr.Destroy(arg1.ImageDisplay)
		arg1.ImageDisplay = nil
	end
	if arg1.NameDisplay then
		tbl_51_upvr.Destroy(arg1.NameDisplay)
		arg1.NameDisplay = nil
	end
	if arg1.PriceDisplay then
		tbl_44_upvr.Destroy(arg1.PriceDisplay)
		arg1.PriceDisplay = nil
	end
	if arg1.ViewportDisplay then
		tbl_61_upvr.Destroy(arg1.ViewportDisplay)
		arg1.ViewportDisplay = nil
	end
	arg1.Frame:Destroy()
end
tbl_36_upvr.Destroy = Destroy
function tbl_36_upvr.EvaluateCount(arg1, arg2, arg3) -- Line 3314
	--[[ Upvalues[1]:
		[1]: tbl_37_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 35. Error Block 11 start (CF ANALYSIS FAILED)
	arg1.DrawDirty = true
	do
		return
	end
	-- KONSTANTERROR: [50] 35. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 38. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1.CountDisplay then
		tbl_37_upvr.Destroy(arg1.CountDisplay)
		arg1.CountDisplay = nil
	end
	-- KONSTANTERROR: [54] 38. Error Block 15 end (CF ANALYSIS FAILED)
end
function tbl_36_upvr.EvaluateEquipped(arg1, arg2) -- Line 3362
	--[[ Upvalues[1]:
		[1]: tbl_79_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.EquippedDisplay = tbl_79_upvr.Create(arg1)
	do
		return
	end
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.EquippedDisplay then
		tbl_79_upvr.Destroy(arg1.EquippedDisplay)
		arg1.EquippedDisplay = nil
	end
	-- KONSTANTERROR: [14] 11. Error Block 7 end (CF ANALYSIS FAILED)
end
function tbl_36_upvr.EvaluateObscured(arg1, arg2) -- Line 3381
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: tbl_51_upvr (readonly)
	]]
	local Obscured_2 = arg2.Obscured
	if arg1.ImageDisplay and arg1.ImageDisplay.Obscured ~= Obscured_2 then
		arg1.ImageDisplay.Obscured = Obscured_2
		tbl_7_upvr.Update(arg1.ImageDisplay, arg2.ItemData)
	end
	if arg1.NameDisplay and arg1.NameDisplay.Obscured ~= Obscured_2 then
		arg1.NameDisplay.Obscured = Obscured_2
		if tbl_51_upvr.Update(arg1.NameDisplay, arg2.ItemData) then
			arg1.DrawDirty = true
		end
	end
end
function tbl_36_upvr.EvaluateOwned(arg1, arg2, arg3) -- Line 3406
	--[[ Upvalues[2]:
		[1]: tbl_44_upvr (readonly)
		[2]: module_30_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 19 start (CF ANALYSIS FAILED)
	if 0 >= arg2.Count then
	else
	end
	-- KONSTANTERROR: [3] 3. Error Block 19 end (CF ANALYSIS FAILED)
end
local function Resize(arg1, arg2) -- Line 3455
	--[[ Upvalues[7]:
		[1]: tbl_37_upvr (readonly)
		[2]: tbl_24_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
		[4]: tbl_17_upvr (readonly)
		[5]: tbl_51_upvr (readonly)
		[6]: tbl_44_upvr (readonly)
		[7]: tbl_61_upvr (readonly)
	]]
	arg1.Frame.Size = arg2.TileSizeUDim2
	arg1.FrameCorner.CornerRadius = arg2.TileCornerRadius
	arg1.FrameStroke.Thickness = arg2.TileStrokeThickness
	if arg1.CountDisplay then
		tbl_37_upvr.Resize(arg1.CountDisplay, arg2)
	end
	if arg1.EnergyDisplay then
		tbl_24_upvr.Resize(arg1.EnergyDisplay, arg2)
	end
	if arg1.ImageDisplay then
		tbl_7_upvr.Resize(arg1.ImageDisplay, arg2)
	end
	if arg1.ModDisplay then
		tbl_17_upvr.Resize(arg1.ModDisplay, arg2)
	end
	if arg1.NameDisplay then
		tbl_51_upvr.Resize(arg1.NameDisplay, arg2)
	end
	if arg1.PriceDisplay then
		tbl_44_upvr.Resize(arg1.PriceDisplay, arg2)
	end
	if arg1.ViewportDisplay then
		tbl_61_upvr.Resize(arg1.ViewportDisplay, arg2)
	end
end
tbl_36_upvr.Resize = Resize
local function Assign(arg1, arg2, arg3) -- Line 3492
	--[[ Upvalues[1]:
		[1]: module_23_upvr (readonly)
	]]
	arg1.ModBounds.Flag = arg3
	local var605 = module_23_upvr.Colors.PetSizeMod_ByMod[arg2.SizeMod]
	local var606 = module_23_upvr.FrontEndNames.PetSizeMod_ByMod[arg2.SizeMod]
	if var605 and var606 then
		arg1.ModLabel.TextColor3 = var605
		local string_sub_result1 = string.sub(var606, 1, 1)
		if arg1.ModText ~= string_sub_result1 then
			arg1.ModText = string_sub_result1
			arg1.ModLabel.Text = arg1.ModText
		end
	end
end
tbl_17_upvr.Assign = Assign
local function Create(arg1) -- Line 3516
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_9_upvr (readonly)
	]]
	local module_12 = {
		ModText = "";
	}
	local any_TextBoundsLabelCreate_result1_23, any_TextBoundsLabelCreate_result2_18 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_12.ModText)
	module_12.ModLabel = any_TextBoundsLabelCreate_result1_23
	module_12.ModBounds = any_TextBoundsLabelCreate_result2_18
	module_12.ModStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_9_upvr.TextStrokeColor1;
		Parent = module_12.ModLabel;
	})
	return module_12
end
tbl_17_upvr.Create = Create
local function Destroy(arg1) -- Line 3537
	arg1.ModLabel:Destroy()
end
tbl_17_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 3544
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.ModBounds, arg1.ModLabel, arg1.ModText, arg2.TextSizePriceY * 1.5 // 1)
	arg1.ModLabel.Position = UDim2.fromOffset(arg2.ItemInset * 2, (arg2.TileSize) - (arg2.ItemInset + arg1.ModBounds.Y))
	arg1.ModStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_17_upvr.Resize = Resize
local function Assign(arg1, arg2, arg3) -- Line 3566
	--[[ Upvalues[1]:
		[1]: tbl_51_upvr (readonly)
	]]
	arg1.NameBounds.Flag = arg3
	tbl_51_upvr.Update(arg1, arg2)
end
tbl_51_upvr.Assign = Assign
local function Create(arg1) -- Line 3577
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_9_upvr (readonly)
	]]
	local module_31 = {
		Obscured = false;
		NameText = "";
	}
	local var613 = arg1
	if var613 then
		var613 = arg1.Frame
	end
	local any_TextBoundsLabelCreate_result1_20, any_TextBoundsLabelCreate_result2_8 = module_22_upvr.TextBoundsLabelCreate(var613, module_31.NameText)
	module_31.NameLabel = any_TextBoundsLabelCreate_result1_20
	module_31.NameBounds = any_TextBoundsLabelCreate_result2_8
	module_31.NameLabel.TextScaled = true
	module_31.NameStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_9_upvr.TextStrokeColor1;
		Parent = module_31.NameLabel;
	})
	return module_31
end
tbl_51_upvr.Create = Create
local function Destroy(arg1) -- Line 3602
	arg1.NameLabel:Destroy()
end
tbl_51_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 3609
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.NameBounds, arg1.NameLabel, arg1.NameText, arg2.TextSizeNameY, arg2.TileTextSizeX)
	arg1.NameLabel.Position = UDim2.fromOffset((arg2.TileSize * 0.5 - arg1.NameBounds.X * 0.5) // 1, arg2.TileTextInset)
	arg1.NameStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_51_upvr.Resize = Resize
local function Update(arg1, arg2) -- Line 3628
	--[[ Upvalues[3]:
		[1]: module_30_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: tbl_73_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var617
	if arg1.Obscured then
		var617 = string.format(tbl_73_upvr.Obscured, module_9_upvr.FrontEndNames.Items_ByItemType[module_30_upvr.ItemType_ByItemData[arg2]].Singular.Proper)
	else
		var617 = arg2.Name
	end
	if arg1.NameText ~= var617 then
		arg1.NameText = var617
		arg1.NameLabel.Text = var617
	end
	return true
end
tbl_51_upvr.Update = Update
local function Assign(arg1, arg2, arg3, arg4) -- Line 3666
	--[[ Upvalues[4]:
		[1]: module_30_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_8_upvr (readonly)
	]]
	arg1.PriceBounds.Flag = arg4
	arg1._Count += 1
	local any_GetItemCost_result1_2, any_GetItemCost_result2 = module_30_upvr.GetItemCost(arg2)
	local _Count_upvr = arg1._Count
	module_30_upvr.GeneratePriceStringAsync(function(arg1_7) -- Line 3681, Named "UpdatePriceText"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: _Count_upvr (readonly)
			[3]: arg3 (readonly)
		]]
		if arg1._Count ~= _Count_upvr then
		elseif arg1.PriceText ~= arg1_7 then
			arg1.PriceText = arg1_7
			arg1.PriceLabel.Text = arg1_7
			arg3.DrawDirty = true
		end
	end, module_9_upvr.FALLBACK_PRICE_STRING, any_GetItemCost_result1_2, any_GetItemCost_result2, 1, module_6_upvr.FormatNumberOptions_PriceAbbreviation)
	local var621
	if any_GetItemCost_result1_2 == module_30_upvr.TransactionType.Currency then
		var621 = module_8_upvr.CurrencyType_ByItemType[module_30_upvr.ItemType_ByItemData[arg2]]
	end
	local var622
	if arg1.CurrencyType ~= var621 then
		arg1.CurrencyType = var621
		if var621 == nil then
			var622 = false
		else
			var622 = true
		end
		arg1.CurrencyIcon.Visible = var622
		if var621 then
			var622 = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Currency_ByCurrencyType, var621, module_9_upvr.ImageMapStyle.OutlineHeavy)
			arg1.CurrencyIcon.Image = var622
		end
	end
end
tbl_44_upvr.Assign = Assign
local function Create(arg1) -- Line 3730
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_9_upvr (readonly)
	]]
	local module_27 = {
		_Count = 0;
		CurrencyType = nil;
		PriceText = "";
	}
	local any_TextBoundsLabelCreate_result1_9, any_TextBoundsLabelCreate_result2_10 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_27.PriceText)
	module_27.PriceLabel = any_TextBoundsLabelCreate_result1_9
	module_27.PriceBounds = any_TextBoundsLabelCreate_result2_10
	module_27.PriceStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_9_upvr.TextStrokeColor1;
		Parent = module_27.PriceLabel;
	})
	local tbl_65 = {}
	local var628 = ""
	tbl_65.Image = var628
	if module_27.CurrencyType == nil then
		var628 = false
	else
		var628 = true
	end
	tbl_65.Visible = var628
	tbl_65.Parent = arg1.Frame
	module_27.CurrencyIcon = module_6_upvr.I("ImageLabel", module_22_upvr.Properties.Image, tbl_65)
	return module_27
end
tbl_44_upvr.Create = Create
local function Destroy(arg1) -- Line 3763
	arg1.CurrencyIcon:Destroy()
	arg1.PriceLabel:Destroy()
end
tbl_44_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 3771
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	local CachedTextBoundsConform = module_22_upvr.CachedTextBoundsConform
	CachedTextBoundsConform(arg1.PriceBounds, arg1.PriceLabel, arg1.PriceText, arg2.TextSizePriceY, arg2.PriceSizeX)
	local var630
	if var630 == nil then
		CachedTextBoundsConform = false
	else
		CachedTextBoundsConform = true
	end
	if CachedTextBoundsConform then
		var630 = arg2.CurrencyInset
	else
		var630 = 0
	end
	local var631 = (arg2.TileSize * 0.5 - (var630 + arg1.PriceBounds.X) * 0.5) // 1
	local var632 = arg2.TileSize - arg2.TileTextInset - arg1.PriceBounds.Y
	if CachedTextBoundsConform then
		arg1.CurrencyIcon.Position = UDim2.fromOffset(var631, var632 + (arg1.PriceBounds.Y * 0.5 - arg2.CurrencySize * 0.5) // 1)
		arg1.CurrencyIcon.Size = arg2.CurrencySizeUDim2
	end
	arg1.PriceLabel.Position = UDim2.fromOffset(var631 + var630, var632)
	arg1.PriceStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_44_upvr.Resize = Resize
tbl_54_upvr.DefaultTheme = module_10_upvr.Button.Themes.Floating
local assert_result1_3 = assert(tbl_54_upvr.DefaultTheme.Idle)
if assert_result1_3 then
	assert_result1_3 = assert(tbl_54_upvr.DefaultTheme.Idle.Color)
end
tbl_54_upvr.DefaultColor = assert_result1_3
function tbl_54_upvr.Assign(arg1, arg2, arg3) -- Line 3817
	--[[ Upvalues[12]:
		[1]: module_30_upvr (readonly)
		[2]: tbl_24_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
		[5]: tbl_17_upvr (readonly)
		[6]: tbl_61_upvr (readonly)
		[7]: tbl_51_upvr (readonly)
		[8]: tbl_36_upvr (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: module_10_upvr (readonly)
		[11]: module_17_upvr (readonly)
		[12]: module_34_upvr (readonly)
	]]
	local ItemData_5 = arg3.ItemData
	if arg1.ItemTile ~= arg3 then
		if arg1.ItemTile then
			arg1.ItemTile.Display = nil
		end
		arg3.Display = arg1
		if ItemData_5.EnergyMultiplier then
			if not arg1.EnergyDisplay then
				arg1.EnergyDisplay = tbl_24_upvr.Create(arg1)
				-- KONSTANTWARNING: GOTO [46] #31
			end
		elseif arg1.EnergyDisplay then
			tbl_24_upvr.Destroy(arg1.EnergyDisplay)
			arg1.EnergyDisplay = nil
		end
		if module_30_upvr.ItemType_ByItemData[ItemData_5] == module_8_upvr.ItemType.Pet then
			if arg1.ImageDisplay then
				tbl_7_upvr.Destroy(arg1.ImageDisplay)
				arg1.ImageDisplay = nil
			end
			if not arg1.ModDisplay then
				arg1.ModDisplay = tbl_17_upvr.Create(arg1)
			end
			if not arg1.ViewportDisplay then
				arg1.ViewportDisplay = tbl_61_upvr.Create(arg1)
				-- KONSTANTWARNING: GOTO [120] #81
			end
		else
			if arg1.ModDisplay then
				tbl_17_upvr.Destroy(arg1.ModDisplay)
				arg1.ModDisplay = nil
			end
			if arg1.ViewportDisplay then
				tbl_61_upvr.Destroy(arg1.ViewportDisplay)
				arg1.ViewportDisplay = nil
			end
			if not arg1.ImageDisplay then
				arg1.ImageDisplay = tbl_7_upvr.Create(arg1)
			end
		end
	end
	if not arg1.NameDisplay then
		arg1.NameDisplay = tbl_51_upvr.Create(arg1)
	end
	tbl_36_upvr.EvaluateCount(arg1, arg3)
	tbl_36_upvr.EvaluateEquipped(arg1, arg3)
	tbl_36_upvr.EvaluateObscured(arg1, arg3)
	tbl_36_upvr.EvaluateOwned(arg1, arg3)
	arg3.CountDirty = false
	arg3.EquippedDirty = false
	arg3.ObscuredDirty = false
	tbl_36_upvr.Assign(arg1, arg3)
	local var639
	if arg1.AssignDirty then
		if arg1.ViewportDisplay then
			tbl_36_upvr.AttemptSetModel(arg1, arg3)
		end
		if GuiService_upvr.SelectedObject == arg1.Frame then
			GuiService_upvr.SelectedObject = nil
			if arg3.TileRegion then
				var639 = arg3.TileRegion
				GuiService_upvr:Select(var639.TiledInventory.ScrollingFrame)
			end
		end
		module_10_upvr.Input.Release(arg1.Input)
		local var640 = false
		if arg1.ItemTile ~= nil then
			var640 = arg1.ItemTile.Selected
		end
		if var640 then
			var639 = module_10_upvr.ButtonState.Selected
		else
			var639 = nil
		end
		local any_GetThemeFromInput_result1 = module_10_upvr.GetThemeFromInput(arg1.Input, arg1.Theme, var639)
		if any_GetThemeFromInput_result1 and any_GetThemeFromInput_result1.Color then
			var639 = arg2
			module_17_upvr.Reset(arg1.ColorTween, var639, any_GetThemeFromInput_result1.Color)
			if arg1.ColorTween.Dirty then
				var639 = arg1.ColorTween
				arg1.Frame.BackgroundColor3 = var639.Value
			end
		end
		if arg1.EnergyRing then
			var639 = module_34_upvr
			var639.EnergyRing.Destroy(arg1.EnergyRing)
			arg1.EnergyRing = nil
		end
	end
end
local function Create(arg1) -- Line 3943
	--[[ Upvalues[7]:
		[1]: tbl_36_upvr (readonly)
		[2]: tbl_54_upvr (readonly)
		[3]: module_33_upvr (readonly)
		[4]: module_17_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: module_6_upvr (readonly)
		[7]: tbl_62_upvr (readonly)
	]]
	local any_Create_result1_2 = tbl_36_upvr.Create(arg1)
	any_Create_result1_2.Frame.BackgroundColor3 = tbl_54_upvr.DefaultColor
	any_Create_result1_2.Frame.Selectable = true
	any_Create_result1_2.Frame.Active = true
	any_Create_result1_2.Frame:AddTag(module_33_upvr.IgnoreSelectionTag)
	local any_TableMerge_result1_6_upvr = module_6_upvr.TableMerge({
		Theme = tbl_54_upvr.DefaultTheme;
		ColorTween = module_17_upvr.new(tbl_54_upvr.DefaultColor, 0.375, Enum.EasingStyle.Quad);
		Input = module_10_upvr.Input.Create(any_Create_result1_2.Frame);
	}, any_Create_result1_2)
	any_TableMerge_result1_6_upvr.Input.ActivatedCallback = function() -- Line 3967
		--[[ Upvalues[2]:
			[1]: any_TableMerge_result1_6_upvr (readonly)
			[2]: tbl_62_upvr (copied, readonly)
		]]
		if any_TableMerge_result1_6_upvr.ItemTile then
			tbl_62_upvr.Select(any_TableMerge_result1_6_upvr.ItemTile)
		end
	end
	return any_TableMerge_result1_6_upvr
end
tbl_54_upvr.Create = Create
local function Destroy(arg1) -- Line 3978
	--[[ Upvalues[2]:
		[1]: module_10_upvr (readonly)
		[2]: tbl_36_upvr (readonly)
	]]
	if arg1.ItemTile then
		arg1.ItemTile.Display = nil
	end
	module_10_upvr.Input.Destroy(arg1.Input)
	tbl_36_upvr.Destroy(arg1)
end
tbl_54_upvr.Destroy = Destroy
local function Resize(arg1, arg2) -- Line 3991
	--[[ Upvalues[2]:
		[1]: tbl_36_upvr (readonly)
		[2]: module_34_upvr (readonly)
	]]
	tbl_36_upvr.Resize(arg1, arg2)
	if arg1.EnergyRing then
		module_34_upvr.EnergyRing.Resize(arg1.EnergyRing, arg2.TileCornerRadius.Offset)
	end
end
tbl_54_upvr.Resize = Resize
local function Update(arg1, arg2, arg3) -- Line 4006
	--[[ Upvalues[2]:
		[1]: tbl_36_upvr (readonly)
		[2]: module_34_upvr (readonly)
	]]
	local var650 = false
	local var651
	if var651 then
		var651 = arg1.ItemTile
		var650 = var651.Selected
		if var651.CountDirty then
			tbl_36_upvr.EvaluateCount(arg1, var651, true)
			tbl_36_upvr.EvaluateOwned(arg1, var651, true)
			var651.CountDirty = false
		end
		if var651.EquippedDirty then
			tbl_36_upvr.EvaluateEquipped(arg1, var651)
			var651.EquippedDirty = false
		end
		if var651.ObscuredDirty then
			tbl_36_upvr.EvaluateObscured(arg1, var651)
			var651.ObscuredDirty = false
		end
	end
	var651 = arg1.EnergyRing
	if var650 then
		if not var651 then
			arg1.DrawDirty = true
			local any_Create_result1_5 = module_34_upvr.EnergyRing.Create({
				ZIndex = tbl_36_upvr.ZIndexes.EnergyRing;
				Parent = arg1.Frame;
			})
			if arg1.AssignDirty then
				any_Create_result1_5.Intensity = 1
			end
			arg1.EnergyRing = any_Create_result1_5
			var651 = any_Create_result1_5
		end
		if var651 then
			var651.DecayRate = -20
			-- KONSTANTWARNING: GOTO [105] #75
		end
	elseif var651 then
		var651.Intensity = math.min(var651.Intensity, 1)
		var651.DecayRate = 2
	end
	if var651 then
		module_34_upvr.EnergyRing.Update(var651, arg2)
		if var651.Intensity == 0 then
			module_34_upvr.EnergyRing.Destroy(var651)
			arg1.EnergyRing = nil
		end
	end
end
tbl_54_upvr.Update = Update
local function Create(arg1, arg2) -- Line 4089
	local module = {}
	module.TiledInventory = arg1
	module.AlwaysDisplay = false
	module.CenterLastRow = false
	module.DrawDirty = false
	module.ObscureUnowned = false
	module.SortDirty = false
	module.MenuText = arg2
	module.HeaderExtentsY = 0
	module.HeaderPosY = 0
	module.TilesExtentsY = 0
	module.TilesPosY = 0
	module.ItemTiles = {}
	return module
end
tbl_60_upvr.Create = Create
local function Destroy(arg1) -- Line 4116
	--[[ Upvalues[1]:
		[1]: tbl_62_upvr (readonly)
	]]
	for i_13 = #arg1.ItemTiles, 1, -1 do
		tbl_62_upvr.Destroy(arg1.ItemTiles[i_13])
	end
end
tbl_60_upvr.Destroy = Destroy
function tbl_60_upvr.AddItemTile(arg1, arg2) -- Line 4129
	--[[ Upvalues[1]:
		[1]: tbl_60_upvr (readonly)
	]]
	local TileRegion = arg2.TileRegion
	if TileRegion then
		if TileRegion == arg1 then return end
		tbl_60_upvr.RemoveItemTile(TileRegion, arg2)
	end
	arg2.TileRegion = arg1
	arg1.SortDirty = true
	arg1.ItemTiles[#arg1.ItemTiles + 1] = arg2
end
function tbl_60_upvr.RemoveItemTile(arg1, arg2) -- Line 4150
	if arg2.TileRegion ~= arg1 then
	else
		arg1.DrawDirty = true
		arg2.TileRegion = nil
		local table_find_result1_3 = table.find(arg1.ItemTiles, arg2)
		if table_find_result1_3 then
			table.remove(arg1.ItemTiles, table_find_result1_3)
		end
	end
end
tbl_61_upvr.Properties = {
	LightDirection = CFrame.Angles(-1.0471975511965976, 0.2617993877991494, 0).LookVector;
	PetBoundingBoxInfluence = 0.25;
	PetOrientation = CFrame.Angles(0.07853981633974483, 3.5342917352885173, -0.039269908169872414);
	PetMinDistance = 4;
}
local function Create(arg1) -- Line 4184
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: tbl_61_upvr (readonly)
		[5]: tbl_36_upvr (readonly)
	]]
	local module_24 = {
		Offset = CFrame.identity;
		Camera = Instance.new("Camera");
		ViewportFrame = module_6_upvr.I("ViewportFrame", module_22_upvr.Properties.Centered, {
			Ambient = Color3.fromRGB(208, 216, 217);
			BackgroundTransparency = 1;
			CurrentCamera = module_24.Camera;
			LightColor = module_9_upvr.White;
			LightDirection = tbl_61_upvr.Properties.LightDirection;
			ZIndex = tbl_36_upvr.ZIndexes.Item;
			Parent = arg1.Frame;
		});
		ViewportFrameCorner = module_6_upvr.I("UICorner", {
			Parent = module_24.ViewportFrame;
		});
	}
	return module_24
end
tbl_61_upvr.Create = Create
local function Destroy(arg1) -- Line 4211
	if arg1.Model then
		arg1.Model:Destroy()
		arg1.Model = nil
	end
	arg1.ViewportFrame:Destroy()
	arg1.Camera:Destroy()
end
tbl_61_upvr.Destroy = Destroy
function tbl_61_upvr.Resize(arg1, arg2) -- Line 4224
	arg1.ViewportFrame.Size = arg2.ItemSizeUDim2
	arg1.ViewportFrameCorner.CornerRadius = arg2.ItemCornerRadius
end
function tbl_61_upvr.SetModel(arg1, arg2, arg3, arg4) -- Line 4233
	--[[ Upvalues[4]:
		[1]: module_17_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: module_9_upvr (readonly)
	]]
	if arg1.Model == arg2 then
	else
		if arg1.Model then
			arg1.Model:Destroy()
			arg1.Model = nil
		end
		if arg2 then
			if arg1.LoadingLabel then
				arg1.LoadingLabel:Destroy()
				arg1.LoadingLabel = nil
			end
			arg1.Model = arg2
			arg2.Parent = arg1.ViewportFrame
			local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg2:GetBoundingBox()
			arg1.Offset = any_GetBoundingBox_result1:ToObjectSpace(arg2:GetPivot())
			local Camera = arg1.Camera
			local var665 = any_GetBoundingBox_result2.Magnitude * 0.5 / math.tan(math.rad(Camera.FieldOfView) * 0.5)
			if arg3 then
				if var665 < arg3 then
					var665 = arg3
				elseif arg4 then
					var665 = module_17_upvr.Lerp(arg3, var665, arg4)
				end
			end
			Camera.CFrame = CFrame.new(0, 0, var665)
			return
		end
		if not arg1.LoadingLabel then
			arg1.LoadingLabel = module_6_upvr.I("TextLabel", module_22_upvr.Properties.Text_Scaled, module_22_upvr.Properties.Centered, {
				FontFace = module_9_upvr.FontFaceItalic;
				Size = UDim2.fromScale(0.75, 0.25);
				Text = "Loading...";
				TextColor3 = module_9_upvr.TextColor1;
				TextTransparency = module_9_upvr.TextDeemphasizedTransparency1;
				Parent = arg1.ViewportFrame;
			})
		end
	end
end
function tbl_62_upvr.Create(arg1) -- Line 4299
	--[[ Upvalues[1]:
		[1]: module_30_upvr (readonly)
	]]
	local module_29 = {
		_DrawPosX = 0;
		_DrawPosY = 0;
	}
	module_29.ItemData = arg1
	module_29.Count = 0
	module_29.CountDirty = false
	module_29.Equipped = false
	module_29.EquippedDirty = false
	module_29.Obscured = false
	module_29.ObscuredDirty = false
	module_29.Selected = false
	module_29.ExtentsY = 0
	module_29.PosX = 0
	module_29.PosY = 0
	return module_29
end
local function Destroy(arg1) -- Line 4327
	--[[ Upvalues[1]:
		[1]: tbl_60_upvr (readonly)
	]]
	arg1.Display = nil
	if arg1.TileRegion then
		local TiledInventory_2 = arg1.TileRegion.TiledInventory
		if TiledInventory_2.PendingTile == arg1 then
			TiledInventory_2.PendingTile = nil
		end
		if TiledInventory_2.SelectedTile == arg1 then
			TiledInventory_2.SelectedTile = nil
		end
		tbl_60_upvr.RemoveItemTile(arg1.TileRegion, arg1)
	end
end
tbl_62_upvr.Destroy = Destroy
function tbl_62_upvr.GetButtonDetails(arg1) -- Line 4348
	--[[ Upvalues[4]:
		[1]: module_10_upvr (readonly)
		[2]: module_30_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_13_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local var669
	if 0 >= arg1.Count then
		var669 = false
	else
		var669 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [59] 41. Error Block 9 start (CF ANALYSIS FAILED)
	do
		return module_10_upvr.Button.Themes.Deactivated, nil, false
	end
	-- KONSTANTERROR: [59] 41. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 47. Error Block 17 start (CF ANALYSIS FAILED)
	local any_GetItemCost_result1 = module_30_upvr.GetItemCost(arg1.ItemData)
	if any_GetItemCost_result1 == module_30_upvr.TransactionType.Invalid then
		return module_10_upvr.Button.Themes.Deactivated, "UNAVAILABLE", false
	end
	if any_GetItemCost_result1 == module_30_upvr.TransactionType.Currency then
	end
	-- KONSTANTERROR: [68] 47. Error Block 17 end (CF ANALYSIS FAILED)
end
function tbl_62_upvr.Select(arg1) -- Line 4407
	if arg1.TileRegion == nil then
	else
		local TiledInventory = arg1.TileRegion.TiledInventory
		if TiledInventory.SelectedTile ~= arg1 then
			if TiledInventory.SelectedTile then
				TiledInventory.SelectedTile.Selected = false
			end
			arg1.Selected = true
			TiledInventory.SelectedTile = arg1
		end
	end
end
function tbl_11_upvr.AttemptSelection(arg1, arg2, arg3) -- Line 4436
	arg1.PendingItemData = arg2
	arg1.PendingEquipped = arg3
end
local function Initialize(arg1, arg2) -- Line 4446
	--[[ Upvalues[5]:
		[1]: module_22_upvr (readonly)
		[2]: module_33_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	local tbl_15 = {
		_Connections = {};
		CanvasPosY = 0;
		SelectedObjectDirty = false;
		SizeX = 0;
		Flag = module_22_upvr.TextBoundsFlagCreate();
		TileDisplays = {};
		TileRegions = {};
	}
	local tbl_6 = {}
	tbl_6.NextSelectionUp = arg2
	tbl_6.Parent = arg1.Wrapper
	tbl_15.ScrollingFrame = module_33_upvr.CreateAndRegisterScrollingFrame(module_22_upvr.Properties.ScrollingFrame_Vertical, module_9_upvr.ScrollBarStyles.RoundThreeQuarterFull, tbl_6)
	tbl_15.ScrollingFrame:AddTag(module_33_upvr.IgnoreSelectionTag)
	local any_TableMerge_result1_2_upvr = module_6_upvr.TableMerge(tbl_15, arg1)
	any_TableMerge_result1_2_upvr._Connections[#any_TableMerge_result1_2_upvr._Connections + 1] = GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(function() -- Line 4484
		--[[ Upvalues[1]:
			[1]: any_TableMerge_result1_2_upvr (readonly)
		]]
		any_TableMerge_result1_2_upvr.SelectedObjectDirty = true
	end)
	return any_TableMerge_result1_2_upvr
end
tbl_11_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 4491
	--[[ Upvalues[2]:
		[1]: tbl_60_upvr (readonly)
		[2]: module_33_upvr (readonly)
	]]
	for _, v_12 in arg1._Connections do
		v_12:Disconnect()
	end
	for _, v_13 in arg1.TileRegions do
		tbl_60_upvr.Destroy(v_13)
	end
	table.clear(arg1.TileRegions)
	module_33_upvr.UnregisterScrollingFrame(arg1.ScrollingFrame)
end
tbl_11_upvr.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 4508
	--[[ Upvalues[10]:
		[1]: module_22_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_26_upvr (readonly)
		[4]: ItemDimsCalculate_upvr (readonly)
		[5]: tbl_63_upvr (readonly)
		[6]: any_CollectionUICreate_result1_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: tbl_54_upvr (readonly)
		[9]: module_10_upvr (readonly)
		[10]: module_17_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 130 start (CF ANALYSIS FAILED)
	local assert_result1_2 = assert(arg1.Parent)
	local any_TextBoundsFlagCheck_result1 = module_22_upvr.TextBoundsFlagCheck(arg1.Flag)
	if not any_TextBoundsFlagCheck_result1 then
		any_TextBoundsFlagCheck_result1 = arg1.DrawDirty
	end
	if any_TextBoundsFlagCheck_result1 then
		arg1.SizeX = assert_result1_2.ListRegionX
		arg1.ScrollingFrame.Size = UDim2.fromOffset(assert_result1_2.ListRegionX + 2 * module_22_upvr.SteppedSize.ScrollBar, assert_result1_2.ListRegionY)
		arg1.ScrollingFrame.ScrollBarThickness = module_22_upvr.SteppedSize.ScrollBar
	end
	-- KONSTANTERROR: [0] 1. Error Block 130 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 86. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 86. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 36. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [54] 36. Error Block 6 end (CF ANALYSIS FAILED)
end
tbl_11_upvr.Update = Update
local function GetScrollSelection_upvr(arg1, arg2) -- Line 4884, Named "GetScrollSelection"
	--[[ Upvalues[1]:
		[1]: tbl_75_upvr (readonly)
	]]
	local var687
	for i_16, v_14 in tbl_75_upvr do
		if v_14.ItemType == arg2 then
			var687 = assert(arg1.Parent).Parent.TabButtons[i_16].Button
			return var687
		end
	end
	return var687
end
function tbl_11_upvr.InitializeStandard(arg1, arg2, arg3) -- Line 4908
	--[[ Upvalues[10]:
		[1]: tbl_11_upvr (readonly)
		[2]: GetScrollSelection_upvr (readonly)
		[3]: tbl_60_upvr (readonly)
		[4]: table_freeze_result1_upvr_2 (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_5_upvr (readonly)
		[7]: module_30_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: tbl_62_upvr (readonly)
		[10]: module_13_upvr (readonly)
	]]
	local any_Initialize_result1_4 = tbl_11_upvr.Initialize(arg1, GetScrollSelection_upvr(arg1, arg2))
	local tbl_48 = {
		ItemTile_ByItemData = {};
		OwnedRegion = tbl_60_upvr.Create(any_Initialize_result1_4);
	}
	any_Initialize_result1_4.TileRegions[#any_Initialize_result1_4.TileRegions + 1] = tbl_48.OwnedRegion
	local var690 = any_Initialize_result1_4
	tbl_48.UnownedRegion = tbl_60_upvr.Create(var690, "Shop")
	if arg3 ~= table_freeze_result1_upvr_2.Obscure then
		var690 = false
	else
		var690 = true
	end
	tbl_48.UnownedRegion.ObscureUnowned = var690
	any_Initialize_result1_4.TileRegions[#any_Initialize_result1_4.TileRegions + 1] = tbl_48.UnownedRegion
	local any_TableMerge_result1_8_upvr = module_6_upvr.TableMerge(tbl_48, any_Initialize_result1_4)
	local function UpdateTiles_upvr() -- Line 4943, Named "UpdateTiles"
		--[[ Upvalues[9]:
			[1]: module_5_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: module_30_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: table_freeze_result1_upvr_2 (copied, readonly)
			[6]: module_8_upvr (copied, readonly)
			[7]: any_TableMerge_result1_8_upvr (readonly)
			[8]: tbl_62_upvr (copied, readonly)
			[9]: tbl_60_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
		if arg3 == table_freeze_result1_upvr_2.Remove then
		else
		end
		if arg3 == table_freeze_result1_upvr_2.OmitUnlockable then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [161] 121. Error Block 45 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [161] 121. Error Block 45 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 25. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [161.10]
		-- KONSTANTERROR: [31] 25. Error Block 10 end (CF ANALYSIS FAILED)
	end
	local function UpdateTilesOnInventoryChange(arg1_8) -- Line 5028
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: UpdateTiles_upvr (readonly)
		]]
		if arg1_8 == arg2 then
			UpdateTiles_upvr()
		end
	end
	any_TableMerge_result1_8_upvr._Connections[#any_TableMerge_result1_8_upvr._Connections + 1] = module_13_upvr.Signals.InventoryEquippedChanged:Connect(UpdateTilesOnInventoryChange)
	any_TableMerge_result1_8_upvr._Connections[#any_TableMerge_result1_8_upvr._Connections + 1] = module_13_upvr.Signals.InventoryOwnedAdded:Connect(UpdateTilesOnInventoryChange)
	any_TableMerge_result1_8_upvr._Connections[#any_TableMerge_result1_8_upvr._Connections + 1] = module_13_upvr.Signals.InventoryOwnedRemoved:Connect(UpdateTilesOnInventoryChange)
	UpdateTiles_upvr()
	return any_TableMerge_result1_8_upvr
end
function tbl_11_upvr.DestroyStandard(arg1) -- Line 5050
	--[[ Upvalues[1]:
		[1]: tbl_11_upvr (readonly)
	]]
	tbl_11_upvr.Destroy(arg1)
end
function tbl_11_upvr.UpdateStandard(arg1, arg2, arg3) -- Line 5057
	--[[ Upvalues[1]:
		[1]: tbl_11_upvr (readonly)
	]]
	tbl_11_upvr.Update(arg1, arg2, arg3)
end
local tbl_66 = {}
local function Initialize(arg1) -- Line 5069
	--[[ Upvalues[3]:
		[1]: tbl_11_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: table_freeze_result1_upvr_2 (readonly)
	]]
	return tbl_11_upvr.InitializeStandard(arg1, module_8_upvr.ItemType.Dance, table_freeze_result1_upvr_2.Obscure)
end
tbl_66.Initialize = Initialize
tbl_66.Destroy = tbl_11_upvr.DestroyStandard
tbl_66.Update = tbl_11_upvr.UpdateStandard
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryTiled_Dance] = tbl_66
local tbl_34 = {}
local function Initialize(arg1) -- Line 5083
	--[[ Upvalues[3]:
		[1]: tbl_11_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: table_freeze_result1_upvr_2 (readonly)
	]]
	return tbl_11_upvr.InitializeStandard(arg1, module_8_upvr.ItemType.Trail, table_freeze_result1_upvr_2.OmitUnlockable)
end
tbl_34.Initialize = Initialize
tbl_34.Destroy = tbl_11_upvr.DestroyStandard
tbl_34.Update = tbl_11_upvr.UpdateStandard
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryTiled_Trail] = tbl_34
local tbl_31 = {}
local function Initialize(arg1) -- Line 5100
	--[[ Upvalues[8]:
		[1]: tbl_11_upvr (readonly)
		[2]: GetScrollSelection_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_9_upvr (readonly)
		[5]: tbl_60_upvr (readonly)
		[6]: module_23_upvr (readonly)
		[7]: module_6_upvr (readonly)
		[8]: module_13_upvr (readonly)
	]]
	local any_Initialize_result1_2 = tbl_11_upvr.Initialize(arg1, GetScrollSelection_upvr(arg1, module_8_upvr.ItemType.Pet))
	local tbl_52 = {
		TilesDirty = true;
		InfoLabel = nil;
		StockTile_ByPetData = {};
	}
	local Proper = module_9_upvr.FrontEndNames.Items_ByItemType[module_8_upvr.ItemType.Pet].Plural.Proper
	tbl_52.EquippedRegion = tbl_60_upvr.Create(any_Initialize_result1_2, string.format("Equipped %s", Proper))
	tbl_52.EquippedRegion.SortMethod = false
	tbl_52.EquippedRegion.CenterLastRow = true
	any_Initialize_result1_2.TileRegions[#any_Initialize_result1_2.TileRegions + 1] = tbl_52.EquippedRegion
	tbl_52.StockRegion = tbl_60_upvr.Create(any_Initialize_result1_2, Proper)
	tbl_52.StockRegion.SortMethod = module_23_upvr.SortPetData
	any_Initialize_result1_2.TileRegions[#any_Initialize_result1_2.TileRegions + 1] = tbl_52.StockRegion
	local any_TableMerge_result1_10_upvr = module_6_upvr.TableMerge(tbl_52, any_Initialize_result1_2)
	any_Initialize_result1_2._Connections[#any_Initialize_result1_2._Connections + 1] = module_13_upvr.Signals.PetOwnedCountChanged:Connect(function() -- Line 5143
		--[[ Upvalues[1]:
			[1]: any_TableMerge_result1_10_upvr (readonly)
		]]
		any_TableMerge_result1_10_upvr.TilesDirty = true
	end)
	return any_TableMerge_result1_10_upvr
end
tbl_31.Initialize = Initialize
local function Destroy(arg1) -- Line 5152
	--[[ Upvalues[1]:
		[1]: tbl_11_upvr (readonly)
	]]
	tbl_11_upvr.Destroy(arg1)
end
tbl_31.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 5159
	--[[ Upvalues[11]:
		[1]: tbl_11_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: tbl_60_upvr (readonly)
		[5]: module_23_upvr (readonly)
		[6]: tbl_62_upvr (readonly)
		[7]: module_3_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: module_22_upvr (readonly)
		[10]: module_9_upvr (readonly)
		[11]: tbl_36_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	tbl_11_upvr.Update(arg1, arg2, arg3)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 67 start (CF ANALYSIS FAILED)
	for i_17 = #arg1.EquippedRegion.ItemTiles, 1, -1 do
		local var801 = arg1.EquippedRegion.ItemTiles[i_17]
		local any_TableBuildSub_result1 = module_6_upvr.TableBuildSub({}, var801.ItemData)
		any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = var801
		tbl_60_upvr.RemoveItemTile(arg1.EquippedRegion, var801)
		local var803
	end
	for _, v_15 in module_13_upvr.LocalPetState.Equipped do
		local var804 = module_23_upvr.PetData_ById[v_15]
		local var805
		local var806 = var803[var804]
		if var806 then
			var805 = table.remove(var806)
			if #var806 == 0 then
				var803[var804] = nil
			end
		end
		if not var805 then
			var805 = tbl_62_upvr.Create(var804)
		end
		assert(var805)
		var805.Count = 1
		var805.CountDirty = true
		var805.Equipped = true
		var805.EquippedDirty = true
		tbl_60_upvr.AddItemTile(arg1.EquippedRegion, var805)
	end
	for _, v_16 in var803 do
		var805 = nil
		for i_20, v_17 in v_16, var805 do
			tbl_62_upvr.Destroy(v_17)
		end
	end
	local clone = table.clone(arg1.StockTile_ByPetData)
	table.clear(arg1.StockTile_ByPetData)
	for i_21, v_18 in module_13_upvr.LocalSaveData.Pets.Owned do
		if v_18 ~= 0 then
			i_20 = module_23_upvr
			local var808 = i_20.PetData_ById[i_21]
			local var809 = clone[var808]
			i_20 = nil
			clone[var808] = i_20
			if not var809 then
				v_17 = tbl_62_upvr
				i_20 = v_17.Create
				v_17 = var808
				i_20 = i_20(v_17)
				v_17 = tbl_60_upvr.AddItemTile
				v_17(arg1.StockRegion, i_20)
				var809 = i_20
			end
			v_17 = var809.Count
			if v_17 == v_18 then
				i_20 = false
			else
				i_20 = true
			end
			var809.CountDirty = i_20
			var809.Count = v_18
			i_20 = arg1.StockTile_ByPetData
			i_20[var808] = var809
		end
	end
	for _, v_19 in clone do
		tbl_62_upvr.Destroy(v_19)
	end
	-- KONSTANTERROR: [16] 13. Error Block 67 end (CF ANALYSIS FAILED)
end
tbl_31.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.InventoryTiled_Pet] = tbl_31
tbl_13_upvr.CounterSpecs = {{
	CounterType = module_8_upvr.CounterType.SecretLevels;
	Image = module_9_upvr.PortalIcon_Secret;
	UnlockMethods = {module_8_upvr.UnlockMethod.Currency, module_8_upvr.UnlockMethod.Product};
}, {
	CounterType = module_8_upvr.CounterType.ForbiddenLevels;
	Image = module_9_upvr.PortalIcon_Forbidden;
	UnlockMethods = {module_8_upvr.UnlockMethod.Stars, module_8_upvr.UnlockMethod.Product};
}}
local module_upvr = require(UserInterface:WaitForChild("SpecialLevelUI"))
function tbl_13_upvr.Initialize(arg1) -- Line 5372
	--[[ Upvalues[11]:
		[1]: module_22_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_13_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: module_9_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: module_21_upvr (readonly)
		[9]: module_30_upvr (readonly)
		[10]: module_upvr (readonly)
		[11]: module_32_upvr (readonly)
	]]
	local tbl_43 = {
		_Connections = {};
		ButtonCount = 0;
		InfoText = "This page shows how many levels you own and lets you unlock ".."more. To play the levels, enter their world.";
		CounterRegion_ByCounter = {};
		CounterRegions = {};
		Flag = module_22_upvr.TextBoundsFlagCreate();
	}
	local any_TextBoundsLabelCreate_result1_12, any_TextBoundsLabelCreate_result2_15 = module_22_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_43.InfoText, tbl_43.Flag)
	tbl_43.InfoLabel = any_TextBoundsLabelCreate_result1_12
	tbl_43.InfoBounds = any_TextBoundsLabelCreate_result2_15
	for _, v_20 in tbl_13_upvr.CounterSpecs do
		local CounterType_upvr = v_20.CounterType
		local tbl_8 = {
			Count = module_8_upvr.SaveDataGetCount(module_13_upvr.LocalSaveData, CounterType_upvr);
			Dirty = true;
			CounterType = CounterType_upvr;
			CountText = "";
			UnlockButtons = {};
			CountLabel = module_6_upvr.I("TextLabel", module_22_upvr.Properties.Text, {
				FontFace = module_9_upvr.FontFaceBold;
				TextColor3 = module_9_upvr.TextColor1;
				TextXAlignment = Enum.TextXAlignment.Left;
				ZIndex = 2;
				Parent = arg1.Wrapper;
			});
			CountBounds = module_22_upvr.CachedTextBounds_FromLabel(tbl_8.CountLabel);
		}
		tbl_8.CountBounds.Flag = tbl_43.Flag
		tbl_8.CountStroke = module_6_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
			Color = module_9_upvr.TextStrokeColor1;
			Parent = tbl_8.CountLabel;
		})
		tbl_8.Image = module_6_upvr.I("ImageLabel", {
			BackgroundTransparency = 1;
			Image = v_20.Image;
			ZIndex = 1;
			Parent = arg1.Wrapper;
		})
		tbl_8.TypeHeader = module_6_upvr.I("TextLabel", module_22_upvr.Properties.Text_Scaled, {
			FontFace = module_9_upvr.FontFaceBold;
			Text = module_9_upvr.FrontEndNames.Counter_ByCounterType[CounterType_upvr].Plural.Proper;
			TextColor3 = module_9_upvr.TextColor1;
			TextYAlignment = Enum.TextYAlignment.Top;
			Parent = arg1.Wrapper;
		})
		for i_24, v_21_upvr in v_20.UnlockMethods do
			local tbl_74_upvr = {
				Idle = true;
				Valid = true;
				UnlockMethod = v_21_upvr;
			}
			if v_21_upvr == module_8_upvr.UnlockMethod.Product then
				local any_CreateFancy_result1_3_upvr = module_10_upvr.Button.CreateFancy(arg1.Wrapper, module_10_upvr.Button.Themes.BuyRobux)
				local var831 = module_21_upvr.ProductIncrementCounter_ByCounterType[CounterType_upvr]
				if not var831 then
					tbl_74_upvr.Valid = false
				end
				module_30_upvr.GeneratePriceStringAsync(function(arg1_9) -- Line 5482
					--[[ Upvalues[2]:
						[1]: module_10_upvr (copied, readonly)
						[2]: any_CreateFancy_result1_3_upvr (readonly)
					]]
					module_10_upvr.Button.SetText(any_CreateFancy_result1_3_upvr, arg1_9)
				end, module_9_upvr.FALLBACK_PRICE_STRING, module_30_upvr.TransactionType.Product, var831)
				tbl_74_upvr.Button = any_CreateFancy_result1_3_upvr
			else
				any_CreateFancy_result1_3_upvr = module_8_upvr.UnlockMethod.Stars
				if v_21_upvr == any_CreateFancy_result1_3_upvr then
					any_CreateFancy_result1_3_upvr = module_8_upvr.CounterType.ForbiddenLevels
					if CounterType_upvr ~= any_CreateFancy_result1_3_upvr then
						any_CreateFancy_result1_3_upvr = error
						any_CreateFancy_result1_3_upvr(module_8_upvr.FormatOutput("Unlock method not supported for CounterType '%*'", "InventoryUI", nil, CounterType_upvr), 2)
					end
					any_CreateFancy_result1_3_upvr = module_10_upvr.Button.Common.Create.InlineIcon
					any_CreateFancy_result1_3_upvr = any_CreateFancy_result1_3_upvr(arg1.Wrapper, module_10_upvr.Button.Themes.BuyStars, {
						Image = module_9_upvr.StarsIconImage_Outline_24;
					})
					local var834 = any_CreateFancy_result1_3_upvr
					var834.Bounds.Flag = tbl_43.Flag
					tbl_74_upvr.Button = var834
				else
					var834 = module_8_upvr.UnlockMethod.Currency
					if v_21_upvr == var834 then
						var834 = module_30_upvr.GetCounterCost(CounterType_upvr, tbl_8.Count)
						local any_GetCounterCost_result1, any_GetCounterCost_result2_2 = module_30_upvr.GetCounterCost(CounterType_upvr, tbl_8.Count)
						if not any_GetCounterCost_result2_2 then
							error(module_8_upvr.FormatOutput("Unlock method not supported for CounterType '%*'", "InventoryUI", nil, CounterType_upvr), 2)
						end
						local var837 = module_8_upvr.CurrencyType_ByCounterType[CounterType_upvr]
						local any_InlineIcon_result1 = module_10_upvr.Button.Common.Create.InlineIcon(arg1.Wrapper, module_10_upvr.Button.ButtonTheme_ByCurrencyType[var837], {
							Image = module_9_upvr.GetImageFromMap(module_9_upvr.ImageMapType.Currency_ByCurrencyType, var837, module_9_upvr.ImageMapStyle.OutlineHeavy);
						})
						any_InlineIcon_result1.Bounds.Flag = tbl_43.Flag
						tbl_74_upvr.Button = any_InlineIcon_result1
					else
						any_GetCounterCost_result1 = error
						any_GetCounterCost_result1(module_8_upvr.FormatOutput("Unsupported UnlockMethod '%*'", "InventoryUI", nil, v_21_upvr), 2)
					end
				end
			end
			any_GetCounterCost_result1 = tbl_74_upvr.Button.Button.Activated
			any_GetCounterCost_result1 = any_GetCounterCost_result1:Connect
			any_GetCounterCost_result1(function() -- Line 5541
				--[[ Upvalues[7]:
					[1]: tbl_74_upvr (readonly)
					[2]: module_upvr (copied, readonly)
					[3]: CounterType_upvr (readonly)
					[4]: module_8_upvr (copied, readonly)
					[5]: module_13_upvr (copied, readonly)
					[6]: module_32_upvr (copied, readonly)
					[7]: v_21_upvr (readonly)
				]]
				if tbl_74_upvr.Idle and tbl_74_upvr.Valid then
					tbl_74_upvr.Idle = false
					if not module_upvr.PromptIfAllOwned(CounterType_upvr) then
						module_32_upvr.MakeRequest({
							Request = module_8_upvr.StateRequestType.CounterIncrement;
							Args = {CounterType_upvr, v_21_upvr, 1, module_8_upvr.SaveDataGetCount(module_13_upvr.LocalSaveData, CounterType_upvr) + 1};
							Callback = coroutine.running();
						})
					end
					tbl_74_upvr.Idle = true
				end
			end)
			any_GetCounterCost_result1 = tbl_8.UnlockButtons
			any_GetCounterCost_result1[i_24] = tbl_74_upvr
		end
		tbl_43.CounterRegions[#tbl_43.CounterRegions + 1] = tbl_8
		tbl_43.CounterRegion_ByCounter[CounterType_upvr] = tbl_8
		if tbl_43.ButtonCount < #tbl_8.UnlockButtons then
			tbl_43.ButtonCount = #tbl_8.UnlockButtons
		end
	end
	local any_TableMerge_result1_3_upvr = module_6_upvr.TableMerge(tbl_43, arg1)
	CounterType_upvr = any_TableMerge_result1_3_upvr._Connections
	CounterType_upvr = module_13_upvr.Signals
	any_TableMerge_result1_3_upvr._Connections[#CounterType_upvr + 1] = CounterType_upvr.CounterChanged:Connect(function(arg1_10, arg2) -- Line 5579, Named "MarkRegionDirty"
		--[[ Upvalues[1]:
			[1]: any_TableMerge_result1_3_upvr (readonly)
		]]
		local var844 = any_TableMerge_result1_3_upvr.CounterRegion_ByCounter[arg1_10]
		if var844 and var844.Count ~= arg2 then
			var844.Count = arg2
			var844.Dirty = true
		end
	end)
	return any_TableMerge_result1_3_upvr
end
function tbl_13_upvr.Destroy(arg1) -- Line 5598
	--[[ Upvalues[1]:
		[1]: module_10_upvr (readonly)
	]]
	for _, v_22 in arg1._Connections do
		v_22:Disconnect()
	end
	for _, v_23 in arg1.CounterRegions do
		v_23.CountLabel:Destroy()
		v_23.Image:Destroy()
		v_23.TypeHeader:Destroy()
		for _, v_24 in v_23.UnlockButtons do
			module_10_upvr.Button.Destroy(v_24.Button)
		end
	end
end
function tbl_13_upvr.Update(arg1, arg2, arg3) -- Line 5619
	--[[ Upvalues[8]:
		[1]: module_8_upvr (readonly)
		[2]: module_30_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_10_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: module_22_upvr (readonly)
		[7]: any_CollectionUICreate_result1_upvr (readonly)
		[8]: tbl_63_upvr (readonly)
	]]
	for i_28, v_25 in arg1.CounterRegions do
		if v_25.Dirty then
			local tostring_result1 = tostring(v_25.Count)
			if v_25.CountText ~= tostring_result1 then
				v_25.CountText = tostring_result1
				v_25.CountLabel.Text = v_25.CountText
			end
			for _, v_26 in v_25.UnlockButtons do
				if v_26.UnlockMethod == module_8_upvr.UnlockMethod.Currency then
					local _, any_GetCounterCost_result2 = module_30_upvr.GetCounterCost(v_25.CounterType, v_25.Count)
					module_10_upvr.Button.SetText(v_26.Button, module_30_upvr.GeneratePriceString(module_30_upvr.TransactionType.Currency, any_GetCounterCost_result2, 1, module_6_upvr.FormatNumberOptions_PriceAbbreviation))
				elseif v_26.UnlockMethod == module_8_upvr.UnlockMethod.Stars then
					local var874 = v_25.Count + 1
					local any_ForbiddenLevelGetStarRequirement_result1 = module_3_upvr.ForbiddenLevelGetStarRequirement(var874)
					if any_ForbiddenLevelGetStarRequirement_result1 then
						var874 = module_6_upvr.FormatNumber(any_ForbiddenLevelGetStarRequirement_result1)
					else
						var874 = "N/A"
					end
					module_10_upvr.Button.SetText(v_26.Button, var874)
				end
			end
			arg1.Flag.Dirty = true
			v_25.Dirty = false
		end
		for _, _ in v_25.UnlockButtons do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [125.12]
			module_10_upvr.Button.Update(nil.Button, arg3)
		end
	end
	if module_22_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		i_28 = any_CollectionUICreate_result1_upvr
		local PadY_4 = i_28.Properties.PadY
		v_25 = module_22_upvr.EmSize
		i_28 = v_25 * tbl_63_upvr.WrapperSizeXEm
		local var877 = i_28 // 1
		v_25 = module_22_upvr.EmSize * tbl_63_upvr.WrapperSizeYEm
		i_28 = v_25 // 1
		v_25 = any_CollectionUICreate_result1_upvr.Properties.EdgePadX
		local var878 = any_CollectionUICreate_result1_upvr.Properties.CloseInsetY + PadY_4
		local var879 = var877 - 2 * v_25
		local var880 = module_22_upvr.EmSize * tbl_63_upvr.TextSizeCounterEm // 1
		local var881 = module_22_upvr.EmSize * tbl_63_upvr.TextSizeHeaderEm // 1
		local var882 = module_22_upvr.SteppedSize.ButtonFancyX * tbl_63_upvr.LevelButtonScaleX // 1
		local ButtonFancyY = module_22_upvr.SteppedSize.ButtonFancyY
		local ButtonFancyText = module_22_upvr.SteppedSize.ButtonFancyText
		local ButtonCount = arg1.ButtonCount
		module_22_upvr.CachedTextBoundsConform(arg1.InfoBounds, arg1.InfoLabel, arg1.InfoText, module_22_upvr.EmSize * tbl_63_upvr.TextSizeSubHeaderEm // 1, var879)
		local var886 = i_28 - arg1.InfoBounds.Y - any_CollectionUICreate_result1_upvr.Properties.EdgePadY
		arg1.InfoLabel.Position = UDim2.fromOffset((var877 * 0.5 - arg1.InfoBounds.X * 0.5) // 1, var886)
		local any_ComputeEvenlySpacedSize_result1_2 = module_22_upvr.ComputeEvenlySpacedSize(var879, #arg1.CounterRegions, 0)
		local minimum_2 = math.min(module_22_upvr.SteppedSize.ButtonFancyX, math.min(math.max((var886 - var878) - (ButtonFancyY * ButtonCount + (ButtonCount + 1) * PadY_4 + var881), var880), any_ComputeEvenlySpacedSize_result1_2) - PadY_4)
		for i_31, v_28 in arg1.CounterRegions do
			local var889 = v_25 + any_ComputeEvenlySpacedSize_result1_2 * (i_31 - 1)
			local var890 = var889 + (any_ComputeEvenlySpacedSize_result1_2 * 0.5 - minimum_2 * 0.5) // 1
			module_22_upvr.CachedTextBoundsConform(v_28.CountBounds, v_28.CountLabel, v_28.CountText, var880)
			v_28.Image.Position = UDim2.fromOffset(var890, var878)
			v_28.Image.Size = UDim2.fromOffset(minimum_2, minimum_2)
			v_28.CountLabel.Position = UDim2.fromOffset(var890 - PadY_4 * 0.5 // 1, var878)
			v_28.CountStroke.Thickness = module_22_upvr.ScaledSize.StrokeVeryThin
			v_28.TypeHeader.Position = UDim2.fromOffset(var889, minimum_2 + var878)
			v_28.TypeHeader.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1_2, var881)
			for _, v_29 in v_28.UnlockButtons do
				v_29.Button.Button.Position = UDim2.fromOffset(var889 + (any_ComputeEvenlySpacedSize_result1_2 * 0.5 - var882 * 0.5) // 1, var878 + minimum_2 + var881 + PadY_4)
				v_29.Button.Button.Size = UDim2.fromOffset(var882, ButtonFancyY)
				if v_29.UnlockMethod ~= module_8_upvr.UnlockMethod.Product then
					module_10_upvr.Button.Common.Resize.InlineIcon(v_29.Button, ButtonFancyText, ButtonFancyText, var882)
				else
					module_10_upvr.Button.AdjustText(v_29.Button, nil, nil, nil, ButtonFancyText)
				end
			end
		end
	end
end
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_7_upvr.Inventory_Level] = tbl_13_upvr
local any_TableMerge_result1_5 = module_6_upvr.TableMerge(tbl_57_upvw, any_CollectionUICreate_result1_upvr)
tbl_57_upvw = any_TableMerge_result1_5
return any_TableMerge_result1_5