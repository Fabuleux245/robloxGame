-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:20
-- Luau version 6, Types version 3
-- Time taken: 0.015619 seconds

local tbl_3 = {}
local GuiService_upvr = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3 = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("ItemActionHandler"))
local module_5_upvr = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_7 = require(Modules:WaitForChild("UIButton"))
local module_upvr_3 = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_upvr_5 = require(Modules:WaitForChild("UILegacySupport"))
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
local module = require(Modules:WaitForChild("UserInterface"):WaitForChild("CollectionUISystem"))
local tbl_7_upvr = {
	LastActiveCollection = nil;
	LevelsInProximity = {};
	PreservedLevelData = nil;
	RequestedLevelData = nil;
	DisplayedLevelData = nil;
	LastDisplayedEggData = nil;
}
tbl_3.CommonState = tbl_7_upvr
local tbl_5_upvr = {
	ColumnScale = 0.75;
	HeaderTextSizeEm = 1.75;
	ItemTileButtonScaleY = 0.75;
	ItemTileCornerRadiusEm = 0.75;
	ItemTileItemInsetEm = 0.5;
	ItemTileSizeEm = 7.25;
	TabButtonTextSizeEm = 1.25;
	TabButtonMaxSizeXEm = 8;
	TextSizeEm = 1;
	TextSizeLargeEm = 1.125;
	TextSizeSmallEm = 0.75;
	TextSizeTitleEm = 1.375;
	WrapperSizeXEm = 32;
	WrapperSizeYEm = 20;
}
tbl_3.Dims = tbl_5_upvr
local tbl_6_upvr = {}
local any_TableMerge_result1 = module_upvr_4.TableMerge(module.CollectionType, {
	Menu_Landing = 1000;
	Menu_Pets = 1010;
	Menu_Shop = 1020;
	Menu_Stats = 1030;
})
tbl_3.CollectionType = any_TableMerge_result1
tbl_3.IsOpen = module_upvr_3.CreateExclusivityOpenHandler(module_upvr_3.LevelMenuUIGroup)
local any_CollectionUICreate_result1_upvr = module.CollectionUICreate(any_TableMerge_result1, module_upvr_4.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Menu_Landing, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Menu_Stats, any_TableMerge_result1.Menu_Landing}, {any_TableMerge_result1.Menu_Pets, any_TableMerge_result1.Menu_Landing}, {any_TableMerge_result1.Menu_Shop, any_TableMerge_result1.Menu_Landing}}), tbl_3.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 104
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	tbl_7_upvr.RequestedLevelData = nil
	module_4_upvr.UIExclusivityGroup.Deactivate(module_upvr_3.LevelMenuUIGroup)
end
local module_upvr_6 = require(Modules:WaitForChild("UISelection"))
module_3.Signals.EggHatched:Connect(function() -- Line 109
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if any_CollectionUICreate_result1_upvr.State.UIMain and module_upvr_6.IsInterfaceSelected(any_CollectionUICreate_result1_upvr.State.UIMain.ScreenGui) then
		GuiService_upvr.SelectedObject = nil
	end
	any_CollectionUICreate_result1_upvr.CloseRequested()
end)
local RequestClose_2_upvr = any_CollectionUICreate_result1_upvr.RequestClose
function any_CollectionUICreate_result1_upvr.RequestClose(arg1) -- Line 122
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: RequestClose_2_upvr (readonly)
	]]
	tbl_7_upvr.PreservedLevelData = nil
	tbl_7_upvr.RequestedLevelData = nil
	tbl_7_upvr.LastDisplayedEggData = nil
	table.clear(tbl_7_upvr.LevelsInProximity)
	RequestClose_2_upvr(arg1)
end
RequestClose_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local any_EggBuyContextCreate_result1_upvr = module_6_upvr.EggBuyContextCreate()
local any_MemberCreate_result1_upvr = module_upvr_3.MemberCreate(module_upvr_3.LevelMenuUIGroup)
function any_CollectionUICreate_result1_upvr.RenderStepped(arg1, arg2) -- Line 139
	--[[ Upvalues[9]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: any_EggBuyContextCreate_result1_upvr (readonly)
		[4]: module_4_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr_5 (readonly)
		[7]: any_MemberCreate_result1_upvr (readonly)
		[8]: any_CollectionUICreate_result1_upvr (readonly)
		[9]: RequestClose_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	local var35
	if not tbl_7_upvr.RequestedLevelData and tbl_7_upvr.PreservedLevelData then
		var35 = tbl_7_upvr
		tbl_7_upvr.RequestedLevelData = var35.PreservedLevelData
		tbl_7_upvr.PreservedLevelData = nil
	end
	var35 = tbl_7_upvr
	local RequestedLevelData = var35.RequestedLevelData
	if not RequestedLevelData then
		var35 = tbl_7_upvr.LevelsInProximity
		RequestedLevelData = var35[1]
	end
	tbl_7_upvr.DisplayedLevelData = RequestedLevelData
	if tbl_7_upvr.DisplayedLevelData == nil then
		var35 = false
	else
		var35 = true
	end
	module_6_upvr.EggBuyContextSetActive(any_EggBuyContextCreate_result1_upvr, var35)
	if tbl_7_upvr.DisplayedLevelData then
		var35 = module_4_upvr
		var35 = module_upvr_3
		var35 = true
		local any_HasExclusivity_result1 = var35.UIExclusivityGroup.HasExclusivity(var35.LevelMenuUIGroup, var35)
		if any_HasExclusivity_result1 then
			var35 = module_upvr_5.AnyShopsOpen()
			any_HasExclusivity_result1 = not var35
		end
		if any_HasExclusivity_result1 then
			var35 = module_4_upvr.UIExclusivityMember
			var35 = any_MemberCreate_result1_upvr
			var35.SetActive(var35, true)
			-- KONSTANTWARNING: GOTO [89] #68
		end
	elseif any_MemberCreate_result1_upvr.Active then
		var35 = module_4_upvr
		var35 = false
		var35.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, var35)
		any_CollectionUICreate_result1_upvr.RequestClose()
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [89] 68. Error Block 18 start (CF ANALYSIS FAILED)
	RequestClose_2_upvr(arg1, arg2)
	-- KONSTANTERROR: [89] 68. Error Block 18 end (CF ANALYSIS FAILED)
end
RequestClose_2_upvr = ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("OpenShops").Event
RequestClose_2_upvr = RequestClose_2_upvr:Connect
RequestClose_2_upvr(function(arg1) -- Line 182
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	if arg1 ~= nil then
		any_CollectionUICreate_result1_upvr.State.RequestClose = true
		local var39 = any_CollectionUICreate_result1_upvr
		if module_upvr_5.LegacyBindableObjects[arg1] ~= true then
			var39 = false
		else
			var39 = true
		end
		var39.State.QuickClearRequested = var39
	end
end)
RequestClose_2_upvr = "LevelMenuUI"
any_CollectionUICreate_result1_upvr.Name = RequestClose_2_upvr
RequestClose_2_upvr = module_upvr_2.DisplayOrder_LevelMenuUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RequestClose_2_upvr
RequestClose_2_upvr = any_CollectionUICreate_result1_upvr.RequestCollection
any_EggBuyContextCreate_result1_upvr = any_TableMerge_result1.Menu_Landing
RequestClose_2_upvr(any_EggBuyContextCreate_result1_upvr)
RequestClose_2_upvr = {}
local var40_upvr = RequestClose_2_upvr
any_EggBuyContextCreate_result1_upvr = {}
local var41 = any_EggBuyContextCreate_result1_upvr
var41.Text = "Pets"
var41.CollectionType = any_TableMerge_result1.Menu_Pets
function var41.IsEnabled() -- Line 212
	return true
end
local function LevelSupports(arg1) -- Line 216
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local var42 = module_5_upvr.ItemsSold_ByLevelData[arg1]
	local var43 = false
	if var42 ~= nil then
		if var42.Eggs == nil then
			var43 = false
		else
			var43 = true
		end
	end
	return var43
end
var41.LevelSupports = LevelSupports
local tbl_2 = {
	Text = "Shop";
	CollectionType = any_TableMerge_result1.Menu_Shop;
	IsEnabled = module_3.OnboardingComplete;
}
local module_2_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local function LevelSupports(arg1) -- Line 229
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var48 = false
	local var49 = module_5_upvr.ItemsSold_ByLevelData[arg1]
	if var49 then
		for i in var49.ByType do
			if i ~= module_2_upvr.ItemType.Egg then
				var48 = true
				return var48
			end
		end
	end
	return var48
end
tbl_2.LevelSupports = LevelSupports
var40_upvr[1] = var41
var40_upvr[2] = tbl_2
var40_upvr[3] = {
	Text = "Stats";
	CollectionType = any_TableMerge_result1.Menu_Stats;
	IsEnabled = module_3.OnboardingComplete;
	LevelSupports = function(arg1) -- Line 254, Named "LevelSupports"
		return true
	end;
}
var41 = table.sort
var41(var40_upvr, function(arg1, arg2) -- Line 261
	local var52
	if arg1.CollectionType >= arg2.CollectionType then
		var52 = false
	else
		var52 = true
	end
	return var52
end)
var41 = {}
local OpenFromUserRequest = var41
OpenFromUserRequest.BackgroundTransparency = 1
OpenFromUserRequest.Image = module_upvr_2.GlowCircle_512x512
OpenFromUserRequest.ImageColor3 = module_upvr_2.BackgroundColor1
OpenFromUserRequest.ImageTransparency = 0.25
OpenFromUserRequest.ScaleType = Enum.ScaleType.Slice
OpenFromUserRequest.SliceCenter = Rect.new(Vector2.one * 256, Vector2.one * 256)
tbl_6_upvr.NameGlowProperties = OpenFromUserRequest
local module_upvr = require(Modules:WaitForChild("Worlds"))
function OpenFromUserRequest(arg1) -- Line 285, Named "Initialize"
	--[[ Upvalues[9]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: tbl_6_upvr (readonly)
		[8]: var40_upvr (readonly)
		[9]: module_upvr_7 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local assert_result1 = assert(tbl_7_upvr.DisplayedLevelData, "Missing LevelData")
	local tbl = {
		TabButtons = {};
		MenuTabSpecs = {};
		NameText = module_upvr.LevelGetFormattedName(assert_result1, module_upvr.FormattedNameType.Title);
		LevelData = assert_result1;
		CollectionPosY = 0;
		LevelSizeX = 0;
		LevelSizeY = 0;
		Flag = module_4_upvr.TextBoundsFlagCreate();
	}
	module_upvr_4.PropsApply(arg1.Wrapper, {
		SelectionBehaviorDown = Enum.SelectionBehavior.Stop;
		SelectionBehaviorLeft = Enum.SelectionBehavior.Stop;
		SelectionBehaviorRight = Enum.SelectionBehavior.Stop;
		SelectionBehaviorUp = Enum.SelectionBehavior.Stop;
		SelectionGroup = true;
	})
	tbl.LevelWrapper = module_upvr_4.I("Frame", {
		BackgroundTransparency = 1;
		Parent = any_CollectionUICreate_result1_upvr.Properties.ScreenGui;
	})
	tbl.LevelClippingFrame = module_upvr_4.C(tbl.LevelWrapper, {
		ClipsDescendants = true;
		Parent = tbl.LevelWrapper;
	})
	tbl.LevelBackground = module_upvr_4.I("Frame", {
		BackgroundColor3 = module_upvr_2.BackgroundColor1;
		BackgroundTransparency = module_upvr_2.BackgroundTransparency1;
		Parent = tbl.LevelClippingFrame;
	})
	tbl.LevelImageBackground = module_upvr_4.C(tbl.LevelBackground, {
		Parent = tbl.LevelWrapper;
	})
	local tbl_4 = {
		BackgroundTransparency = 1;
	}
	local ShopImageId = tbl.LevelData.ShopImageId
	if not ShopImageId then
		ShopImageId = module_upvr_2.FALLBACK_LEVEL_IMAGE
	end
	tbl_4.Image = ShopImageId
	tbl_4.ScaleType = Enum.ScaleType.Crop
	tbl_4.Size = UDim2.fromScale(1, 1)
	tbl_4.ZIndex = 2
	tbl_4.Parent = tbl.LevelImageBackground
	tbl.LevelImage = module_upvr_4.I("ImageLabel", tbl_4)
	tbl.LevelBackgroundCorner = module_upvr_4.I("UICorner", {
		Parent = tbl.LevelBackground;
	})
	tbl.LevelImageCorner = module_upvr_4.I("UICorner", {
		Parent = tbl.LevelImage;
	})
	tbl.LevelImageBackgroundCorner = module_upvr_4.I("UICorner", {
		Parent = tbl.LevelImageBackground;
	})
	tbl.NameLabel = module_upvr_4.I("TextLabel", module_4_upvr.Properties.Text_Scaled, module_4_upvr.Properties.Centered, {
		FontFace = module_upvr_2.FontFaceItalic;
		Text = tbl.NameText;
		TextColor3 = module_upvr_2.TextColor1;
		TextXAlignment = Enum.TextXAlignment.Center;
		ZIndex = 10;
		Parent = tbl.LevelImage;
	})
	tbl.NameBounds = module_4_upvr.CachedTextBounds_FromLabel(tbl.NameLabel)
	tbl.NameBounds.Flag = tbl.Flag
	tbl.NameStroke = module_upvr_4.I("UIStroke", module_4_upvr.Properties.StrokeText, {
		Color = module_upvr_2.TextStrokeColor1;
		Parent = tbl.NameLabel;
	})
	tbl.NameGlow = module_upvr_4.I("ImageLabel", module_4_upvr.Properties.Centered, tbl_6_upvr.NameGlowProperties, {
		Parent = tbl.LevelImage;
	})
	for _, v in var40_upvr do
		if v.LevelSupports(assert_result1) then
			tbl.MenuTabSpecs[#tbl.MenuTabSpecs + 1] = v
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [355] 228. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [355] 228. Error Block 33 end (CF ANALYSIS FAILED)
end
tbl_6_upvr.Initialize = OpenFromUserRequest
function OpenFromUserRequest(arg1) -- Line 479, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_upvr_7 (readonly)
	]]
	for _, v_2 in arg1.TabButtons do
		module_upvr_7.Button.Destroy(v_2)
	end
end
tbl_6_upvr.Destroy = OpenFromUserRequest
function OpenFromUserRequest(arg1) -- Line 488, Named "DimensionsChanged"
	--[[ Upvalues[1]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	arg1.LevelWrapper.Position = UDim2.fromOffset(any_CollectionUICreate_result1_upvr.Properties.PosX + (any_CollectionUICreate_result1_upvr.Properties.SizeX * 0.5 - arg1.LevelSizeX * 0.5) // 1, any_CollectionUICreate_result1_upvr.Properties.PosY + any_CollectionUICreate_result1_upvr.Properties.CloseInsetY - arg1.LevelSizeY)
end
tbl_6_upvr.DimensionsChanged = OpenFromUserRequest
function OpenFromUserRequest(arg1, arg2, arg3) -- Line 499, Named "Update"
	--[[ Upvalues[7]:
		[1]: tbl_7_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_4_upvr (readonly)
		[6]: tbl_5_upvr (readonly)
		[7]: tbl_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if tbl_7_upvr.DisplayedLevelData ~= arg1.LevelData then
		if any_CollectionUICreate_result1_upvr.State.UIMain then
			any_CollectionUICreate_result1_upvr.State.UIMain.Expired = true
		end
		if any_CollectionUICreate_result1_upvr.IsSelected() then
			GuiService_upvr.SelectedObject = nil
		end
	else
		for i_4, v_3 in arg1.MenuTabSpecs do
			local TabButtons = arg1.TabButtons
			local var93 = TabButtons[i_4]
			if arg1.ActiveCollectionType == v_3.CollectionType then
				TabButtons = module_upvr_7.ButtonState.Selected
			else
				TabButtons = nil
			end
			var93.StateOverride = TabButtons
			module_upvr_7.Button.Update(var93, arg3)
		end
		if module_4_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
			local PadX = any_CollectionUICreate_result1_upvr.Properties.PadX
			i_4 = any_CollectionUICreate_result1_upvr
			local PadY = i_4.Properties.PadY
			v_3 = any_CollectionUICreate_result1_upvr
			i_4 = v_3.Properties
			v_3 = any_CollectionUICreate_result1_upvr.Properties
			i_4 = v_3.EdgePadY
			v_3 = 2 * PadY
			local var96 = module_4_upvr.EmSize * tbl_5_upvr.WrapperSizeXEm // 1
			local CloseButtonY = module_4_upvr.SteppedSize.CloseButtonY
			local var98 = (var96) - (2 * any_CollectionUICreate_result1_upvr.Properties.CloseInsetX + PadX)
			local var99 = CloseButtonY + 2 * v_3
			local var100 = var98 + 2 * PadY
			local Background = module_4_upvr.CornerDims.Background
			local RadiusUDim = Background.RadiusUDim
			local var103 = var99 + PadY
			local var104 = var103 - any_CollectionUICreate_result1_upvr.Properties.CloseInsetY
			arg1.LevelSizeX = var100
			arg1.LevelSizeY = var103
			local udim2 = UDim2.fromOffset(var100, var103)
			arg1.LevelWrapper.Size = udim2
			arg1.LevelClippingFrame.Size = UDim2.fromOffset(var100, var104)
			arg1.LevelBackground.Size = udim2
			arg1.LevelImageBackground.Position = UDim2.fromOffset(PadY, PadY)
			arg1.LevelImageBackground.Size = UDim2.fromOffset(var98, var99)
			arg1.LevelImageCorner.CornerRadius = RadiusUDim
			arg1.LevelImageBackgroundCorner.CornerRadius = RadiusUDim
			arg1.LevelBackgroundCorner.CornerRadius = UDim.new(0, Background.Radius + PadY)
			if module_4_upvr.CachedTextBoundsUpdate(arg1.NameBounds, arg1.NameText, CloseButtonY) then
				local minimum = math.min(arg1.NameBounds.X, var98 - 2 * PadX)
				arg1.NameLabel.Size = UDim2.fromOffset(minimum, CloseButtonY)
				arg1.NameGlow.Position = UDim2.new(0.5, 0.125 * module_4_upvr.EmSize // 1, 0.5, 0)
				arg1.NameGlow.Size = UDim2.fromOffset(minimum + module_4_upvr.EmSize, CloseButtonY + PadY)
			end
			minimum = any_CollectionUICreate_result1_upvr.Properties.CloseInsetY + PadY
			local var107 = minimum
			local var108
			if 0 < #arg1.TabButtons then
				local len = #arg1.TabButtons
				local var110 = PadY * 0.5 // 1
				local var111 = tbl_5_upvr.TabButtonTextSizeEm * module_4_upvr.EmSize // 1
				local var112 = var111 + 2 * var110
				var108 = 0.5
				local var113 = var108 * PadX // 1
				var108 = 2 * 1.5 * PadX // 1
				local var114 = var96 - var108
				var108 = module_4_upvr.EmSize * tbl_5_upvr.TabButtonMaxSizeXEm // 1
				local var115 = var108 * len + var113 * (len - 1)
				if var114 < var115 then
					var108 = module_4_upvr.ComputeEvenlySpacedSize(var114, len, var113)
					var115 = var108 * len + var113 * (len - 1)
				end
				for _, v_4 in arg1.TabButtons do
					v_4.Button.Position = UDim2.fromOffset((var96 * 0.5 - var115 * 0.5) // 1, var107)
					v_4.Button.Size = UDim2.fromOffset(var108, var112)
					v_4.Label.Size = UDim2.fromOffset(var108 - 2 * var110, var111)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local var116
				end
				var107 += var112 + PadY
			end
			arg1.CollectionPosY = var107
			arg1.NameStroke.Thickness = module_4_upvr.ScaledSize.StrokeThin
			arg1.OverhangSize = UDim2.fromOffset(0, -var104)
			arg1.TargetSize = UDim2.fromOffset(var96, arg1.CollectionPosY)
			tbl_6_upvr.DimensionsChanged(arg1)
		end
		any_CollectionUICreate_result1_upvr.CollectionUpdate_Display(arg1, arg2, arg3)
	end
end
tbl_6_upvr.Update = OpenFromUserRequest
OpenFromUserRequest = any_CollectionUICreate_result1_upvr.CollectionMethods_ByType
OpenFromUserRequest[any_TableMerge_result1.Menu_Landing] = tbl_6_upvr
function OpenFromUserRequest(arg1, arg2) -- Line 675, Named "RegisterLevelProximity"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local table_find_result1 = table.find(tbl_7_upvr.LevelsInProximity, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_7_upvr.LevelsInProximity[#tbl_7_upvr.LevelsInProximity + 1] = arg1
	do
		return
	end
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 7 start (CF ANALYSIS FAILED)
	if table_find_result1 then
		table.remove(tbl_7_upvr.LevelsInProximity, table_find_result1)
	end
	-- KONSTANTERROR: [19] 16. Error Block 7 end (CF ANALYSIS FAILED)
end
tbl_3.RegisterLevelProximity = OpenFromUserRequest
function OpenFromUserRequest(arg1) -- Line 694
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	tbl_7_upvr.RequestedLevelData = arg1
	module_upvr_5.CloseShops()
end
tbl_3.OpenFromUserRequest = OpenFromUserRequest
OpenFromUserRequest = module_upvr_4.TableMerge(tbl_3, any_CollectionUICreate_result1_upvr)
return OpenFromUserRequest