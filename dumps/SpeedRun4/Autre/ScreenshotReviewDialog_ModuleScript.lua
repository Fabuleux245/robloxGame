-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:51
-- Luau version 6, Types version 3
-- Time taken: 0.016274 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Button_upvr = UIBlox.App.Button.Button
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
local Parent = script.Parent.Parent
local Responsive_upvr = require(CorePackages.Workspace.Packages.Responsive)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local function ScreenshotReviewDialogSmallPortraitModeHeaderRight_upvr(arg1) -- Line 64, Named "ScreenshotReviewDialogSmallPortraitModeHeaderRight"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: StandardButtonSize_upvr (readonly)
	]]
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(0)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Text = React_upvr.createElement("TextLabel", {
			LayoutOrder = -1;
			Text = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Label.SceneCaptured");
			Font = arg1.font.Header2.Font;
			TextColor3 = arg1.theme.TextEmphasis.Color;
			TextTransparency = arg1.theme.TextEmphasis.Transparency;
			TextSize = 20;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			Size = UDim2.new(0, arg1.viewportUISafeAreaWidth - any_useState_result1_2 - 50, 1, 0);
			BackgroundTransparency = 1;
		});
		RetakeButton = React_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.Retake");
			fitContent = true;
			standardSize = StandardButtonSize_upvr.XSmall;
			onActivated = React_upvr.useCallback(function() -- Line 69
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.setShowRestartDialog(true)
			end, {arg1.setShowRestartDialog});
			[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2) -- Line 66
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (readonly)
				]]
				any_useState_result2_upvr_2(arg1_2.AbsoluteSize.X)
			end, {any_useState_result2_upvr_2});
		});
	})
end
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useStyle_upvr = UIBlox.Core.Style.useStyle
local FFlagCSFocusWrapperRefactor_upvr = SharedFlags.FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").ReportAnything.Resources.Constants)
local RestartScreenshotDialog_upvr = require(Parent.Components.RestartScreenshotDialog)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local Divider_upvr = require(Parent.Components.Divider)
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = SharedFlags.GetFFlagAvatarIdentificationSafeAreaFix
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
return function(arg1) -- Line 110, Named "ScreenshotReviewDialog"
	--[[ Upvalues[24]:
		[1]: usePreferredInput_upvr (readonly)
		[2]: Responsive_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[7]: FocusRoot_upvr (readonly)
		[8]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[9]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[10]: Constants_upvr (readonly)
		[11]: RestartScreenshotDialog_upvr (readonly)
		[12]: ImageSetButton_upvr (readonly)
		[13]: Assets_upvr (readonly)
		[14]: HeaderBar_upvr (readonly)
		[15]: IconButton_upvr (readonly)
		[16]: IconSize_upvr (readonly)
		[17]: Images_upvr (readonly)
		[18]: ScreenshotReviewDialogSmallPortraitModeHeaderRight_upvr (readonly)
		[19]: Button_upvr (readonly)
		[20]: ButtonType_upvr (readonly)
		[21]: StandardButtonSize_upvr (readonly)
		[22]: Divider_upvr (readonly)
		[23]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[24]: ButtonStack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var40
	if usePreferredInput_upvr() ~= Responsive_upvr.Input.Directional then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if not RobloxTranslator_upvr then
		return nil
	end
	local var42 = 60
	if arg1.isSmallPortraitMode then
		var42 = 104
	end
	local any_useCallback_result1_2_upvr = React_upvr.useCallback(function() -- Line 122
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.reportAnythingAnalytics.incrementPreviewBack()
		arg1.onBack()
	end, {arg1.onBack, arg1.reportAnythingAnalytics})
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl_20 = {}
	var40 = arg1.reportAnythingAnalytics
	tbl_20[1] = arg1.onNextPage
	tbl_20[2] = var40
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 144
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.reportAnythingAnalytics.incrementHighlightScene()
		arg1.onNextPage()
	end, tbl_20)
	local var24_result1 = useStyle_upvr()
	local Theme_upvr = var24_result1.Theme
	local Font_upvr = var24_result1.Font
	if 800 <= arg1.viewportUISafeAreaHeight then
		var40 = UDim2.new(0, 800, 0, 800)
	else
		var40 = UDim2.new(1, 0, 1, 0)
	end
	local module = {}
	local tbl = {}
	if arg1.isSmallPortraitMode then
	else
	end
	tbl.Size = var40
	tbl.Position = UDim2.fromScale(0.5, 0.5)
	tbl.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl.BorderSizePixel = 0
	tbl.BackgroundColor3 = Theme_upvr.Overlay.Color
	tbl.BackgroundTransparency = 0
	tbl.ZIndex = 10
	local tbl_3 = {}
	if any_useState_result1 then
		local tbl_5 = {}
		local var66 = React_upvr
		if FFlagCSFocusWrapperRefactor_upvr then
			var66 = FocusRoot_upvr
		else
			var66 = FocusNavigationCoreScriptsWrapper_upvr
		end
		if FFlagCSFocusWrapperRefactor_upvr then
			local _ = {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
				isIsolated = true;
				isAutoFocusRoot = true;
			}
		else
		end
		tbl_5.FocusNavigationCoreScriptsWrapper = var66.createElement(var66, {
			selectionGroupName = Constants_upvr.RestartScreenshotDialogRootName;
			focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
		}, {
			DialogBody = React_upvr.createElement(RestartScreenshotDialog_upvr, {
				ZIndex = 3;
				isSmallPortraitMode = arg1.isSmallPortraitMode;
				onCancel = function() -- Line 197, Named "onCancel"
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (readonly)
					]]
					any_useState_result2_upvr(false)
				end;
				onRestart = React_upvr.useCallback(function() -- Line 139
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.reportAnythingAnalytics.setRetakeAbandon()
					arg1.onRestart()
				end, {arg1.onRestart, arg1.reportAnythingAnalytics});
			});
		})
	end
	tbl_3.RestartDialog = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, tbl_5)
	local var71 = any_useState_result1
	if var71 then
		var71 = React_upvr.createElement
		var71 = var71(ImageSetButton_upvr, {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 0.2;
			BackgroundColor3 = Theme_upvr.BackgroundUIDefault.Color;
			Active = true;
			AutoButtonColor = false;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = Assets_upvr.Images.RoundedRect.Image;
			ImageColor3 = Theme_upvr.BackgroundUIDefault.Color;
			ImageTransparency = 1;
			ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
			SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
		}, {})
	end
	tbl_3.RestartDialogMask = var71
	local tbl_19 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_4 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_8 = {}
	local tbl_18 = {
		backgroundTransparency = 1;
		barHeight = 48;
		margin = 12;
	}
	local function renderRight() -- Line 258, Named "renderLeft"
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: any_useCallback_result1_2_upvr (readonly)
		]]
		return React_upvr.createElement(IconButton_upvr, {
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
			onActivated = any_useCallback_result1_2_upvr;
		})
	end
	tbl_18.renderLeft = renderRight
	function renderRight() -- Line 266
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: ScreenshotReviewDialogSmallPortraitModeHeaderRight_upvr (copied, readonly)
			[4]: any_useCallback_result1_3_upvr (readonly)
			[5]: Font_upvr (readonly)
			[6]: Theme_upvr (readonly)
			[7]: Button_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
			[9]: RobloxTranslator_upvr (copied, readonly)
			[10]: StandardButtonSize_upvr (copied, readonly)
		]]
		if arg1.isSmallPortraitMode then
			return React_upvr.createElement(ScreenshotReviewDialogSmallPortraitModeHeaderRight_upvr, {
				onActivated = any_useCallback_result1_3_upvr;
				font = Font_upvr;
				theme = Theme_upvr;
				viewportUISafeAreaWidth = arg1.viewportUISafeAreaWidth;
			})
		end
		return React_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.Retake");
			fitContent = true;
			standardSize = StandardButtonSize_upvr.XSmall;
			onActivated = any_useCallback_result1_3_upvr;
		})
	end
	local any_useCallback_result1_3_upvr = React_upvr.useCallback(function() -- Line 134
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		arg1.reportAnythingAnalytics.incrementRetake()
		any_useState_result2_upvr(true)
	end, {any_useState_result2_upvr, arg1.reportAnythingAnalytics})
	local var83 = renderRight
	tbl_18.renderRight = var83
	if arg1.isSmallPortraitMode then
		var83 = nil
	else
		var83 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Label.SceneCaptured")
	end
	tbl_18.title = var83
	tbl_18.isSecondary = arg1.isSmallPortraitMode
	tbl_8.Bar = React_upvr.createElement(HeaderBar_upvr, tbl_18)
	tbl_4.Header = React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.fromHex("#4F545F");
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 48);
	}, tbl_8)
	tbl_4.Divider = React_upvr.createElement(Divider_upvr, {
		LayoutOrder = 2;
	})
	local tbl_9 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 16);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_14 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
			PaddingLeft = UDim.new(0, 16);
			PaddingRight = UDim.new(0, 16);
		});
	}
	local tbl_15 = {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local var96 = 2
	tbl_15.BorderSizePixel = var96
	if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
		var96 = Enum.BorderMode.Outline
	else
		var96 = Enum.BorderMode.Inset
	end
	tbl_15.BorderMode = var96
	tbl_15.BorderColor3 = Color3.fromRGB(255, 255, 255)
	tbl_15.LayoutOrder = 1
	local tbl_12 = {
		UIAspectRatioConstraint = React_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = arg1.imageAspectRatio;
		});
	}
	local tbl_11 = {
		Active = true;
	}
	if true then
		-- KONSTANTWARNING: GOTO [805] #562
	end
	tbl_11.Selectable = true
	tbl_11.Size = UDim2.fromScale(1, 1)
	tbl_11.Image = arg1.screenshot
	tbl_11.ZIndex = 1
	tbl_11.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_11.Position = UDim2.fromScale(0.5, 0.5)
	tbl_11.BackgroundTransparency = 1
	tbl_11.ScaleType = Enum.ScaleType.Fit
	tbl_11.SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter
	tbl_11[React_upvr.Event.Activated] = any_useCallback_result1
	tbl_12.ScreenshotImage = React_upvr.createElement(ImageSetButton_upvr, tbl_11)
	tbl_14.Screenshot = React_upvr.createElement("Frame", tbl_15, tbl_12)
	tbl_9.ScreenshotContainer = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -32);
		BackgroundTransparency = 2;
		LayoutOrder = 1;
	}, tbl_14)
	local tbl_6 = {
		Text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Message.ProblemNotInScene");
		Font = Font_upvr.Header1.Font;
		LayoutOrder = 2;
		TextColor3 = Theme_upvr.TextEmphasis.Color;
		TextTransparency = Theme_upvr.TextEmphasis.Transparency;
	}
	if arg1.isSmallPortraitMode then
		-- KONSTANTWARNING: GOTO [905] #626
	end
	tbl_6.TextSize = 20
	tbl_6.TextXAlignment = Enum.TextXAlignment.Center
	tbl_6.TextWrapped = true
	if arg1.isSmallPortraitMode then
	else
	end
	tbl_6.Size = UDim2.new(1, -24, 0, 40)
	tbl_6.BackgroundTransparency = 1
	tbl_9.Description = React_upvr.createElement("TextLabel", tbl_6)
	tbl_4.ScreenshotBody = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 3;
		Size = UDim2.new(1, 0, 1, -60);
		ZIndex = 10;
	}, tbl_9)
	tbl_19.HeaderAndContent = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -var42);
		BackgroundTransparency = 1;
	}, tbl_4)
	local tbl_10 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
	}
	local tbl_16 = {}
	if arg1.isSmallPortraitMode then
		local _ = UDim2.new(1, 0, 1, 0)
	elseif arg1.isSmallPortraitMode then
	else
	end
	tbl_16.Size = UDim2.new(0, 612, 1, 0)
	tbl_16.BackgroundTransparency = 1
	local tbl_13 = {}
	local tbl_2 = {
		PaddingTop = UDim.new(0, 12);
		PaddingBottom = UDim.new(0, 12);
		PaddingLeft = UDim.new(0, 16);
	}
	local udim = UDim.new(0, 16)
	tbl_2.PaddingRight = udim
	tbl_13.Padding = React_upvr.createElement("UIPadding", tbl_2)
	local tbl_17 = {}
	if arg1.isSmallPortraitMode then
		udim = Enum.FillDirection.Vertical
	else
		udim = nil
	end
	tbl_17.forcedFillDirection = udim
	tbl_17.marginBetween = 8
	local tbl_7 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
	else
	end
	tbl_7[1] = {
		buttonType = ButtonType_upvr.Secondary;
		props = {
			onActivated = React_upvr.useCallback(function() -- Line 127
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.reportAnythingAnalytics.incrementPreviewAttach()
				arg1.onSkip()
			end, {arg1.onSkip, arg1.reportAnythingAnalytics});
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.AttachScreenshot");
		};
	}
	tbl_7[2] = {
		buttonType = ButtonType_upvr.PrimarySystem;
		props = {
			onActivated = any_useCallback_result1;
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.HighlightScene");
		};
	}
	tbl_17.buttons = tbl_7
	tbl_13.ActionButtons = React_upvr.createElement(ButtonStack_upvr, tbl_17)
	tbl_10.Container = React_upvr.createElement("Frame", tbl_16, tbl_13)
	tbl_19.Footer = React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		Size = UDim2.new(1, 0, 0, var42);
		BackgroundColor3 = Color3.fromHex("#4F545F");
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		LayoutOrder = 4;
	}, tbl_10)
	tbl_3.ScreenshotDialog = React_upvr.createElement(ImageSetButton_upvr, {
		Active = true;
		Selectable = false;
		Size = UDim2.fromScale(1, 1);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = Assets_upvr.Images.RoundedRect.Image;
		ImageColor3 = Theme_upvr.BackgroundUIDefault.Color;
		ImageTransparency = Theme_upvr.BackgroundUIDefault.Transparency;
		ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
		SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
	}, tbl_19)
	module.Container = React_upvr.createElement("Frame", tbl, tbl_3)
	return React_upvr.createElement("TextButton", {
		Selectable = false;
		AutoButtonColor = false;
		BorderSizePixel = 0;
		BackgroundColor3 = Theme_upvr.Overlay.Color;
		BackgroundTransparency = Theme_upvr.Overlay.Transparency;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 10;
		Text = "";
		[React_upvr.Event.Activated] = any_useCallback_result1_2_upvr;
	}, module)
end