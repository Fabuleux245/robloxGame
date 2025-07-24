-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:20
-- Luau version 6, Types version 3
-- Time taken: 0.004532 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local RoactUtils = require(Parent_2.RoactUtils)
local UIBlox = require(Parent_2.UIBlox)
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent_2.React)
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent.Constants)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local CaptureManagerOpened_upvr = require(Parent.Actions.CaptureManagerOpened)
local getCaptureStorageUsage_upvr = require(Parent.Utils.getCaptureStorageUsage)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local FFlagCapturesGalleryAddSizeStringNilCheck_upvr = require(Parent.Flags.FFlagCapturesGalleryAddSizeStringNilCheck)
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local CoreGui_upvr = game:GetService("CoreGui")
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return require(Parent.App.CapturesPolicy).connect(function(arg1) -- Line 190
	return {
		enableCapturesBulkManagement = arg1.enableCapturesBulkManagement();
	}
end)(function(arg1) -- Line 46
	--[[ Upvalues[19]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: CaptureManagerOpened_upvr (readonly)
		[10]: getCaptureStorageUsage_upvr (readonly)
		[11]: IconButton_upvr (readonly)
		[12]: Images_upvr (readonly)
		[13]: IconSize_upvr (readonly)
		[14]: FFlagCapturesGalleryAddSizeStringNilCheck_upvr (readonly)
		[15]: withTooltip_upvr (readonly)
		[16]: TooltipOrientation_upvr (readonly)
		[17]: CoreGui_upvr (readonly)
		[18]: Interactable_upvr (readonly)
		[19]: ImageSetLabel_upvr (readonly)
	]]
	local var7_result1 = useStyle_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		oneCaptureLabel = "Feature.Captures.Label.OneCapture";
		multipleCapturesLabel = {
			numberOfCaptures = arg1.itemCount;
			"Feature.Captures.Label.CaptureCounts"
		};
		tooltipTitle = "Feature.Captures.Title.CaptureStorageTooltipTitle";
		tooltipBody = "Feature.Captures.Label.CaptureStorageTooltipLabel";
	})
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 67
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Captures
	end)
	local var6_result1_upvr = useAnalytics_upvr()
	local var8_result1_upvr = useDispatch_upvr()
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: getCaptureStorageUsage_upvr (copied, readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
		]]
		return getCaptureStorageUsage_upvr(useSelector_upvr_result1_upvr)
	end, {useSelector_upvr_result1_upvr})
	local var41
	if arg1.itemCount == 1 then
		var41 = useLocalization_upvr_result1.oneCaptureLabel
	else
		var41 = useLocalization_upvr_result1.multipleCapturesLabel
	end
	if not arg1.enableCapturesBulkManagement then
		return nil
	end
	local module = {
		GridLayout = React_upvr.createElement("UIGridLayout", {
			CellSize = UDim2.new(0.5, -4, 0, 36);
			FillDirection = Enum.FillDirection.Horizontal;
			FillDirectionMaxCells = 2;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		IconFrame = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0);
		}, {
			ListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			SettingIcon = React_upvr.createElement(IconButton_upvr, {
				icon = Images_upvr["icons/common/settings"];
				iconSize = IconSize_upvr.Medium;
				onActivated = React_upvr.useCallback(function() -- Line 71
					--[[ Upvalues[5]:
						[1]: any_useState_result2_upvr (readonly)
						[2]: var6_result1_upvr (readonly)
						[3]: EventNames_upvr (copied, readonly)
						[4]: var8_result1_upvr (readonly)
						[5]: CaptureManagerOpened_upvr (copied, readonly)
					]]
					any_useState_result2_upvr(false)
					var6_result1_upvr.fireEvent(EventNames_upvr.CapturesManagerOpened)
					var8_result1_upvr(CaptureManagerOpened_upvr())
				end, {});
				showBackground = false;
				size = UDim2.fromOffset(36, 36);
			});
		});
	}
	local tbl = {
		ListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Padding = UDim.new(0, 4);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local tbl_2 = {
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Font = var7_result1.Font.CaptionBody.Font;
		LayoutOrder = 1;
	}
	local udim2 = UDim2.new(0, 0, 0, 20)
	tbl_2.Size = udim2
	local var54
	if FFlagCapturesGalleryAddSizeStringNilCheck_upvr then
		if any_useMemo_result1 ~= "" then
			var54 = ", "
		else
			var54 = ""
		end
		udim2 = `{var41}{var54}{any_useMemo_result1}`
	else
		var54 = any_useMemo_result1
		udim2 = `{var41}, {var54}`
	end
	tbl_2.Text = udim2
	tbl_2.TextColor3 = var7_result1.Theme.TextDefault.Color
	tbl_2.TextSize = var7_result1.Font.BaseSize * var7_result1.Font.CaptionBody.RelativeSize
	tbl_2.TextWrapped = true
	tbl_2.TextXAlignment = Enum.TextXAlignment.Left
	tbl.ItemCountAndStorageSpaceLabel = React_upvr.createElement("TextLabel", tbl_2)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 77
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(not any_useState_result1_upvr)
	end, {any_useState_result1_upvr})
	tbl.InfoIconWithTooltip = withTooltip_upvr({
		headerText = useLocalization_upvr_result1.tooltipTitle;
		bodyText = useLocalization_upvr_result1.tooltipBody;
	}, {
		preferredOrientation = TooltipOrientation_upvr.Bottom;
		guiTarget = CoreGui_upvr;
		DisplayOrder = 100;
		active = any_useState_result1_upvr;
	}, function(arg1_4) -- Line 163
		--[[ Upvalues[6]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: Interactable_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr (readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: Images_upvr (copied, readonly)
		]]
		local function var59(arg1_5) -- Line 164
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			any_useState_result2_upvr(false)
			arg1_4(arg1_5)
		end
		return React_upvr.createElement(Interactable_upvr, {
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Position = UDim2.new(1, 0, 0.5, 0);
			Size = UDim2.fromOffset(16, 16);
			[React_upvr.Change.AbsolutePosition] = var59;
			[React_upvr.Change.AbsoluteSize] = var59;
			[React_upvr.Event.Activated] = any_useCallback_result1_upvr;
		}, {
			InfoIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromScale(1, 1);
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/actions/info_small"];
			});
		})
	end)
	module.TextFrame = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0);
		ZIndex = 3;
	}, tbl)
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = var7_result1.Theme.BackgroundDefault.Color;
		BackgroundTransparency = var7_result1.Theme.BackgroundDefault.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.new(1, 0, 0, 36);
	}, module)
end)