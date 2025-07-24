-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:48
-- Luau version 6, Types version 3
-- Time taken: 0.005742 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local Parent = script.Parent.Parent
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local function PortraitModeFooter_upvr(arg1) -- Line 45, Named "PortraitModeFooter"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ButtonStack_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		Size = UDim2.new(1, 0, 0, 60);
		BackgroundColor3 = Color3.fromHex("#4F545F");
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		LayoutOrder = 4;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
		Container = React_upvr.createElement("Frame", {
			Size = UDim2.new(0, 400, 1, 0);
			BackgroundTransparency = 1;
		}, {
			Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 32);
				PaddingRight = UDim.new(0, 32);
			});
			ActionButtons = React_upvr.createElement(ButtonStack_upvr, {
				marginBetween = 8;
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = function() -- Line 76, Named "onActivated"
							--[[ Upvalues[1]:
								[1]: arg1 (readonly)
							]]
							arg1.finishAnnotationAction(arg1.annotationPoints)
						end;
						text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.Next");
					};
				}};
			});
		});
	})
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local VirtualKeyboardMonitor_upvr = require(Parent.Utility.VirtualKeyboardMonitor)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local ScreenshotDialogPortraitModeHeader_upvr = require(Parent.Components.ScreenshotDialogPortraitModeHeader)
local ScreenshotDialogLandscapeModeHeader_upvr = require(Parent.Components.ScreenshotDialogLandscapeModeHeader)
local Divider_upvr = require(Parent.Components.Divider)
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarIdentificationSafeAreaFix
local ScreenshotHighlighter_upvr = require(Parent.Components.ScreenshotHighlighter)
return function(arg1) -- Line 88, Named "ScreenshotDialog"
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: VirtualKeyboardMonitor_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: ImageSetButton_upvr (readonly)
		[6]: Assets_upvr (readonly)
		[7]: ScreenshotDialogPortraitModeHeader_upvr (readonly)
		[8]: ScreenshotDialogLandscapeModeHeader_upvr (readonly)
		[9]: Divider_upvr (readonly)
		[10]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[11]: ScreenshotHighlighter_upvr (readonly)
		[12]: PortraitModeFooter_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
	local Theme = useStyle_upvr().Theme
	local any_getInstance_result1_upvr = VirtualKeyboardMonitor_upvr.getInstance()
	local initialAnnotationPoints = arg1.initialAnnotationPoints
	if not initialAnnotationPoints then
		initialAnnotationPoints = {}
	end
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(Cryo_upvr.Dictionary.join({}, initialAnnotationPoints))
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 111
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
		]]
		any_useState_result2_upvr(table.clone(any_useState_result1_upvr_2))
	end, {any_useState_result2_upvr, any_useState_result1_upvr_2})
	local function _() -- Line 115
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.reportAnythingAnalytics.incrementAnnotationBack()
		arg1.backAction()
	end
	local _ = {arg1.backAction, arg1.reportAnythingAnalytics}
	local function _(arg1_2) -- Line 120
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		arg1.reportAnythingAnalytics.incrementAnnotationPlace()
		any_useCallback_result1_upvr()
		any_useState_result2_upvr_2({})
	end
	local _ = {any_useState_result2_upvr_2, any_useCallback_result1_upvr, arg1.reportAnythingAnalytics}
	local function _() -- Line 127
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		if 0 < #any_useState_result1_upvr_2 then
			arg1.reportAnythingAnalytics.incrementAnnotationUndo()
			table.insert(any_useState_result1_upvr, 1, any_useState_result1_upvr_2[#any_useState_result1_upvr_2])
			table.remove(any_useState_result1_upvr_2, #any_useState_result1_upvr_2)
			any_useCallback_result1_upvr()
		end
	end
	local _ = {any_useCallback_result1_upvr, any_useState_result1_upvr_2, any_useState_result1_upvr, arg1.reportAnythingAnalytics}
	local function _() -- Line 137
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		if 0 < #any_useState_result1_upvr then
			arg1.reportAnythingAnalytics.incrementAnnotationRedo()
			table.insert(any_useState_result1_upvr_2, any_useState_result1_upvr[1])
			table.remove(any_useState_result1_upvr, 1)
			any_useCallback_result1_upvr()
		end
	end
	local tbl = {any_useCallback_result1_upvr, any_useState_result1_upvr_2, any_useState_result1_upvr, arg1.reportAnythingAnalytics}
	local function _(arg1_3) -- Line 147
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.reportAnythingAnalytics.setAnnotationNext()
		arg1.finishAnnotationAction(arg1_3)
	end
	local _ = {arg1.finishAnnotationAction, arg1.reportAnythingAnalytics}
	if 0 >= #any_useState_result1_upvr_2 then
	else
	end
	if 0 >= #any_useState_result1_upvr then
		-- KONSTANTWARNING: GOTO [139] #103
	end
	-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 102. Error Block 65 start (CF ANALYSIS FAILED)
	local _ = {
		AutoButtonColor = false;
		BorderSizePixel = 0;
		BackgroundColor3 = Theme.Overlay.Color;
		BackgroundTransparency = Theme.Overlay.Transparency;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		ZIndex = 10;
		Text = "";
		[React_upvr.Event.Activated] = function() -- Line 94
			--[[ Upvalues[2]:
				[1]: any_getInstance_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			warn("OverlayActivated")
			if any_getInstance_result1_upvr:isKeyboardJustOff() then
			elseif arg1.dismissAction then
				warn("Menu dismissed")
				arg1.dismissAction()
			end
		end;
	}
	local _ = {
		Active = true;
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		Image = Assets_upvr.Images.RoundedRect.Image;
		ImageColor3 = Theme.BackgroundUIDefault.Color;
		ImageTransparency = Theme.BackgroundUIDefault.Transparency;
		ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
		SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
	}
	if arg1.isSmallPortraitMode then
		-- KONSTANTWARNING: GOTO [273] #191
	end
	-- KONSTANTERROR: [138] 102. Error Block 65 end (CF ANALYSIS FAILED)
end