-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:22
-- Luau version 6, Types version 3
-- Time taken: 0.037527 seconds

local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_17_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_15_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_20_upvr = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("ItemActionHandler"))
local module_29_upvr = require(Modules:WaitForChild("ItemDataUtility"))
local module_4_upvr = require(Modules:WaitForChild("Tweens"))
local module_8_upvr = require(Modules:WaitForChild("UIButton"))
local module_9_upvr = require(Modules:WaitForChild("UISelection"))
local module_22_upvr = require(Modules:WaitForChild("UIShared"))
local module_3_upvr = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_25_upvr = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_16_upvr = require(UserInterface:WaitForChild("LevelMenuUI"):WaitForChild("LevelMenuUICommon"))
local Dims_upvr = module_16_upvr.Dims
local CommonState_upvr = module_16_upvr.CommonState
local tbl_upvr = {}
local tbl_6_upvr = {}
local tbl_4_upvr = {}
local tbl_2_upvr = {
	SortItemRegions = function(arg1, arg2) -- Line 76, Named "SortItemRegions"
		--[[ Upvalues[1]:
			[1]: module_29_upvr (readonly)
		]]
		local table_find_result1 = table.find(module_29_upvr.ItemTypeOrder, arg2.ItemType)
		if (table.find(module_29_upvr.ItemTypeOrder, arg1.ItemType) or math.huge) >= (table_find_result1 or math.huge) then
			table_find_result1 = false
		else
			table_find_result1 = true
		end
		return table_find_result1
	end;
}
local function Create(arg1, arg2, arg3, arg4) -- Line 87
	--[[ Upvalues[4]:
		[1]: module_9_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local module_24_upvr = {
		_Connections = {};
	}
	module_24_upvr.ItemDataArray = arg1
	module_24_upvr.ItemType = arg2
	module_24_upvr.SelectedObjectDirty = false
	module_24_upvr.Tiles = {}
	local tbl_11 = {}
	tbl_11.Parent = arg4
	module_24_upvr.ScrollingFrame = module_9_upvr.CreateAndRegisterScrollingFrame(module_22_upvr.Properties.ScrollingFrame_Horizontal, module_15_upvr.ScrollBarStyles.RoundThreeQuarterFull, tbl_11)
	module_24_upvr.ScrollingFrame:AddTag(module_9_upvr.IgnoreSelectionTag)
	module_24_upvr._Connections[#module_24_upvr._Connections + 1] = GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(function() -- Line 112
		--[[ Upvalues[1]:
			[1]: module_24_upvr (readonly)
		]]
		module_24_upvr.SelectedObjectDirty = true
	end)
	return module_24_upvr
end
tbl_upvr.Create = Create
local function Destroy(arg1) -- Line 119
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	for _, v in arg1._Connections do
		v:Disconnect()
	end
	module_9_upvr.UnregisterScrollingFrame(arg1.ScrollingFrame)
end
tbl_upvr.Destroy = Destroy
function tbl_upvr.Resize(arg1, arg2, arg3, arg4, arg5) -- Line 130
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	if arg1.TitleDisplay then
		local TitleDisplay = arg1.TitleDisplay
		if module_22_upvr.CachedTextBoundsUpdate(TitleDisplay.Bounds, TitleDisplay.Text, arg2.TextSizeTitleY) then
			TitleDisplay.Label.TextSize = TitleDisplay.Bounds.TextSize
		end
		module_22_upvr.DimTrackerAdd(arg3, TitleDisplay.Label, 0, TitleDisplay.Bounds.Y)
		module_22_upvr.DimTrackerPad(arg3, 0, arg2.UIPadY)
		arg4[TitleDisplay.Label] = {
			Position = UDim.new(0, (arg2.FrameSizeX * 0.5 - TitleDisplay.Bounds.X * 0.5) // 1);
			Size = UDim.new(0, TitleDisplay.Bounds.X);
		}
		TitleDisplay.Stroke.Thickness = module_22_upvr.ScaledSize.StrokeVeryThin
	end
	local len = #arg1.Tiles
	local var36 = arg2.TileInset * 2 + arg2.TileSizeInset * len + arg2.TilePadX * (len - 1)
	local var37 = var36
	local var38 = arg5
	if arg2.SizeX < var36 then
		var37 = arg2.SizeX
		var38 += 2 * module_22_upvr.SteppedSize.ScrollBar
	end
	module_22_upvr.DimTrackerAdd(arg3, arg1.ScrollingFrame, 0, var38)
	module_22_upvr.DimTrackerPad(arg3, 0, arg2.UIPadY)
	arg4[arg1.ScrollingFrame] = {
		Position = UDim.new(0, (arg2.FrameSizeX * 0.5 - var37 * 0.5) // 1);
		Size = UDim.new(0, var37);
	}
	arg1.ScrollingFrame.CanvasSize = UDim2.fromOffset(var36, 0)
	arg1.ScrollingFrame.ScrollBarThickness = module_22_upvr.SteppedSize.ScrollBar
end
function tbl_upvr.TitleDisplayCreate(arg1, arg2, arg3) -- Line 188
	--[[ Upvalues[3]:
		[1]: module_15_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local module_28 = {
		Text = module_15_upvr.FrontEndNames.Items_ByItemType[arg1.ItemType].Plural.Proper;
	}
	local any_TextBoundsLabelCreate_result1_4, any_TextBoundsLabelCreate_result2_7 = module_22_upvr.TextBoundsLabelCreate(arg3, module_28.Text, arg2, module_15_upvr.FontFaceItalic)
	module_28.Label = any_TextBoundsLabelCreate_result1_4
	module_28.Bounds = any_TextBoundsLabelCreate_result2_7
	module_28.Stroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_28.Label;
	})
	return module_28
end
local function Update(arg1) -- Line 213
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 45. Error Block 14 start (CF ANALYSIS FAILED)
	arg1.SelectedObjectDirty = false
	-- KONSTANTERROR: [70] 45. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 47. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 47. Error Block 13 end (CF ANALYSIS FAILED)
end
tbl_upvr.Update = Update
tbl_6_upvr.ButtonThemeDefault = module_8_upvr.Button.Themes.Deactivated
tbl_6_upvr.Formats = {
	ButtonDefault = "LOCKED";
	Energy = "+%sx";
	UnlockInfo = "Unlock previous %s.";
	UnlockTitle = "???";
}
tbl_6_upvr.UnlockInfoText_ByItemType = {}
for _, v_2 in module_17_upvr.ItemType do
	tbl_6_upvr.UnlockInfoText_ByItemType[v_2] = string.format(tbl_6_upvr.Formats.UnlockInfo, module_15_upvr.FrontEndNames.Items_ByItemType[v_2].Singular.Proper)
end
tbl_6_upvr.ItemGradientProperties = {
	Rotation = 90;
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(0.25, 0.65), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(0.625, 1), NumberSequenceKeypoint.new(1, 0)});
}
tbl_6_upvr.StrokeGradientProperties = {
	Color = ColorSequence.new(module_15_upvr.TextColor1, module_15_upvr.TextStrokeColor2);
	Rotation = 45;
}
tbl_6_upvr.TextColor_ByCanDisplay = {
	[true] = module_15_upvr.TextColor1;
	[false] = module_15_upvr.TextColor4;
}
tbl_6_upvr.ZIndexes = {
	Cover = -1000;
	Gradient = -1001;
	Item = -1002;
}
function tbl_6_upvr.ItemDimsCalculate(arg1, arg2) -- Line 359
	--[[ Upvalues[3]:
		[1]: module_16_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: Dims_upvr (readonly)
	]]
	local PadX_2 = module_16_upvr.Properties.PadX
	local PadY = module_16_upvr.Properties.PadY
	local var52 = module_22_upvr.EmSize * Dims_upvr.TextSizeLargeEm // 1
	local var53 = arg2
	if not var53 then
		var53 = Dims_upvr.ItemTileSizeEm
	end
	local var54 = module_22_upvr.EmSize * var53 // 1
	local var55 = PadY * 0.75 // 1
	local any_ComputeCornerDims_result1 = module_22_upvr.ComputeCornerDims(Dims_upvr.ItemTileCornerRadiusEm)
	local StrokeMedium = module_22_upvr.ScaledSize.StrokeMedium
	local ceiled = math.ceil(StrokeMedium)
	local var59 = var54 + ceiled * 2
	local var60 = (PadX_2 * 0.5 + 2 * StrokeMedium) // 1
	local var61 = module_22_upvr.EmSize * Dims_upvr.ItemTileItemInsetEm // 1
	local var62 = var54 - 2 * var61
	local var63 = PadY * 0.5 // 1
	local var64 = var52 + var63
	local module_21 = {
		CurrencyInset = var64;
		CurrencySize = var52;
		CurrencySizeUDim2 = UDim2.fromOffset(var52, var52);
	}
	module_21.FrameSizeX = arg1
	module_21.ItemInset = var61
	module_21.ItemSize = var62
	module_21.ItemSizeUDim2 = UDim2.fromOffset(var62, var62)
	module_21.ItemCornerRadius = UDim.new(0, math.max(any_ComputeCornerDims_result1.Radius - var61, 0))
	module_21.PriceSizeX = var54 - var64 - 2 * var63
	module_21.ProgressCornerRadius = UDim.new(0, any_ComputeCornerDims_result1.Radius - PadY)
	module_21.ProgressInsetX = PadY
	module_21.ProgressSizeUDim2 = UDim2.fromOffset(var54 - 2 * PadY, var52)
	module_21.SizeX = arg1 - 2 * PadX_2
	module_21.TextSizeLargeY = var52
	module_21.TextSizeSmallY = module_22_upvr.EmSize * Dims_upvr.TextSizeSmallEm // 1
	module_21.TextSizeTitleY = module_22_upvr.EmSize * Dims_upvr.TextSizeTitleEm // 1
	module_21.TextSizeY = module_22_upvr.EmSize * Dims_upvr.TextSizeEm // 1
	module_21.TileCornerRadius = any_ComputeCornerDims_result1.RadiusUDim
	module_21.TileInset = ceiled
	module_21.TilePaddedSizeInsetX = var59 + var60
	module_21.TilePadX = var60
	module_21.TileSize = var54
	module_21.TileSizeInset = var59
	module_21.TileSizeUDim2 = UDim2.fromOffset(var54, var54)
	module_21.TileStrokeThickness = StrokeMedium
	module_21.TileTextInsetX = var55
	module_21.TileTextInsetY = PadY * 0.25 // 1
	module_21.TileTextSizeX = var54 - 2 * var55
	module_21.UIPadX = PadX_2
	module_21.UIPadY = PadY
	return module_21
end
function tbl_6_upvr.GradientStrokeCreate(arg1) -- Line 515
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
	]]
	local tbl_12 = {
		Color = module_15_upvr.White;
	}
	tbl_12.Parent = arg1
	local any_I_result1 = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeBorder, tbl_12)
	module_3_upvr.I("UIGradient", tbl_6_upvr.StrokeGradientProperties, {
		Parent = any_I_result1;
	})
	return any_I_result1
end
function tbl_6_upvr.Create(arg1, arg2) -- Line 531
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_15_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: module_22_upvr (readonly)
	]]
	local module_27 = {
		CanDisplay = false;
		CanInteract = false;
		Owned = false;
		StateDirty = false;
		PosX = 0;
		SizeX = 0;
	}
	module_27.ItemData = arg1
	local tbl_8 = {
		BackgroundColor3 = module_15_upvr.BackgroundColor1;
	}
	tbl_8.Parent = arg2
	module_27.Frame = module_3_upvr.I("Frame", tbl_8)
	module_27.FrameCorner = module_3_upvr.I("UICorner", {
		Parent = module_27.Frame;
	})
	module_27.Stroke = tbl_6_upvr.GradientStrokeCreate(module_27.Frame)
	module_3_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_15_upvr.ShopBubble_Soft_512;
		ScaleType = Enum.ScaleType.Stretch;
		Size = UDim2.fromScale(1, 1);
		ZIndex = tbl_6_upvr.ZIndexes.Cover;
		Parent = module_27.Frame;
	})
	return module_27
end
function tbl_6_upvr.ItemTileResize(arg1, arg2, arg3) -- Line 595
	arg1.PosX = arg3
	arg1.SizeX = arg2.TileSizeInset
	arg1.Frame.Position = UDim2.fromOffset(arg3 + arg2.TileInset, arg2.TileInset)
	arg1.Frame.Size = arg2.TileSizeUDim2
	arg1.FrameCorner.CornerRadius = arg2.TileCornerRadius
	arg1.Stroke.Thickness = arg2.TileStrokeThickness
end
function tbl_6_upvr.ItemTileUpdate(arg1, arg2, arg3) -- Line 616
	--[[ Upvalues[4]:
		[1]: module_17_upvr (readonly)
		[2]: module_29_upvr (readonly)
		[3]: module_20_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
	]]
	local ItemData = arg1.ItemData
	local any_ItemInventoryOwnsItem_result1_2 = module_17_upvr.ItemInventoryOwnsItem(arg2, ItemData.Id)
	local var79
	if not var79 then
		var79 = module_29_upvr.SaveDataMeetsUnlockRequirements(module_20_upvr.LocalSaveData, ItemData)
	end
	local var80 = true
	if arg1.CanDisplay == arg3 then
		var80 = true
		if arg1.CanInteract == var79 then
			if arg1.Owned == any_ItemInventoryOwnsItem_result1_2 then
				var80 = false
			else
				var80 = true
			end
		end
	end
	if var80 then
		arg1.StateDirty = true
	end
	arg1.CanDisplay = arg3
	arg1.CanInteract = var79
	arg1.Owned = any_ItemInventoryOwnsItem_result1_2
	arg1.Stroke.Color = tbl_6_upvr.TextColor_ByCanDisplay[arg3]
end
function tbl_6_upvr.EnergyDisplayCreate(arg1, arg2, arg3) -- Line 647
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_15_upvr (readonly)
	]]
	local module_5 = {
		Multiplier = arg1.ItemData.EnergyMultiplier;
		Text = "";
	}
	local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_6 = module_22_upvr.TextBoundsLabelCreate(arg2.ScrollingFrame, nil, arg3)
	module_5.Label = any_TextBoundsLabelCreate_result1_3
	module_5.Bounds = any_TextBoundsLabelCreate_result2_6
	module_5.Icon = module_3_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_15_upvr.EnergyImage_256;
		Parent = arg2.ScrollingFrame;
	})
	return module_5
end
function tbl_6_upvr.EnergyDisplayDestroy(arg1) -- Line 672
	arg1.Label:Destroy()
	arg1.Icon:Destroy()
end
function tbl_6_upvr.EnergyDisplayUpdate(arg1, arg2) -- Line 680
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var85 = arg2
	if var85 then
		if arg1.Multiplier == nil then
			var85 = false
		else
			var85 = true
		end
	end
	local var86 = var85
	if arg1.Visible ~= var86 then
		arg1.Visible = var86
		if arg1.Visible then
		else
		end
		arg1.Text = tbl_6_upvr.Formats.UnlockTitle
		if arg1.Visible ~= true then
		else
		end
		arg1.Icon.Visible = true
		arg1.Label.Text = arg1.Text
		arg1.Label.TextColor3 = tbl_6_upvr.TextColor_ByCanDisplay[var86]
	end
	return true
end
function tbl_6_upvr.ItemDisplayCreate(arg1, arg2, arg3) -- Line 711
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
	]]
	local module_13 = {}
	local tbl_5 = {}
	local ShopImageId = arg1.ItemData.ShopImageId
	if not ShopImageId then
		ShopImageId = module_15_upvr.FALLBACK_SHOP_IMAGE
	end
	tbl_5.Image = ShopImageId
	tbl_5.ZIndex = tbl_6_upvr.ZIndexes.Item
	tbl_5.Parent = arg1.Frame
	module_13.Image = module_3_upvr.I("ImageLabel", module_22_upvr.Properties.Image, module_22_upvr.Properties.Centered, tbl_5)
	module_13.ImageCorner = module_3_upvr.I("UICorner", {
		Parent = module_13.Image;
	})
	return module_13
end
function tbl_6_upvr.ItemDisplayDestroy(arg1) -- Line 736
	arg1.Image:Destroy()
end
function tbl_6_upvr.NameDisplayCreate(arg1, arg2, arg3) -- Line 743
	--[[ Upvalues[3]:
		[1]: module_22_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_15_upvr (readonly)
	]]
	local string_match_result1 = string.match(arg1.ItemData.Name, "%a+-%a+")
	local var92
	if string_match_result1 and 10 < #string_match_result1 then
		var92 = string.gsub(var92, '-', "-\n")
	end
	local module_23 = {
		Text = var92;
	}
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_5 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_23.Text, arg3, nil, nil, 0.825)
	module_23.Label = any_TextBoundsLabelCreate_result1_2
	module_23.Bounds = any_TextBoundsLabelCreate_result2_5
	module_23.Stroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_23.Label;
	})
	return module_23
end
function tbl_6_upvr.NameDisplayDestroy(arg1) -- Line 783
	arg1.Label:Destroy()
end
function tbl_6_upvr.NameDisplayResize(arg1, arg2) -- Line 790
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.Bounds, arg1.Label, arg1.Text, arg2.TextSizeY, arg2.TileTextSizeX)
	arg1.Label.Position = UDim2.fromOffset((arg2.TileSize * 0.5 - arg1.Bounds.X * 0.5) // 1, arg2.TileTextInsetY)
	arg1.Stroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
function tbl_6_upvr.PriceDisplayCreate(arg1, arg2, arg3) -- Line 809
	--[[ Upvalues[5]:
		[1]: module_29_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: module_15_upvr (readonly)
		[5]: module_17_upvr (readonly)
	]]
	local any_GetItemCost_result1, any_GetItemCost_result2 = module_29_upvr.GetItemCost(arg1.ItemData)
	local module_30 = {
		PriceText = module_29_upvr.GeneratePriceString(any_GetItemCost_result1, any_GetItemCost_result2, 1, module_3_upvr.FormatNumberOptions_StandardAbbreviation);
	}
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_4 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_30.PriceText, arg3)
	module_30.PriceLabel = any_TextBoundsLabelCreate_result1
	module_30.PriceBounds = any_TextBoundsLabelCreate_result2_4
	module_30.PriceStroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_30.PriceLabel;
	})
	module_30.CurrencyIcon = module_3_upvr.I("ImageLabel", module_22_upvr.Properties.Image, {
		Image = module_15_upvr.GetImageFromMap(module_15_upvr.ImageMapType.Currency_ByCurrencyType, module_17_upvr.PrimaryCurrencyType, module_15_upvr.ImageMapStyle.OutlineHeavy);
		Parent = arg1.Frame;
	})
	return module_30
end
function tbl_6_upvr.PriceDisplayDestroy(arg1) -- Line 854
	arg1.CurrencyIcon:Destroy()
	arg1.PriceLabel:Destroy()
end
function tbl_6_upvr.PriceDisplayResize(arg1, arg2) -- Line 862
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.PriceBounds, arg1.PriceLabel, arg1.PriceText, arg2.TextSizeLargeY, arg2.PriceSizeX)
	local var104 = (arg2.TileSize * 0.5 - (arg2.CurrencyInset + arg1.PriceBounds.X) * 0.5) // 1
	local var105 = arg2.TileSize - arg2.TileTextInsetY * 1.25 // 1 - arg1.PriceBounds.Y
	arg1.CurrencyIcon.Position = UDim2.fromOffset(var104, var105 + (arg1.PriceBounds.Y * 0.5 - arg2.CurrencySize * 0.5) // 1)
	arg1.CurrencyIcon.Size = arg2.CurrencySizeUDim2
	arg1.PriceLabel.Position = UDim2.fromOffset(var104 + arg2.CurrencyInset, var105)
	arg1.PriceStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
function tbl_6_upvr.RequirementDisplayCreate(arg1, arg2, arg3) -- Line 891
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_15_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: module_22_upvr (readonly)
	]]
	local module_26 = {
		RequirementText = "";
		ProgressFrame = module_3_upvr.I("Frame", {
			BackgroundColor3 = module_15_upvr.BackgroundColor2;
			Parent = arg1.Frame;
		});
		ProgressFrameStroke = tbl_6_upvr.GradientStrokeCreate(module_26.ProgressFrame);
		ProgressFrameCorner = module_3_upvr.I("UICorner", {
			Parent = module_26.ProgressFrame;
		});
		ProgressClippingFrame = module_3_upvr.I("Frame", {
			BackgroundTransparency = 1;
			ClipsDescendants = true;
			ZIndex = 1;
			Parent = module_26.ProgressFrame;
		});
		ProgressBar = module_3_upvr.I("Frame", {
			BackgroundColor3 = module_15_upvr.EnergyColor1;
			Parent = module_26.ProgressClippingFrame;
		});
	}
	module_3_upvr.I("UIGradient", {
		Color = ColorSequence.new({ColorSequenceKeypoint.new(0, module_15_upvr.Gray70), ColorSequenceKeypoint.new(0.4, module_15_upvr.White), ColorSequenceKeypoint.new(0.6, module_15_upvr.White), ColorSequenceKeypoint.new(1, module_15_upvr.Gray70)});
		Parent = module_26.ProgressBar;
	})
	module_26.ProgressBarCorner = module_3_upvr.I("UICorner", {
		Parent = module_26.ProgressBar;
	})
	module_26.ProgressLabel = module_3_upvr.I("TextLabel", module_22_upvr.Properties.Text_Scaled, module_22_upvr.Properties.Centered, {
		FontFace = module_15_upvr.FontFaceNormal;
		Size = UDim2.fromScale(0.9, 0.9);
		TextColor3 = module_15_upvr.TextColor1;
		ZIndex = 2;
		Parent = module_26.ProgressFrame;
	})
	module_26.ProgressLabelStroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_26.ProgressLabel;
	})
	local any_TextBoundsLabelCreate_result1_5, any_TextBoundsLabelCreate_result2_3 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, nil, arg3)
	module_26.RequirementLabel = any_TextBoundsLabelCreate_result1_5
	module_26.RequirementBounds = any_TextBoundsLabelCreate_result2_3
	module_26.RequirementStroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_26.RequirementLabel;
	})
	return module_26
end
function tbl_6_upvr.RequirementDisplayDestroy(arg1) -- Line 980
	arg1.ProgressFrame:Destroy()
	arg1.RequirementLabel:Destroy()
end
function tbl_6_upvr.RequirementDisplayResize(arg1, arg2) -- Line 988
	--[[ Upvalues[1]:
		[1]: module_22_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.RequirementBounds, arg1.RequirementLabel, arg1.RequirementText, arg2.TextSizeSmallY, arg2.TileSize - arg2.TileTextInsetX, 2)
	local var119 = arg2.UIPadY * 0.5 // 1
	local var120 = arg2.TileSize - arg2.TileTextInsetX - var119 - arg1.RequirementBounds.Y - arg2.TextSizeLargeY
	arg1.ProgressBar.Size = arg2.ProgressSizeUDim2
	arg1.ProgressBarCorner.CornerRadius = arg2.ProgressCornerRadius
	arg1.ProgressFrame.Position = UDim2.fromOffset(arg2.ProgressInsetX, var120 + arg1.RequirementBounds.Y + var119)
	arg1.ProgressFrame.Size = arg2.ProgressSizeUDim2
	arg1.ProgressFrameCorner.CornerRadius = arg2.ProgressCornerRadius
	arg1.ProgressFrameStroke.Thickness = module_22_upvr.ScaledSize.StrokeThin
	arg1.ProgressLabelStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
	arg1.RequirementLabel.Position = UDim2.fromOffset((arg2.TileSize * 0.5 - arg1.RequirementBounds.X * 0.5) // 1, var120)
	arg1.RequirementStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
function tbl_6_upvr.RequirementDisplayUpdate(arg1, arg2, arg3) -- Line 1035
	--[[ Upvalues[2]:
		[1]: module_29_upvr (readonly)
		[2]: module_20_upvr (readonly)
	]]
	local var121
	if arg1.Progress ~= arg2 then
		arg1.Progress = arg2
		arg1.ProgressLabel.Text = module_29_upvr.SaveDataFormatUnlockProgress(module_20_upvr.LocalSaveData, arg3)
		arg1.ProgressClippingFrame.Size = UDim2.fromScale(arg2, 1)
	end
	local any_UnlockRequirementGetString_result1 = module_29_upvr.UnlockRequirementGetString(arg3)
	if arg1.RequirementText ~= any_UnlockRequirementGetString_result1 then
		var121 = true
		arg1.RequirementText = any_UnlockRequirementGetString_result1
		arg1.RequirementLabel.Text = any_UnlockRequirementGetString_result1
	end
	return var121
end
function tbl_6_upvr.UnlockDisplayCreate(arg1, arg2, arg3) -- Line 1069
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: module_15_upvr (readonly)
	]]
	local module_12 = {
		InfoText = tbl_6_upvr.UnlockInfoText_ByItemType[arg2.ItemType];
	}
	local var124 = tbl_6_upvr.TextColor_ByCanDisplay[false]
	local any_TextBoundsLabelCreate_result1_6, any_TextBoundsLabelCreate_result2_2 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, tbl_6_upvr.Formats.UnlockTitle, arg3, nil, var124)
	module_12.TitleLabel = any_TextBoundsLabelCreate_result1_6
	module_12.TitleBounds = any_TextBoundsLabelCreate_result2_2
	module_12.TitleStroke = module_3_upvr.I("UIStroke", module_22_upvr.Properties.StrokeText, {
		Color = module_15_upvr.TextStrokeColor1;
		Parent = module_12.TitleLabel;
	})
	local any_TextBoundsLabelCreate_result1_7, any_TextBoundsLabelCreate_result2 = module_22_upvr.TextBoundsLabelCreate(arg1.Frame, module_12.InfoText, arg3, nil, var124)
	module_12.InfoLabel = any_TextBoundsLabelCreate_result1_7
	module_12.InfoBounds = any_TextBoundsLabelCreate_result2
	module_12.InfoStroke = module_3_upvr.C(module_12.TitleStroke, {
		Parent = module_12.InfoLabel;
	})
	return module_12
end
function tbl_6_upvr.UnlockDisplayDestroy(arg1) -- Line 1109
	arg1.TitleLabel:Destroy()
	arg1.InfoLabel:Destroy()
end
function tbl_6_upvr.UnlockDisplayResize(arg1, arg2) -- Line 1117
	--[[ Upvalues[2]:
		[1]: module_22_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
	]]
	module_22_upvr.CachedTextBoundsConform(arg1.TitleBounds, arg1.TitleLabel, tbl_6_upvr.Formats.UnlockTitle, arg2.TextSizeTitleY)
	module_22_upvr.CachedTextBoundsConform(arg1.InfoBounds, arg1.InfoLabel, arg1.InfoText, arg2.TextSizeY, arg2.TileTextSizeX * 0.8 // 1)
	local var131 = arg1.TitleBounds.Y + arg2.UIPadY
	local var132 = (arg2.TileSize * 0.5 - (var131 + arg1.InfoBounds.Y) * 0.5) // 1
	arg1.TitleLabel.Position = UDim2.fromOffset((arg2.TileSize * 0.5 - arg1.TitleBounds.X * 0.5) // 1, var132)
	arg1.InfoLabel.Position = UDim2.fromOffset((arg2.TileSize * 0.5 - arg1.InfoBounds.X * 0.5) // 1, var132 + var131)
	arg1.TitleStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
	arg1.InfoStroke.Thickness = module_22_upvr.ScaledSize.StrokeUltraThin
end
tbl_4_upvr.ButtonThemes = {
	Default = module_8_upvr.Button.Themes.Floating;
	AutoToggle = module_8_upvr.Button.Themes.Action;
	ByPermissionType = {
		[module_3_upvr.NilToken] = module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(58, 176, 255)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000));
		[module_17_upvr.PermissionType.EggsOpen3] = module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(169, 255, 56)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000));
		[module_17_upvr.PermissionType.EggsOpen8] = module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(181, 61, 255)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000));
	};
	Luck = {module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(70, 208, 67)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000)), module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(255, 228, 47)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000)), module_8_upvr.ButtonTheme_GenerateDisabled(module_8_upvr.ButtonThemeCreate_FromFancyColors(module_15_upvr.GenerateFancyButtonColors(Color3.fromRGB(172, 70, 227)), module_15_upvr.TextColor1, Vector3.new(-0, -0, -0.3000)), Vector3.new(-0, -0, -0.3000), Vector3.new(-0, -0, -0.3000))};
}
tbl_4_upvr.LightDirection = CFrame.Angles(-1.0471975511965976, 0.2617993877991494, 0).LookVector
tbl_4_upvr.PetOrientation = CFrame.Angles(0.07853981633974483, 3.5342917352885173, -0.039269908169872414)
tbl_4_upvr.Cycles = {
	EggSpinPeriod = 5;
	LuckSwayPeriod = 6;
}
tbl_4_upvr.Dims = {
	EggSpinAngle = 0.39269908169872414;
	ItemTileSizeEm = Dims_upvr.ItemTileSizeEm * 0.875 * 4 // 1 / 4;
	LuckSwayAngleMax = -10;
	LuckSwapAngleMin = -30;
	PetBoundingBoxInfluence = 0.25;
	PetDisplayColumns = 3;
	PetDisplayRows = 2;
	PetMinDistance = 4;
	PetPad = 0.125;
	RegionScaleX_Pet = 0.4;
	RegionScaleX_Egg = 0.6;
}
tbl_4_upvr.Formats = {
	EggPrice = "Buy %i %s: %s";
	EggUnlock = string.format("Unlock %s Early: %%s", module_15_upvr.FrontEndNames.Items_ByItemType[module_17_upvr.ItemType.Egg].Singular.Proper);
}
tbl_4_upvr.RadioSpecs = {{
	PermissionType = nil;
	Text = "x1";
}, {
	PermissionType = module_17_upvr.PermissionType.EggsOpen3;
	Text = "x3";
}, {
	PermissionType = module_17_upvr.PermissionType.EggsOpen8;
	Text = "x8";
}}
function tbl_4_upvr.ViewportDisplayCreate(arg1) -- Line 1306
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_15_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
	]]
	local module_14 = {
		Offset = CFrame.identity;
		Camera = Instance.new("Camera");
	}
	local tbl_9 = {
		Ambient = Color3.fromRGB(208, 216, 217);
		BackgroundTransparency = 1;
		CurrentCamera = module_14.Camera;
		LightColor = module_15_upvr.White;
		LightDirection = tbl_4_upvr.LightDirection;
		ZIndex = tbl_6_upvr.ZIndexes.Item;
	}
	tbl_9.Parent = arg1
	module_14.ViewportFrame = module_3_upvr.I("ViewportFrame", tbl_9)
	module_14.ViewportFrameCorner = module_3_upvr.I("UICorner", {
		Parent = module_14.ViewportFrame;
	})
	return module_14
end
function tbl_4_upvr.ViewportDisplaySetModel(arg1, arg2, arg3, arg4) -- Line 1333
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: module_15_upvr (readonly)
	]]
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
		local var149 = any_GetBoundingBox_result2.Magnitude * 0.5 / math.tan(math.rad(Camera.FieldOfView) * 0.5)
		if arg3 then
			if var149 < arg3 then
				var149 = arg3
			elseif arg4 then
				var149 = module_4_upvr.Lerp(arg3, var149, arg4)
			end
		end
		Camera.CFrame = CFrame.new(0, 0, var149)
	elseif not arg1.LoadingLabel then
		arg1.LoadingLabel = module_3_upvr.I("TextLabel", module_22_upvr.Properties.Text_Scaled, module_22_upvr.Properties.Centered, {
			FontFace = module_15_upvr.FontFaceItalic;
			Size = UDim2.fromScale(0.75, 0.25);
			Text = "Loading...";
			TextColor3 = module_15_upvr.TextColor1;
			TextTransparency = module_15_upvr.TextDeemphasizedTransparency1;
			Parent = arg1.ViewportFrame;
		})
	end
end
function tbl_4_upvr.EggDisplayCreate(arg1, arg2, arg3) -- Line 1390
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	return tbl_4_upvr.ViewportDisplayCreate(arg1.Frame)
end
function tbl_4_upvr.EggDisplayDestroy(arg1) -- Line 1401
	arg1.ViewportFrame:Destroy()
end
function tbl_4_upvr.RadioButtonCreate(arg1, arg2, arg3) -- Line 1410
	--[[ Upvalues[4]:
		[1]: module_8_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: module_22_upvr (readonly)
	]]
	local module = {
		Enabled = true;
		Selected = false;
	}
	local tbl_14 = {}
	tbl_14.Text = arg1
	module.Button = module_8_upvr.Button.CreateFancy(arg3, arg2, tbl_14)
	local tbl_3 = {
		BackgroundColor3 = module_15_upvr.RadioButtonEnabledColor1;
	}
	tbl_3.Parent = arg3
	module.RadioFrame = module_3_upvr.I("Frame", tbl_3)
	module_3_upvr.I("UICorner", {
		CornerRadius = UDim.new(1, 0);
		Parent = module.RadioFrame;
	})
	module.RadioSelectedFrame = module_3_upvr.C(module.RadioFrame, module_22_upvr.Properties.Centered, {
		BackgroundColor3 = module_15_upvr.RadioButtonSelectColor1;
		Visible = false;
		Parent = module.RadioFrame;
	})
	return module
end
function tbl_4_upvr.RadioButtonDestroy(arg1) -- Line 1456
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	arg1.RadioFrame:Destroy()
	module_8_upvr.Button.Destroy(arg1.Button)
end
function tbl_4_upvr.RadioButtonSetEnabled(arg1, arg2) -- Line 1464
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	local var156
	if arg1.Enabled ~= arg2 then
		arg1.Enabled = arg2
		if arg2 then
			var156 = module_15_upvr.RadioButtonEnabledColor1
		else
			var156 = module_15_upvr.RadioButtonDisabledColor1
		end
		arg1.RadioFrame.BackgroundColor3 = var156
		var156 = arg1.Button
		var156.Input.Enabled = arg2
	end
end
function tbl_4_upvr.RadioButtonUpdate(arg1, arg2, arg3) -- Line 1481
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	if arg1.Selected ~= arg2 then
		arg1.Selected = arg2
		arg1.RadioSelectedFrame.Visible = arg2
	end
	module_8_upvr.Button.Update(arg1.Button, arg3)
end
local function ResolveInventory(arg1, arg2) -- Line 1498
	--[[ Upvalues[7]:
		[1]: module_6_upvr (readonly)
		[2]: module_17_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: CommonState_upvr (readonly)
		[6]: module_29_upvr (readonly)
		[7]: module_20_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local var159
	if arg1.DisplayedEggTile ~= nil then
		var159 = false
	else
		var159 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 162. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 162. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 75 start (CF ANALYSIS FAILED)
	if true then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [224.13]
		if nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [224.14]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil == nil
			end
			if var159 or INLINED() then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
				-- KONSTANTWARNING: GOTO [224] #162
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil and nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [224.15]
				if not nil then
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
				end
			end
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
	end
	-- KONSTANTERROR: [24] 18. Error Block 75 end (CF ANALYSIS FAILED)
end
tbl_4_upvr.ResolveInventory = ResolveInventory
local module_31_upvr = require(Modules:WaitForChild("Gamepasses"))
local module_2_upvr = require(Modules:WaitForChild("Products"))
local module_10_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local function Initialize(arg1) -- Line 1652
	--[[ Upvalues[18]:
		[1]: module_29_upvr (readonly)
		[2]: module_17_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: module_25_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: module_8_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: tbl_6_upvr (readonly)
		[10]: tbl_4_upvr (readonly)
		[11]: module_4_upvr (readonly)
		[12]: module_16_upvr (readonly)
		[13]: module_31_upvr (readonly)
		[14]: module_2_upvr (readonly)
		[15]: module_20_upvr (readonly)
		[16]: module_10_upvr (readonly)
		[17]: module_9_upvr (readonly)
		[18]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local var175 = module_17_upvr.CurrencyType_ByItemType[module_17_upvr.ItemType.Egg]
	local tbl = {
		_Connections = {};
		CurrencyDirty = false;
		LuckDirty = true;
		SelectionPending = true;
		PriceStringPending = false;
		DisplayedEggTile = nil;
		PendingEggTile = nil;
		EggCooldown = nil;
		EggPriceText = "";
		EggTile_ByButtonInput = {};
		LuckSizeX = 0;
		LuckSizeY = 0;
		LuckButtons = {};
		LuckDisplay = nil;
		PetDisplays = {};
		RadioButton_ByPermissionType = {};
		RadioButtons = {};
		TitleInset = 0;
		Flag = module_22_upvr.TextBoundsFlagCreate();
		TitleHeader = module_25_upvr.MenuHeaderCreate("Pets & Eggs", arg1.Wrapper);
		EggNameLabel = module_3_upvr.I("TextLabel", module_22_upvr.Properties.Text_Scaled, {
			FontFace = module_15_upvr.FontFaceNormal;
			TextColor3 = module_15_upvr.TextColor1;
			Parent = arg1.Wrapper;
		});
		EggPurchaseButton = module_8_upvr.Button.Common.Create.InlineIcon(arg1.Wrapper, module_8_upvr.Button.ButtonTheme_ByCurrencyType[var175], {
			Image = module_15_upvr.GetImageFromMap(module_15_upvr.ImageMapType.Currency_ByCurrencyType, var175, module_15_upvr.ImageMapStyle.OutlineHeavy);
		});
	}
	local clone = table.clone(assert(assert(module_29_upvr.ItemsSold_ByLevelData[arg1.Parent.LevelData], "Missing ItemsSold").Eggs, "Missing EggDataArray"))
	module_29_upvr.SortItemData_ByUnlockRequirements(clone)
	local any_Create_result1_2 = tbl_upvr.Create(clone, module_17_upvr.ItemType.Egg, tbl.Flag, arg1.Wrapper)
	tbl.ItemRegion = any_Create_result1_2
	for _, v_3 in clone do
		if not v_3.Disabled then
			local any_Create_result1 = tbl_6_upvr.Create(v_3, any_Create_result1_2.ScrollingFrame)
			any_Create_result1.Frame.Active = true
			any_Create_result1.Frame.Selectable = true
			any_Create_result1.Input = module_8_upvr.Input.Create(any_Create_result1.Frame)
			tbl.EggTile_ByButtonInput[any_Create_result1.Input] = any_Create_result1
			local assert_result1_2 = assert(assert(module_8_upvr.GetThemeFromInput(any_Create_result1.Input, tbl_4_upvr.ButtonThemes.Default)).Color)
			any_Create_result1.Frame.BackgroundColor3 = assert_result1_2
			any_Create_result1.ColorTween = module_4_upvr.new(assert_result1_2, 0.375, Enum.EasingStyle.Quad)
			any_Create_result1_2.Tiles[#any_Create_result1_2.Tiles + 1] = any_Create_result1
		end
	end
	tbl.LuckWrapper = module_3_upvr.I("Frame", {
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Parent = module_16_upvr.Properties.ScreenGui;
	})
	tbl.LuckFrame = module_3_upvr.I("Frame", {
		BackgroundColor3 = module_15_upvr.BackgroundColor1;
		BackgroundTransparency = module_15_upvr.BackgroundTransparency1;
		ZIndex = -1000;
		Parent = tbl.LuckWrapper;
	})
	tbl.LuckCorner = module_3_upvr.I("UICorner", {
		Parent = tbl.LuckFrame;
	})
	local tbl_7 = {}
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [374] 244. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [374] 244. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [349] 227. Error Block 52 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if not assert(module_8_upvr.GetThemeFromInput(any_Create_result1.Input, tbl_4_upvr.ButtonThemes.Default)) and assert(module_8_upvr.GetThemeFromInput(any_Create_result1.Input, tbl_4_upvr.ButtonThemes.Default)) == 2 then
		for _, v_4 in {module_17_upvr.DurableType.Luck3x, module_17_upvr.DurableType.Luck4x} do
			local var189 = module_2_upvr.ProductDataDurable_ByDurableType[v_4]
			if var189 then
				tbl_7[#tbl_7 + 1] = {
					IsGamepass = false;
					LuckSource = v_4;
					Product = var189;
				}
			end
		end
		for i_5, v_5_upvr in tbl_7 do
			var189 = tbl_4_upvr.ButtonThemes.Luck[i_5]
			local var191 = var189
			if not var191 then
				var191 = tbl_4_upvr.ButtonThemes.Default
			end
			local any_AddImage_result1_upvr = module_8_upvr.Button.AddImage(module_8_upvr.Button.CreateFancyBase(tbl.LuckWrapper, var191), {
				Position = UDim2.new(module_8_upvr.Button.Properties.FancyPosX, module_8_upvr.Button.Properties.FancyPosY);
				Size = UDim2.fromScale(0.9, 0.9);
			})
			any_AddImage_result1_upvr.LuckProduct = v_5_upvr
			local var195_upvw = false
			any_AddImage_result1_upvr.Button.Activated:Connect(function() -- Line 1852
				--[[ Upvalues[6]:
					[1]: var195_upvw (read and write)
					[2]: module_20_upvr (copied, readonly)
					[3]: v_5_upvr (readonly)
					[4]: module_31_upvr (copied, readonly)
					[5]: module_10_upvr (copied, readonly)
					[6]: module_17_upvr (copied, readonly)
				]]
				if var195_upvw then
				else
					var195_upvw = true
					if not module_20_upvr.LuckState.Source_ById[v_5_upvr.LuckSource] then
						if v_5_upvr.IsGamepass then
							module_31_upvr.GamepassBuy(v_5_upvr.Product, module_20_upvr.LocalPlayerState)
						else
							module_10_upvr.MakeRequest({
								Request = module_17_upvr.StateRequestType.DurableBuy;
								Args = {v_5_upvr.Product.DurableType};
								Callback = coroutine.running();
							})
						end
					end
					var195_upvw = false
				end
			end)
			module_29_upvr.GetProductInfoAsync(v_5_upvr.Product, function(arg1_2) -- Line 1880
				--[[ Upvalues[1]:
					[1]: any_AddImage_result1_upvr (readonly)
				]]
				any_AddImage_result1_upvr.Image.Image = "rbxassetid://"..arg1_2.IconImageAssetId
			end)
			tbl.LuckButtons[#tbl.LuckButtons + 1] = any_AddImage_result1_upvr
		end
		tbl.PetFrame = module_3_upvr.I("Frame", {
			BackgroundTransparency = 1;
			Parent = arg1.Wrapper;
		})
		tbl.PetFrameCorner = module_3_upvr.I("UICorner", {
			Parent = tbl.PetFrame;
		})
		tbl.PetStroke = tbl_6_upvr.GradientStrokeCreate(tbl.PetFrame)
		tbl.PetScrollingFrame = module_9_upvr.CreateAndRegisterScrollingFrame(module_22_upvr.Properties.ScrollingFrame_Vertical, module_15_upvr.ScrollBarStyles.RoundThreeQuarterFull, {
			Parent = tbl.PetFrame;
		})
		-- KONSTANTWARNING: GOTO [566] #375
	end
	-- KONSTANTERROR: [349] 227. Error Block 52 end (CF ANALYSIS FAILED)
end
tbl_4_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 2094
	--[[ Upvalues[4]:
		[1]: module_8_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_9_upvr (readonly)
	]]
	for _, v_6 in arg1._Connections do
		v_6:Disconnect()
	end
	for _, v_7 in arg1.ItemRegion.Tiles do
		module_8_upvr.Input.Destroy(v_7.Input)
	end
	for _, v_8 in arg1.RadioButtons do
		tbl_4_upvr.RadioButtonDestroy(v_8)
	end
	for _, v_9 in arg1.LuckButtons do
		module_8_upvr.Button.Destroy(v_9)
	end
	arg1.LuckWrapper:Destroy()
	tbl_upvr.Destroy(arg1.ItemRegion)
	module_9_upvr.UnregisterScrollingFrame(arg1.PetScrollingFrame)
end
tbl_4_upvr.Destroy = Destroy
function tbl_4_upvr.UpdateEggPriceText(arg1, arg2) -- Line 2123
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	if arg1.EggPriceText ~= arg2 then
		arg1.Flag.Dirty = true
		arg1.EggPriceText = arg2
		module_8_upvr.Button.SetText(arg1.EggPurchaseButton, arg2)
	end
end
function tbl_4_upvr.DimensionsChanged(arg1) -- Line 2136
	--[[ Upvalues[1]:
		[1]: module_16_upvr (readonly)
	]]
	local var210 = assert(arg1.Parent).CollectionPosY + arg1.TitleInset
	local var211 = arg1.LuckSizeX * module_16_upvr.CollectionGetDisplayFactor(arg1) // 1
	arg1.LuckWrapper.Position = UDim2.fromOffset(module_16_upvr.Properties.PosX - var211, module_16_upvr.Properties.PosY + var210)
	arg1.LuckWrapper.Size = UDim2.fromOffset(var211, math.min(arg1.LuckSizeY, module_16_upvr.Properties.SizeY - var210))
	arg1.OverhangSize = UDim2.fromOffset(-var211, 0)
	arg1.TargetOffset = UDim2.fromOffset(arg1.LuckSizeX * 0.5 // 1, 0)
end
local module_19_upvr = require(Modules:WaitForChild("GameBalanceUtility"))
local module_18_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr = require(Modules:WaitForChild("Pets"))
local module_11_upvr = require(Modules:WaitForChild("BUPGameClient"))
local module_7_upvr = require(Modules:WaitForChild("UIEffects"))
local function Update(arg1, arg2, arg3) -- Line 2163
	--[[ Upvalues[21]:
		[1]: module_22_upvr (readonly)
		[2]: Dims_upvr (readonly)
		[3]: module_16_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: CommonState_upvr (readonly)
		[6]: module_19_upvr (readonly)
		[7]: module_20_upvr (readonly)
		[8]: tbl_4_upvr (readonly)
		[9]: module_3_upvr (readonly)
		[10]: module_15_upvr (readonly)
		[11]: module_8_upvr (readonly)
		[12]: module_18_upvr (readonly)
		[13]: module_17_upvr (readonly)
		[14]: module_upvr (readonly)
		[15]: module_29_upvr (readonly)
		[16]: tbl_6_upvr (readonly)
		[17]: module_25_upvr (readonly)
		[18]: tbl_upvr (readonly)
		[19]: module_4_upvr (readonly)
		[20]: module_11_upvr (readonly)
		[21]: module_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 292 start (CF ANALYSIS FAILED)
	local var217 = module_22_upvr.EmSize * Dims_upvr.WrapperSizeXEm
	if arg1.PendingEggTile == arg1.DisplayedEggTile then
		var217 = false
	else
		var217 = true
	end
	arg1.DisplayedEggTile = arg1.PendingEggTile
	-- KONSTANTERROR: [0] 1. Error Block 292 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 25. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 25. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 27. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 27. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 28. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 28. Error Block 8 end (CF ANALYSIS FAILED)
end
tbl_4_upvr.Update = Update
module_16_upvr.CollectionMethods_ByType[module_16_upvr.CollectionType.Menu_Pets] = tbl_4_upvr
function tbl_2_upvr.ResolveInventory(arg1, arg2) -- Line 3072
	--[[ Upvalues[6]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: module_17_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: module_29_upvr (readonly)
		[6]: module_20_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [362] 256. Error Block 68 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [362] 256. Error Block 68 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function tbl_2_upvr.Initialize(arg1) -- Line 3289
	--[[ Upvalues[14]:
		[1]: module_29_upvr (readonly)
		[2]: module_22_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: module_15_upvr (readonly)
		[5]: module_25_upvr (readonly)
		[6]: module_17_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: tbl_6_upvr (readonly)
		[9]: module_8_upvr (readonly)
		[10]: module_6_upvr (readonly)
		[11]: module_3_upvr (readonly)
		[12]: tbl_2_upvr (readonly)
		[13]: module_16_upvr (readonly)
		[14]: module_20_upvr (readonly)
	]]
	local LevelData_upvr = arg1.Parent.LevelData
	local tbl_13 = {
		_Connections = {};
		Regions = {};
		Flag = module_22_upvr.TextBoundsFlagCreate();
		ScrollingFrame = module_9_upvr.CreateAndRegisterScrollingFrame(module_22_upvr.Properties.ScrollingFrame_Vertical, module_15_upvr.ScrollBarStyles.RoundThreeQuarterFull, {
			Parent = arg1.Wrapper;
		});
		TitleHeader = module_25_upvr.MenuHeaderCreate("Item Shop", tbl_13.ScrollingFrame);
	}
	for i_10, v_10 in assert(module_29_upvr.ItemsSold_ByLevelData[LevelData_upvr], "Missing ItemsSold").ByType do
		if i_10 ~= module_17_upvr.ItemType.Egg and module_17_upvr.ItemKey_ByItemType[i_10] and #v_10 ~= 0 then
			v_10 = table.clone(v_10)
			module_29_upvr.SortItemData_ByUnlockRequirements(v_10)
			local any_Create_result1_upvr_2 = tbl_upvr.Create(v_10, i_10, tbl_13.Flag, tbl_13.ScrollingFrame)
			any_Create_result1_upvr_2.TitleDisplay = tbl_upvr.TitleDisplayCreate(any_Create_result1_upvr_2, tbl_13.Flag, tbl_13.ScrollingFrame)
			for _, v_11 in v_10 do
				if not v_11.Disabled then
					local any_Create_result1_upvr = tbl_6_upvr.Create(v_11, any_Create_result1_upvr_2.ScrollingFrame)
					any_Create_result1_upvr.Equipped = false
					any_Create_result1_upvr.Button = module_8_upvr.Button.CreateFancy(any_Create_result1_upvr_2.ScrollingFrame, tbl_6_upvr.ButtonThemeDefault, {
						Text = tbl_6_upvr.Formats.ButtonDefault;
					})
					local var229_upvw = true
					any_Create_result1_upvr.Button.Button.Activated:Connect(function() -- Line 3372
						--[[ Upvalues[5]:
							[1]: var229_upvw (read and write)
							[2]: any_Create_result1_upvr (readonly)
							[3]: module_17_upvr (copied, readonly)
							[4]: any_Create_result1_upvr_2 (readonly)
							[5]: module_6_upvr (copied, readonly)
						]]
						if var229_upvw then
							local var231
							if var231 then
								var231 = nil
								if not any_Create_result1_upvr.Owned then
									var231 = module_17_upvr.ItemAction.Buy
								elseif not any_Create_result1_upvr.Equipped then
									var231 = module_17_upvr.ItemAction.Equip
								elseif any_Create_result1_upvr_2.ItemType ~= module_17_upvr.ItemType.World then
									var231 = module_17_upvr.ItemAction.Unequip
								end
								if var231 then
									var229_upvw = false
									module_6_upvr.ItemActionPerform(var231, any_Create_result1_upvr_2.ItemType, any_Create_result1_upvr.ItemData, true)
									var229_upvw = true
								end
							end
						end
					end)
					any_Create_result1_upvr_2.Tiles[#any_Create_result1_upvr_2.Tiles + 1] = any_Create_result1_upvr
				end
			end
			tbl_13.Regions[#tbl_13.Regions + 1] = any_Create_result1_upvr_2
		end
	end
	local any_TableMerge_result1_upvr = module_3_upvr.TableMerge(tbl_13, arg1)
	table.sort(any_TableMerge_result1_upvr.Regions, tbl_2_upvr.SortItemRegions)
	tbl_2_upvr.ResolveInventory(any_TableMerge_result1_upvr, any_TableMerge_result1_upvr.Flag)
	any_Create_result1_upvr_2 = any_TableMerge_result1_upvr._Connections
	any_Create_result1_upvr_2 = module_20_upvr.Signals
	any_TableMerge_result1_upvr._Connections[#any_Create_result1_upvr_2 + 1] = any_Create_result1_upvr_2.LevelStatsChanged:Connect(function(arg1_3, arg2) -- Line 3416, Named "ResolveOnChange"
		--[[ Upvalues[4]:
			[1]: LevelData_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: any_TableMerge_result1_upvr (readonly)
			[4]: module_16_upvr (copied, readonly)
		]]
		if arg1_3 == LevelData_upvr then
			if tbl_2_upvr.ResolveInventory(any_TableMerge_result1_upvr, any_TableMerge_result1_upvr.Flag) then
				module_16_upvr.CollectionMarkDirty(any_TableMerge_result1_upvr, "DrawDirty")
			end
		end
	end)
	local function ResolveOnInventoryUpdate_upvr(arg1_4, arg2) -- Line 3430, Named "ResolveOnInventoryUpdate"
		--[[ Upvalues[3]:
			[1]: any_TableMerge_result1_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: module_16_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 25. Error Block 23 start (CF ANALYSIS FAILED)
		if false then
			-- KONSTANTWARNING: GOTO [35] #27
		end
		-- KONSTANTERROR: [32] 25. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [33.8]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTERROR: [7] 7. Error Block 2 end (CF ANALYSIS FAILED)
	end
	any_Create_result1_upvr_2 = #any_TableMerge_result1_upvr._Connections
	any_Create_result1_upvr_2 = module_20_upvr.Signals.InventoryEquippedChanged
	any_Create_result1_upvr_2 = any_Create_result1_upvr_2:Connect(function(arg1_5) -- Line 3468
		--[[ Upvalues[1]:
			[1]: ResolveOnInventoryUpdate_upvr (readonly)
		]]
		ResolveOnInventoryUpdate_upvr(arg1_5)
	end)
	any_TableMerge_result1_upvr._Connections[any_Create_result1_upvr_2 + 1] = any_Create_result1_upvr_2
	any_Create_result1_upvr_2 = #any_TableMerge_result1_upvr._Connections
	any_Create_result1_upvr_2 = module_20_upvr.Signals.InventoryOwnedAdded:Connect(ResolveOnInventoryUpdate_upvr)
	any_TableMerge_result1_upvr._Connections[any_Create_result1_upvr_2 + 1] = any_Create_result1_upvr_2
	any_Create_result1_upvr_2 = #any_TableMerge_result1_upvr._Connections
	any_Create_result1_upvr_2 = module_20_upvr.Signals.InventoryOwnedRemoved:Connect(ResolveOnInventoryUpdate_upvr)
	any_TableMerge_result1_upvr._Connections[any_Create_result1_upvr_2 + 1] = any_Create_result1_upvr_2
	return any_TableMerge_result1_upvr
end
function tbl_2_upvr.Destroy(arg1) -- Line 3483
	--[[ Upvalues[3]:
		[1]: module_9_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	for _, v_12 in arg1._Connections do
		v_12:Disconnect()
	end
	module_9_upvr.UnregisterScrollingFrame(arg1.ScrollingFrame)
	for _, v_13 in arg1.Regions do
		for _, v_14 in v_13.Tiles do
			module_8_upvr.Button.Destroy(v_14.Button)
		end
		tbl_upvr.Destroy(v_13)
	end
end
function tbl_2_upvr.Update(arg1, arg2, arg3) -- Line 3504
	--[[ Upvalues[7]:
		[1]: module_22_upvr (readonly)
		[2]: module_16_upvr (readonly)
		[3]: Dims_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
		[5]: module_25_upvr (readonly)
		[6]: module_8_upvr (readonly)
		[7]: tbl_upvr (readonly)
	]]
	if module_22_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
		local assert_result1 = assert(arg1.Parent)
		local PadX = module_16_upvr.Properties.PadX
		local PadY_2 = module_16_upvr.Properties.PadY
		local var259 = module_22_upvr.EmSize * Dims_upvr.WrapperSizeXEm // 1
		local ScrollBar = module_22_upvr.SteppedSize.ScrollBar
		local any_ItemDimsCalculate_result1 = tbl_6_upvr.ItemDimsCalculate(var259)
		local var262 = any_ItemDimsCalculate_result1.TileSizeInset + PadY_2 * 0.75 // 1
		local TextSizeLargeY = any_ItemDimsCalculate_result1.TextSizeLargeY
		local minimum = math.min(any_ItemDimsCalculate_result1.TileSize - PadX, module_22_upvr.SteppedSize.ButtonFancyX)
		local var265 = module_22_upvr.SteppedSize.ButtonFancyY * Dims_upvr.ItemTileButtonScaleY // 1
		local var266 = var262 + TextSizeLargeY + PadY_2 * 0.75 // 1
		local tbl_10 = {}
		local any_MenuHeaderReposition_result1 = module_25_upvr.MenuHeaderReposition(arg1.TitleHeader, var259, (var259 - any_ItemDimsCalculate_result1.SizeX) * 0.5 // 1 + PadX, 0, Dims_upvr.HeaderTextSizeEm)
		module_22_upvr.DimTrackerPad(any_MenuHeaderReposition_result1, 0, PadY_2)
		for _, v_15 in arg1.Regions do
			for i_16, v_16 in v_15.Tiles do
				local var269 = any_ItemDimsCalculate_result1.TilePaddedSizeInsetX * (i_16 - 1)
				tbl_6_upvr.ItemTileResize(v_16, any_ItemDimsCalculate_result1, var269)
				v_16.Button.Button.Position = UDim2.fromOffset(var269 + (any_ItemDimsCalculate_result1.TileSizeInset * 0.5 - minimum * 0.5) // 1, var266)
				v_16.Button.Button.Size = UDim2.fromOffset(minimum, var265)
				module_8_upvr.Button.AdjustText(v_16.Button, nil, nil, nil, module_22_upvr.SteppedSize.ButtonFancyText * Dims_upvr.ItemTileButtonScaleY // 1)
				if v_16.EnergyDisplay then
					local EnergyDisplay = v_16.EnergyDisplay
					local CachedTextBoundsConform = module_22_upvr.CachedTextBoundsConform
					CachedTextBoundsConform(EnergyDisplay.Bounds, EnergyDisplay.Label, EnergyDisplay.Text, TextSizeLargeY)
					if EnergyDisplay.Visible then
						CachedTextBoundsConform = TextSizeLargeY
					else
						CachedTextBoundsConform = 0
					end
					local var272 = var269 + (any_ItemDimsCalculate_result1.TileSizeInset * 0.5 - (EnergyDisplay.Bounds.X + CachedTextBoundsConform) * 0.5) // 1
					if EnergyDisplay.Visible then
						EnergyDisplay.Icon.Position = UDim2.fromOffset(var272, var262)
						EnergyDisplay.Icon.Size = UDim2.fromOffset(TextSizeLargeY, TextSizeLargeY)
					end
					EnergyDisplay.Label.Position = UDim2.fromOffset(var272 + CachedTextBoundsConform, var262)
				end
				if v_16.ItemDisplay then
					local ItemDisplay = v_16.ItemDisplay
					ItemDisplay.Image.Size = any_ItemDimsCalculate_result1.ItemSizeUDim2
					ItemDisplay.ImageCorner.CornerRadius = any_ItemDimsCalculate_result1.ItemCornerRadius
				end
				if v_16.NameDisplay then
					tbl_6_upvr.NameDisplayResize(v_16.NameDisplay, any_ItemDimsCalculate_result1)
				end
				if v_16.PriceDisplay then
					tbl_6_upvr.PriceDisplayResize(v_16.PriceDisplay, any_ItemDimsCalculate_result1)
				end
				if v_16.RequirementDisplay then
					tbl_6_upvr.RequirementDisplayResize(v_16.RequirementDisplay, any_ItemDimsCalculate_result1)
				end
				if v_16.UnlockDisplay then
					tbl_6_upvr.UnlockDisplayResize(v_16.UnlockDisplay, any_ItemDimsCalculate_result1)
				end
			end
			tbl_upvr.Resize(v_15, any_ItemDimsCalculate_result1, any_MenuHeaderReposition_result1, tbl_10, var266 + var265 + math.ceil(module_22_upvr.ScaledSize.ButtonFancyBorder))
		end
		module_22_upvr.DimTrackerPad(any_MenuHeaderReposition_result1, 0, -PadY_2)
		module_22_upvr.DimTrackerApply(any_MenuHeaderReposition_result1, tbl_10, true)
		local minimum_2 = math.min(any_MenuHeaderReposition_result1.Offset, module_22_upvr.EmSize * Dims_upvr.WrapperSizeYEm // 1 - PadY_2)
		arg1.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, any_MenuHeaderReposition_result1.Offset)
		arg1.ScrollingFrame.Position = UDim2.fromOffset(0, 0)
		arg1.ScrollingFrame.ScrollBarThickness = ScrollBar
		arg1.ScrollingFrame.Size = UDim2.fromOffset(any_ItemDimsCalculate_result1.SizeX + PadX + 2 * ScrollBar, minimum_2)
		arg1.Wrapper.Position = UDim2.new(arg1.Wrapper.Position.X, UDim.new(0, assert_result1.CollectionPosY))
		arg1.Wrapper.Size = UDim2.fromOffset(var259, any_MenuHeaderReposition_result1.Offset)
		arg1.TargetSize = UDim2.fromOffset(var259, (assert_result1.CollectionPosY) + (minimum_2 + PadY_2))
	end
	for _, v_17 in arg1.Regions do
		tbl_upvr.Update(v_17)
		for _, v_18 in v_17.Tiles do
			module_8_upvr.Button.Update(v_18.Button, arg3)
		end
	end
end
module_16_upvr.CollectionMethods_ByType[module_16_upvr.CollectionType.Menu_Shop] = tbl_2_upvr
return {}