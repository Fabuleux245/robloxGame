-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:12
-- Luau version 6, Types version 3
-- Time taken: 0.009192 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local idvWithQRCodeUpsellStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).idvWithQRCodeUpsellStrings
local useStyle_upvr = UIBlox.Core.Style.useStyle
local AnalyticsService_upvr = require(AmpUpsell.Analytics.AnalyticsService)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local sendButtonClickEvent_upvr = require(AmpUpsell.Analytics.sendButtonClickEvent)
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local DirectionsTile_upvr = require(script.Parent.DirectionsTile)
local ProgressChecklist_upvr = require(script.Parent.ProgressChecklist)
local Roact_upvr = require(Parent.Roact)
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 35, Named "IDVDirectLinkUpsell"
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: idvWithQRCodeUpsellStrings_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: AnalyticsService_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: PartialPageModal_upvr (readonly)
		[8]: sendButtonClickEvent_upvr (readonly)
		[9]: AppScreens_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: DirectionsTile_upvr (readonly)
		[12]: ProgressChecklist_upvr (readonly)
		[13]: Roact_upvr (readonly)
		[14]: LinkButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local featureName_upvr = arg1.featureName
	local useLocalization_upvr_result1 = useLocalization_upvr(idvWithQRCodeUpsellStrings_upvr)
	local useStyle_upvr_result1 = useStyle_upvr()
	local onClose_upvr = arg1.onClose
	local analyticsService_upvr = arg1.analyticsService
	if not analyticsService_upvr then
		analyticsService_upvr = AnalyticsService_upvr.EventStream
	end
	local idvLink_upvr = arg1.idvLink
	local latestStepCompleted = arg1.latestStepCompleted
	if 0 >= latestStepCompleted then
	else
	end
	local openIdvLink_upvr = arg1.openIdvLink
	local module = {}
	local tbl = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 24);
			PaddingBottom = UDim.new(0, 24);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}
	if not true then
		local any_createElement_result1 = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 72);
			BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundContrast.Color;
			BackgroundTransparency = 0;
			LayoutOrder = 1;
		}, {
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			IDDirection = React_upvr.createElement(DirectionsTile_upvr, {
				imagePath = "icons/menu/document";
				headerText = useLocalization_upvr_result1.idDirectionsHeader;
				descriptionText = useLocalization_upvr_result1.idDirectionsBody;
				frameHeight = 48;
			});
		})
	else
	end
	tbl.DirectionsFrameOrProgressChecklist = React_upvr.createElement(ProgressChecklist_upvr, {
		entryHeight = 18;
		layoutOrder = 1;
		latestStepCompleted = latestStepCompleted;
	})
	local tbl_3 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
		Disclaimer = React_upvr.createElement("TextLabel", {
			Text = useLocalization_upvr_result1.disclaimer;
			Font = useStyle_upvr_result1.Font.Body.Font;
			TextSize = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.CaptionBody.RelativeSize;
			TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
			TextTransparency = useStyle_upvr_result1.Theme.TextEmphasis.Transparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
	}
	local tbl_2 = {
		text = useLocalization_upvr_result1.privacyLinkText;
		layoutOrder = 2;
		fontStyle = "CaptionBody";
		underlineAlwaysEnabled = true;
	}
	local openPrivacyPolicyLink_upvr = arg1.openPrivacyPolicyLink
	function tbl_2.onActivated() -- Line 172
		--[[ Upvalues[5]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: analyticsService_upvr (readonly)
			[3]: AppScreens_upvr (copied, readonly)
			[4]: featureName_upvr (readonly)
			[5]: openPrivacyPolicyLink_upvr (readonly)
		]]
		sendButtonClickEvent_upvr(analyticsService_upvr, AppScreens_upvr.IDVDirectLinkUpsell, featureName_upvr, "OpenPrivacyPolicy")
		openPrivacyPolicyLink_upvr()
	end
	tbl_3.PrivacyPolicy = Roact_upvr.createElement(LinkButton_upvr, tbl_2)
	tbl.DisclaimerFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 100);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_3)
	module.DirectLinkViewFrame = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, tbl)
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = useLocalization_upvr_result1.title;
		screenSize = useSelector_upvr(function(arg1_2) -- Line 50
			return arg1_2.ScreenSize
		end);
		onCloseClicked = React_upvr.useCallback(function() -- Line 57
			--[[ Upvalues[5]:
				[1]: sendButtonClickEvent_upvr (copied, readonly)
				[2]: analyticsService_upvr (readonly)
				[3]: AppScreens_upvr (copied, readonly)
				[4]: featureName_upvr (readonly)
				[5]: onClose_upvr (readonly)
			]]
			sendButtonClickEvent_upvr(analyticsService_upvr, AppScreens_upvr.IDVDirectLinkUpsell, featureName_upvr, "CloseModal")
			onClose_upvr()
		end, {analyticsService_upvr, featureName_upvr});
		buttonStackProps = {
			forcedFillDirection = Enum.FillDirection.Vertical;
			buttonHeight = 36;
			buttons = {{
				buttonType = ButtonType_upvr.Secondary;
				props = {
					isDisabled = false;
					onActivated = React_upvr.useCallback(function() -- Line 69
						--[[ Upvalues[5]:
							[1]: sendButtonClickEvent_upvr (copied, readonly)
							[2]: analyticsService_upvr (readonly)
							[3]: AppScreens_upvr (copied, readonly)
							[4]: featureName_upvr (readonly)
							[5]: onClose_upvr (readonly)
						]]
						sendButtonClickEvent_upvr(analyticsService_upvr, AppScreens_upvr.IDVDirectLinkUpsell, featureName_upvr, "CloseModal")
						onClose_upvr()
					end, {analyticsService_upvr, featureName_upvr});
					text = useLocalization_upvr_result1.cancel;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					isDisabled = false;
					onActivated = React_upvr.useCallback(function() -- Line 80
						--[[ Upvalues[6]:
							[1]: idvLink_upvr (readonly)
							[2]: sendButtonClickEvent_upvr (copied, readonly)
							[3]: analyticsService_upvr (readonly)
							[4]: AppScreens_upvr (copied, readonly)
							[5]: featureName_upvr (readonly)
							[6]: openIdvLink_upvr (readonly)
						]]
						if idvLink_upvr ~= nil then
							sendButtonClickEvent_upvr(analyticsService_upvr, AppScreens_upvr.IDVDirectLinkUpsell, featureName_upvr, "OpenIdvLink")
							openIdvLink_upvr(idvLink_upvr)
						end
					end, {openIdvLink_upvr, idvLink_upvr, analyticsService_upvr, featureName_upvr});
					text = useLocalization_upvr_result1.startVerification;
				};
			}};
		};
	}, module)
end