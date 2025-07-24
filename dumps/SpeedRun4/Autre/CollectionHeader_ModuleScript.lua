-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:41
-- Luau version 6, Types version 3
-- Time taken: 0.018845 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local Style = require(Parent.Style)
local useDesignTokens_upvr = Style.useDesignTokens
local IconWithTooltip_upvr = require(Parent.AppBlox).IconWithTooltip
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local Responsive_upvr = require(Parent.Responsive)
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local checkAndFormatPossibleLink_upvr = require(CollectionViews.checkAndFormatPossibleLink)
local SeeAllButtonType_Legacy_upvr = require(CollectionViews.SeeAllButtonType_Legacy)
local SharedFlags = require(Parent.SharedFlags)
local FFlagLuaAppUpdateCollectionHeader_upvr = SharedFlags.FFlagLuaAppUpdateCollectionHeader
local FFlagLuaAppScrollableDesktopCarouselsIXP_upvr = SharedFlags.FFlagLuaAppScrollableDesktopCarouselsIXP
local FFlagBuilderIconsMigrationSeeAllArrow_upvr = SharedFlags.FFlagBuilderIconsMigrationSeeAllArrow
local icons_actions_truncationCollapse_small_upvr = Images["icons/actions/truncationCollapse_small"]
local icons_actions_cycleRight_upvr = Images["icons/actions/cycleRight"]
local tbl_upvr = {
	AutomaticSize = Enum.AutomaticSize.Y;
	Size = UDim2.new(1, 0, 0, 0);
	tooltipSupportsVR = true;
	tooltipSupportsTenFootUi = true;
}
local function _(arg1, arg2, arg3) -- Line 108, Named "determineSeeAllButtonType"
	--[[ Upvalues[2]:
		[1]: SeeAllButtonType_Legacy_upvr (readonly)
		[2]: Responsive_upvr (readonly)
	]]
	if arg1 then
		return SeeAllButtonType_Legacy_upvr.None
	end
	if arg2 == Responsive_upvr.Input.Directional then
		return SeeAllButtonType_Legacy_upvr.None
	end
	if arg3 then
		return SeeAllButtonType_Legacy_upvr.TextButton
	end
	return SeeAllButtonType_Legacy_upvr.Arrow
end
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function SeeAllTextButton_Legacy_upvr(arg1) -- Line 127, Named "SeeAllTextButton_Legacy"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Button_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	return React_upvr.createElement(Button_upvr, {
		buttonType = ButtonType_upvr.Secondary;
		position = arg1.position;
		size = arg1.size;
		anchorPoint = arg1.anchorPoint;
		text = arg1.buttonText;
		fontStyle = arg1.buttonFont;
		onActivated = arg1.onActivate;
	})
end
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local function HeaderButton_upvr(arg1) -- Line 146, Named "HeaderButton"
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagLuaAppUpdateCollectionHeader_upvr (readonly)
		[3]: GetImageData_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	local var9_result1 = useDesignTokens_upvr()
	local Size_200 = var9_result1.Global.Size_200
	local Text = var9_result1.Semantic.Color.Text
	local Emphasis_2 = Text.Emphasis
	if FFlagLuaAppUpdateCollectionHeader_upvr then
		Text = arg1.image
	else
		Text = arg1.image
		if not Text then
			Text = GetImageData_upvr("LuaApp/icons/navigation/pushRight_small") or "LuaApp/icons/navigation/pushRight_small"
		end
	end
	local module = {}
	local Size = arg1.Size
	if not Size then
		Size = UDim2.new(0, Size_200, 0, Size_200)
	end
	module.Size = Size
	module.BackgroundTransparency = 1
	module.Image = Text
	module.ImageColor3 = Emphasis_2.Color3
	module.ImageTransparency = Emphasis_2.Transparency
	module.LayoutOrder = arg1.LayoutOrder
	module.Rotation = arg1.Rotation
	module.AnchorPoint = arg1.AnchorPoint
	module.Position = arg1.Position
	return React_upvr.createElement(ImageSetLabel_upvr, module)
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetTextSize_upvr = Style.GetTextSize
local vector2_upvr = Vector2.new(math.huge, math.huge)
local function CollectionHeader_Legacy_upvr(arg1) -- Line 175, Named "CollectionHeader_Legacy"
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: SeeAllButtonType_Legacy_upvr (readonly)
		[6]: Responsive_upvr (readonly)
		[7]: useDesignTokens_upvr (readonly)
		[8]: FFlagBuilderIconsMigrationSeeAllArrow_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: GetTextSize_upvr (readonly)
		[11]: vector2_upvr (readonly)
		[12]: checkAndFormatPossibleLink_upvr (readonly)
		[13]: HeaderButton_upvr (readonly)
		[14]: icons_actions_cycleRight_upvr (readonly)
		[15]: IconWithTooltip_upvr (readonly)
		[16]: TooltipOrientation_upvr (readonly)
		[17]: icons_actions_truncationCollapse_small_upvr (readonly)
		[18]: SeeAllTextButton_Legacy_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 239 start (CF ANALYSIS FAILED)
	local any_join_result1_2 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local _, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local function _(arg1_2) -- Line 178
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_2.AbsoluteSize.X)
	end
	local var40
	if any_join_result1_2.hideButton then
		var40 = SeeAllButtonType_Legacy_upvr.None
		-- KONSTANTWARNING: GOTO [51] #38
	end
	-- KONSTANTERROR: [0] 1. Error Block 239 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 240 start (CF ANALYSIS FAILED)
	if usePreferredInput_upvr() == Responsive_upvr.Input.Directional then
		var40 = SeeAllButtonType_Legacy_upvr.None
	elseif any_join_result1_2.shouldUseGridPageLayout_legacy then
		var40 = SeeAllButtonType_Legacy_upvr.TextButton
	else
		var40 = SeeAllButtonType_Legacy_upvr.Arrow
	end
	local var9_result1_2_upvr = useDesignTokens_upvr()
	if not any_join_result1_2.titleTypography then
	end
	if not any_join_result1_2.titleColor then
	end
	if not any_join_result1_2.subtitleTypography then
	end
	if not any_join_result1_2.subtitleTypography or not any_join_result1_2.subtitleTypography.FontSize then
	end
	if not any_join_result1_2.subtitleColor then
	end
	if FFlagBuilderIconsMigrationSeeAllArrow_upvr then
	else
	end
	if var40 ~= SeeAllButtonType_Legacy_upvr.Arrow or not any_join_result1_2.tooltipInfoText then
	end
	if var40 == SeeAllButtonType_Legacy_upvr.TextButton then
		local onActivate_upvr = any_join_result1_2.onActivate
	end
	if var40 == SeeAllButtonType_Legacy_upvr.Arrow or not any_join_result1_2.tooltipInfoText then
	end
	if var40 == SeeAllButtonType_Legacy_upvr.Arrow then
	end
	local var46
	if FFlagBuilderIconsMigrationSeeAllArrow_upvr and any_join_result1_2.onActivate then
	else
	end
	local tbl_5 = {
		seeAll = "Feature.Home.ActionSeeAll";
	}
	tbl_5 = any_join_result1_2.buttonText
	local var45_upvr = tbl_5
	if not var45_upvr then
		var45_upvr = useLocalization_upvr(tbl_5).seeAll
	end
	var46 = React_upvr
	local CaptionHeader_upvr = var9_result1_2_upvr.Semantic.Typography.CaptionHeader
	function var46() -- Line 224
		--[[ Upvalues[6]:
			[1]: onActivate_upvr (readonly)
			[2]: GetTextSize_upvr (copied, readonly)
			[3]: var45_upvr (readonly)
			[4]: CaptionHeader_upvr (readonly)
			[5]: vector2_upvr (copied, readonly)
			[6]: var9_result1_2_upvr (readonly)
		]]
		if not onActivate_upvr then
			return UDim2.new()
		end
		return UDim2.fromOffset(GetTextSize_upvr(var45_upvr, CaptionHeader_upvr.FontSize, CaptionHeader_upvr.Font, vector2_upvr).X + var9_result1_2_upvr.Global.Space_100 * 2, var9_result1_2_upvr.Global.Size_350)
	end
	if onActivate_upvr then
		var46 = var46.useMemo(var46, {onActivate_upvr}).Width.Offset + var9_result1_2_upvr.Global.Space_150
		-- KONSTANTWARNING: GOTO [220] #147
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if any_join_result1_2.onActivate then
		var46 = var9_result1_2_upvr.Global.Size_200
	else
		var46 = 0
	end
	if false then
	elseif false then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	if any_join_result1_2.subtitle ~= nil then
		if any_join_result1_2.subtitle == "" then
		else
		end
	end
	local var14_result1, _ = checkAndFormatPossibleLink_upvr(any_join_result1_2.subtitle)
	if var14_result1 then
		-- KONSTANTWARNING: GOTO [250] #170
	end
	if onActivate_upvr then
		-- KONSTANTWARNING: GOTO [257] #177
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if false then
	else
	end
	if any_join_result1_2.onActivateSubtitle then
	else
	end
	-- KONSTANTERROR: [32] 25. Error Block 240 end (CF ANALYSIS FAILED)
end
local FFlagLuaAppEnableSduiHeroUnitImageTitle_upvr = SharedFlags.FFlagLuaAppEnableSduiHeroUnitImageTitle
local function CollectionHeader_upvr(arg1) -- Line 437, Named "CollectionHeader"
	--[[ Upvalues[17]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: useDesignTokens_upvr (readonly)
		[6]: Responsive_upvr (readonly)
		[7]: FFlagBuilderIconsMigrationSeeAllArrow_upvr (readonly)
		[8]: FFlagLuaAppUpdateCollectionHeader_upvr (readonly)
		[9]: FFlagLuaAppScrollableDesktopCarouselsIXP_upvr (readonly)
		[10]: checkAndFormatPossibleLink_upvr (readonly)
		[11]: FFlagLuaAppEnableSduiHeroUnitImageTitle_upvr (readonly)
		[12]: HeaderButton_upvr (readonly)
		[13]: icons_actions_cycleRight_upvr (readonly)
		[14]: GetImageData_upvr (readonly)
		[15]: icons_actions_truncationCollapse_small_upvr (readonly)
		[16]: IconWithTooltip_upvr (readonly)
		[17]: TooltipOrientation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 247 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useBinding_result1, any_useBinding_result2_upvr_2 = React_upvr.useBinding(0)
	local var9_result1_3 = useDesignTokens_upvr()
	local var57
	if not any_join_result1.titleTypography then
		local Header = var9_result1_3.Semantic.Typography.Header
	end
	if not any_join_result1.titleColor then
		local Emphasis = var9_result1_3.Semantic.Color.Text.Emphasis
	end
	if not any_join_result1.subtitleTypography then
	end
	if not any_join_result1.subtitleTypography or not any_join_result1.subtitleTypography.FontSize then
	end
	if not any_join_result1.subtitleColor then
	end
	var57 = any_join_result1.hideButton
	local var60 = not var57
	if var60 then
		var57 = Responsive_upvr.Input.Directional
		if usePreferredInput_upvr() == var57 then
			var60 = false
		else
			var60 = true
		end
	end
	if var60 and any_join_result1.onActivate then
		var57 = true
	else
		var57 = false
	end
	if FFlagBuilderIconsMigrationSeeAllArrow_upvr then
	elseif FFlagLuaAppUpdateCollectionHeader_upvr or FFlagLuaAppScrollableDesktopCarouselsIXP_upvr then
	else
	end
	if FFlagBuilderIconsMigrationSeeAllArrow_upvr then
		-- KONSTANTWARNING: GOTO [139] #93
	end
	local Size_300 = var9_result1_3.Global.Size_300
	if any_join_result1.tooltipInfoText == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if var57 then
	else
	end
	if true then
		local _ = var9_result1_3.Global.Size_350 + var9_result1_3.Global.Space_150
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
	else
	end
	if any_join_result1.subtitle ~= nil then
		if any_join_result1.subtitle == "" then
		else
		end
	end
	local _, _ = checkAndFormatPossibleLink_upvr(any_join_result1.subtitle)
	if any_join_result1.onActivateSubtitle then
	else
	end
	if any_join_result1.onActivateSubtitle then
	end
	if true then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		if any_join_result1.onActivate == nil then
		else
		end
	end
	local _ = {
		Position = any_join_result1.Position;
		AutomaticSize = any_join_result1.AutomaticSize;
		Size = any_join_result1.Size;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = any_join_result1.LayoutOrder;
		ZIndex = any_join_result1.ZIndex;
		[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_3) -- Line 441
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr_2 (readonly)
			]]
			any_useBinding_result2_upvr_2(arg1_3.AbsoluteSize.X)
		end, {});
	}
	if var57 then
		-- KONSTANTWARNING: GOTO [244] #167
	end
	local tbl_2 = {}
	if var57 then
		-- KONSTANTWARNING: GOTO [250] #172
	end
	tbl_2.Text = nil
	tbl_2.Size = UDim2.new(1, -0, 0, 0)
	tbl_2.AutomaticSize = Enum.AutomaticSize.Y
	tbl_2.BackgroundTransparency = 1
	if FFlagLuaAppEnableSduiHeroUnitImageTitle_upvr then
		-- KONSTANTWARNING: GOTO [274] #189
	end
	tbl_2.AnchorPoint = nil
	tbl_2.BorderSizePixel = 0
	if var57 then
		-- KONSTANTWARNING: GOTO [283] #196
	end
	tbl_2.AutoButtonColor = nil
	if var57 then
	else
	end
	tbl_2[React_upvr.Event.Activated] = nil
	tbl_2.Active = var57
	tbl_2.Selectable = var57
	;({}).UIListLayout = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		Padding = UDim.new(0, var9_result1_3.Global.Space_25);
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	local _ = {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	if typeof(any_join_result1.title) == "string" then
		local _ = {
			BackgroundTransparency = 1;
			Text = any_join_result1.title;
			AutomaticSize = Enum.AutomaticSize.XY;
			Size = UDim2.new(0, 0, 0, 0);
			Font = Header.Font;
			TextSize = Header.FontSize;
			TextTransparency = Emphasis.Transparency;
			TextColor3 = Emphasis.Color3;
			TextWrapped = false;
			TextTruncate = Enum.TextTruncate.SplitWord;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 1;
		}
		local tbl_3 = {}
		local tbl_4 = {}
		local const_number_upvr_2 = 0
		local const_number_upvr = 0
		tbl_4.MaxSize = any_useBinding_result1:map(function(arg1_4) -- Line 563
			--[[ Upvalues[2]:
				[1]: const_number_upvr_2 (readonly)
				[2]: const_number_upvr (readonly)
			]]
			local var78 = arg1_4 - const_number_upvr_2 - const_number_upvr
			if 0 < var78 then
				return Vector2.new(var78, math.huge)
			end
			return nil
		end)
		tbl_3.UISizeConstraint = React_upvr.createElement("UISizeConstraint", tbl_4)
	elseif typeof(any_join_result1.title) == "function" then
	else
	end
	;({
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, 0);
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}).Title = nil
	-- KONSTANTERROR: [0] 1. Error Block 247 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [489] 330. Error Block 221 start (CF ANALYSIS FAILED)
	local tbl = {}
	tbl_3 = 2
	local var80 = tbl_3
	tbl.LayoutOrder = var80
	if not FFlagBuilderIconsMigrationSeeAllArrow_upvr and (FFlagLuaAppUpdateCollectionHeader_upvr or FFlagLuaAppScrollableDesktopCarouselsIXP_upvr) then
		var80 = nil
	else
		var80 = UDim2.fromOffset(Size_300, Size_300)
	end
	tbl.Size = var80
	if FFlagBuilderIconsMigrationSeeAllArrow_upvr then
		-- KONSTANTWARNING: GOTO [525] #362
	end
	-- KONSTANTERROR: [489] 330. Error Block 221 end (CF ANALYSIS FAILED)
end
local CarouselUpdatesExperimentation_upvr = require(CollectionViews.CarouselUpdatesExperimentation)
return React_upvr.memo(function(arg1) -- Line 670, Named "CollectionHeaderSelector"
	--[[ Upvalues[6]:
		[1]: FFlagLuaAppUpdateCollectionHeader_upvr (readonly)
		[2]: FFlagLuaAppScrollableDesktopCarouselsIXP_upvr (readonly)
		[3]: CarouselUpdatesExperimentation_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: CollectionHeader_upvr (readonly)
		[6]: CollectionHeader_Legacy_upvr (readonly)
	]]
	if arg1.forceUpdatedHeader or FFlagLuaAppUpdateCollectionHeader_upvr or FFlagLuaAppScrollableDesktopCarouselsIXP_upvr and CarouselUpdatesExperimentation_upvr.getIsUpdatedHeaderEnabled() then
		return React_upvr.createElement(CollectionHeader_upvr, arg1)
	end
	return React_upvr.createElement(CollectionHeader_Legacy_upvr, arg1)
end)