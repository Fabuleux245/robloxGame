-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:26
-- Luau version 6, Types version 3
-- Time taken: 0.008917 seconds

local module_10_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_9_upvr = require(Modules:WaitForChild("UIButton"))
local module_12_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_11_upvr = require(Modules:WaitForChild("UIShared"))
local module_7_upvr = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_5 = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_8 = require(UserInterface:WaitForChild("SidebarUI"))
local any_TableMerge_result1_upvr = module_7_upvr.TableMerge(module_5.CollectionType, {
	Shop_Landing = 1000;
	Shop_Currency = 1010;
	Shop_Lootboxes = 1020;
	Shop_Gamepasses = 1030;
})
module_10_upvr.IsOpen = module_12_upvr.CreateExclusivityOpenHandler(module_12_upvr.ShopUIGroup)
local any_CollectionUICreate_result1_upvr = module_5.CollectionUICreate(any_TableMerge_result1_upvr, module_7_upvr.HierarchyCreate({{any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.Shop_Landing, any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.Shop_Currency, any_TableMerge_result1_upvr.Shop_Landing}, {any_TableMerge_result1_upvr.Shop_Lootboxes, any_TableMerge_result1_upvr.Shop_Landing}, {any_TableMerge_result1_upvr.Shop_Gamepasses, any_TableMerge_result1_upvr.Shop_Landing}}), module_10_upvr.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 75
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: module_12_upvr (readonly)
	]]
	module_11_upvr.UIExclusivityGroup.Deactivate(module_12_upvr.ShopUIGroup)
end
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local var25_upvw
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 82
	--[[ Upvalues[3]:
		[1]: RenderStepped_2_upvr (readonly)
		[2]: var25_upvw (read and write)
		[3]: module_10_upvr (readonly)
	]]
	RenderStepped_2_upvr(...)
	var25_upvw.Selected = module_10_upvr.IsOpen()
end
RenderStepped_2_upvr = "ShopUI"
any_CollectionUICreate_result1_upvr.Name = RenderStepped_2_upvr
RenderStepped_2_upvr = module_2_upvr.DisplayOrder_ShopUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RenderStepped_2_upvr
RenderStepped_2_upvr = ReplicatedStorage:WaitForChild("Bindables")
local module_6_upvr = require(Modules:WaitForChild("UILegacySupport"))
RenderStepped_2_upvr:WaitForChild("OpenShops").Event:Connect(function(arg1) -- Line 99
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	if arg1 ~= nil then
		local var28 = any_CollectionUICreate_result1_upvr
		if module_6_upvr.LegacyBindableObjects[arg1] == nil then
			var28 = false
		else
			var28 = true
		end
		var28.RequestClose(var28)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr._UIMain].Open = function() -- Line 106
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	module_6_upvr.CloseShops()
end
local any_MemberCreate_result1_upvr = module_12_upvr.MemberCreate(module_12_upvr.ShopUIGroup)
var25_upvw = module_8.ButtonProfileRegister({
	ButtonTheme = module_9_upvr.Button.Themes.Floating;
	Icon = module_2_upvr.Shop_Legacy;
	Order = module_8.SidebarButtonOrder.Shop;
	Style = module_8.SidebarButtonStyle.IconText;
	Text = "Store";
	PressFunction = function() -- Line 117, Named "ToggleInterface"
		--[[ Upvalues[6]:
			[1]: module_10_upvr (readonly)
			[2]: module_12_upvr (readonly)
			[3]: any_CollectionUICreate_result1_upvr (readonly)
			[4]: any_TableMerge_result1_upvr (readonly)
			[5]: module_11_upvr (readonly)
			[6]: any_MemberCreate_result1_upvr (readonly)
		]]
		if not module_10_upvr.IsOpen() then
			module_12_upvr.ClosePopups()
			any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.Shop_Gamepasses)
			module_11_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
		else
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end;
}, module_8.SidebarRegion.Left)
any_CollectionUICreate_result1_upvr.State.ClosingSelection = var25_upvw.Button.Button
local tbl_3_upvr = {
	CheckmarkScale = 0.375;
	DetailsDividerScaleY = 0.875;
	DetailsSizeXEm = 8.75;
	DetailsInventoryPadEm = 1;
	DetailsProductDisplayEm = 4.375;
	IconPadFactor = 0.25;
	ProductTileCornerRadiusEm = 0.5;
	ProductTileItemInsetEm = 0.25;
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
	WrapperSizeXEm = 32;
}
local tbl = {}
local function _(arg1, arg2) -- Line 332, Named "TileDimsCalculate"
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local PadY = any_CollectionUICreate_result1_upvr.Properties.PadY
	local var35 = module_11_upvr.EmSize * tbl_3_upvr.TextSizePriceEm // 1
	local StrokeVeryThin = module_11_upvr.ScaledSize.StrokeVeryThin
	local ceiled = math.ceil(StrokeVeryThin)
	local var38 = module_11_upvr.EmSize * tbl_3_upvr.TilePadXEm // 1
	local any_ComputeCornerDims_result1 = module_11_upvr.ComputeCornerDims(tbl_3_upvr.ProductTileCornerRadiusEm)
	local var40
	local var41
	if arg2 then
		var40 = module_11_upvr.EmSize * arg2 // 1
		var41 = var40 + ceiled * 2
	else
		var41 = module_11_upvr.ComputeEvenlySpacedSize(arg1, tbl_3_upvr.TilesPerRow, var38) // 1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var40 = var41 - ceiled * 2
	end
	local var42 = module_11_upvr.EmSize * tbl_3_upvr.TileTextInsetEm // 1
	local var43 = module_11_upvr.EmSize * tbl_3_upvr.ProductTileItemInsetEm // 1
	local var44 = var40 - 2 * var43
	local var45 = PadY * 0.5 // 1
	local var46 = var35 + var45
	local module = {
		CurrencyInset = var46;
		CurrencySize = var35;
		CurrencySizeUDim2 = UDim2.fromOffset(var35, var35);
		ItemInset = var43;
		ItemSize = var44;
		ItemSizeUDim2 = UDim2.fromOffset(var44, var44);
		ItemCornerRadius = UDim.new(0, math.max(any_ComputeCornerDims_result1.Radius - var43, 0));
		PriceSizeX = var40 - var46 - 2 * var45;
	}
	module.SizeX = arg1
	module.TextSizeNameY = module_11_upvr.EmSize * tbl_3_upvr.TextSizeNameEm // 1
	module.TextSizePriceY = var35
	module.TileCornerRadius = any_ComputeCornerDims_result1.RadiusUDim
	module.TileInset = ceiled
	module.TilePaddedSizeInset = var41 + var38
	module.TilePadX = var38
	module.TileSize = var40
	module.TileSizeInset = var41
	module.TileSizeUDim2 = UDim2.fromOffset(var40, var40)
	module.TileStrokeThickness = StrokeVeryThin
	module.TileTextInset = var42
	module.TileTextSizeX = var40 - 2 * var42
	module.UIPadX = any_CollectionUICreate_result1_upvr.Properties.PadX
	module.UIPadY = PadY
	return module
end
local tbl_upvr = {{
	CollectionType = any_TableMerge_result1_upvr.Shop_Currency;
	Text = module_2_upvr.FrontEndNames.Currency_ByCurrencyType[module_3_upvr.PrimaryCurrencyType].Plural.Proper;
}, {
	CollectionType = any_TableMerge_result1_upvr.Shop_Lootboxes;
	Text = "Lootboxes";
	RequiresLootboxApproval = true;
}, {
	CollectionType = any_TableMerge_result1_upvr.Shop_Gamepasses;
	Text = "Gamepasses";
}}
table.sort(tbl_upvr, function(arg1, arg2) -- Line 450
	local var53
	if arg1.CollectionType >= arg2.CollectionType then
		var53 = false
	else
		var53 = true
	end
	return var53
end)
local module_4_upvr = require(Modules:WaitForChild("ClientData"))
function tbl.Initialize(arg1) -- Line 458
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: any_CollectionUICreate_result1_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: module_4_upvr (readonly)
	]]
	local tbl_2 = {
		_Connections = {};
		TabButtons = {};
		PolicyDirty = true;
	}
	for i, v_upvr in tbl_upvr do
		local any_AddLabel_result1 = module_9_upvr.Button.AddLabel(module_9_upvr.Button.Create(arg1.Wrapper, module_9_upvr.Button.Themes.Deemphasized), {
			FontFace = module_2_upvr.FontFaceItalic;
			Text = v_upvr.Text;
		})
		any_AddLabel_result1.Button.Modal = true
		any_AddLabel_result1.Button.Activated:Connect(function() -- Line 486
			--[[ Upvalues[2]:
				[1]: any_CollectionUICreate_result1_upvr (copied, readonly)
				[2]: v_upvr (readonly)
			]]
			any_CollectionUICreate_result1_upvr.RequestCollection(v_upvr.CollectionType)
		end)
		tbl_2.TabButtons[i] = any_AddLabel_result1
		if not any_CollectionUICreate_result1_upvr.State.PendingSelection then
			any_CollectionUICreate_result1_upvr.State.PendingSelection = any_AddLabel_result1.Button
		end
	end
	local any_TableMerge_result1_upvr_2 = module_7_upvr.TableMerge(tbl_2, arg1)
	if not module_3_upvr.IsLoaded(module_4_upvr.LocalPolicyState) then
		local var63_upvw
		var63_upvw = module_4_upvr.Signals.PolicyReady:Connect(function() -- Line 505
			--[[ Upvalues[2]:
				[1]: any_TableMerge_result1_upvr_2 (readonly)
				[2]: var63_upvw (read and write)
			]]
			any_TableMerge_result1_upvr_2.PolicyDirty = true
			var63_upvw:Disconnect()
		end)
		any_TableMerge_result1_upvr_2._Connections[#any_TableMerge_result1_upvr_2._Connections + 1] = var63_upvw
	end
	return any_TableMerge_result1_upvr_2
end
function tbl.Destroy(arg1) -- Line 518
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	for _, v_2 in arg1._Connections do
		v_2:Disconnect()
	end
	for _, v_3 in arg1.TabButtons do
		module_9_upvr.Button.Destroy(v_3)
	end
end
function tbl.DimensionsChanged(arg1) -- Line 531
end
function tbl.Update(arg1, arg2, arg3) -- Line 539
	--[[ Upvalues[5]:
		[1]: module_11_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.DrawDirty then
		local var110 = module_11_upvr.EmSize * tbl_3_upvr.WrapperSizeXEm // 1
		local PadY_3 = any_CollectionUICreate_result1_upvr.Properties.PadY
		if arg1.DrawDirty then
			local var112 = PadY_3 * 0.5 // 1
			local var113 = tbl_3_upvr.TabButtonTextSizeEm * module_11_upvr.EmSize // 1
			local var114 = var113 + 2 * var112
			local any_ComputeEvenlySpacedSize_result1, any_ComputeEvenlySpacedSize_result2_2 = module_11_upvr.ComputeEvenlySpacedSize(var110 - any_CollectionUICreate_result1_upvr.Properties.CloseInsetX - 2 * PadY_3, #arg1.TabButtons, PadY_3)
			for i_4, v_4 in arg1.TabButtons do
				v_4.Button.Position = UDim2.fromOffset(PadY_3 + any_ComputeEvenlySpacedSize_result2_2 * (i_4 - 1), PadY_3 + ((any_CollectionUICreate_result1_upvr.Properties.CloseInsetY - PadY_3) * 0.5 - var114 * 0.5) // 1)
				v_4.Button.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1, var114)
				v_4.Label.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1 - 2 * var112, var113)
				local _
			end
			arg1.TargetSize = UDim2.fromOffset(var110, any_CollectionUICreate_result1_upvr.Properties.CloseInsetY + PadY_3)
		end
	end
	for i_5, v_5 in tbl_upvr do
		local var118 = arg1.TabButtons[i_5]
		local CollectionType = v_5.CollectionType
		if any_CollectionUICreate_result1_upvr.CollectionTypeIsActive(CollectionType) then
			CollectionType = module_9_upvr.ButtonState.Selected
		else
			CollectionType = nil
		end
		var118.StateOverride = CollectionType
		module_9_upvr.Button.Update(var118, arg3)
	end
	any_CollectionUICreate_result1_upvr.CollectionUpdate_Display(arg1, arg2, arg3)
end
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr.Shop_Landing] = tbl
return module_10_upvr