-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:09
-- Luau version 6, Types version 3
-- Time taken: 0.004143 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useStyle_upvr = UIBlox.Core.Style.useStyle
local AnalyticsService_upvr = require(AmpUpsell.Analytics.AnalyticsService)
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local sendButtonClickEvent_upvr = require(AmpUpsell.Analytics.sendButtonClickEvent)
local AppScreens_upvr = require(AmpUpsell.Common.AppScreens)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function AccountSettingsUpsell(arg1) -- Line 27
	--[[ Upvalues[9]:
		[1]: useLocalization_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: AnalyticsService_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: PartialPageModal_upvr (readonly)
		[6]: sendButtonClickEvent_upvr (readonly)
		[7]: AppScreens_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
		[9]: StyledTextLabel_upvr (readonly)
	]]
	local featureName_upvr = arg1.featureName
	local var4_result1_upvr = useLocalization_upvr(arg1.localizationStrings)
	local var5_result1 = useStyle_upvr()
	local var16_upvr
	if arg1.analyticsService then
		var16_upvr = arg1.analyticsService
	else
		var16_upvr = AnalyticsService_upvr.EventStream
	end
	local tbl = {
		title = var4_result1_upvr.title;
		screenSize = arg1.screenSize;
	}
	local onCloseModal_upvr_2 = arg1.onCloseModal
	function tbl.onCloseClicked() -- Line 39
		--[[ Upvalues[5]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: var16_upvr (readonly)
			[3]: AppScreens_upvr (copied, readonly)
			[4]: featureName_upvr (readonly)
			[5]: onCloseModal_upvr_2 (readonly)
		]]
		sendButtonClickEvent_upvr(var16_upvr, AppScreens_upvr.AccountSettingsUpsell, featureName_upvr, "CloseModal")
		onCloseModal_upvr_2()
	end
	local tbl_3 = {
		forcedFillDirection = Enum.FillDirection.Horizontal;
		buttonHeight = 48;
	}
	local tbl_5 = {}
	local tbl_4 = {
		buttonType = ButtonType_upvr.Secondary;
	}
	local tbl_2 = {
		isDisabled = false;
	}
	local onCloseModal_upvr = arg1.onCloseModal
	local function onActivated() -- Line 51
		--[[ Upvalues[5]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: var16_upvr (readonly)
			[3]: AppScreens_upvr (copied, readonly)
			[4]: featureName_upvr (readonly)
			[5]: onCloseModal_upvr (readonly)
		]]
		sendButtonClickEvent_upvr(var16_upvr, AppScreens_upvr.AccountSettingsUpsell, featureName_upvr, "Cancelled")
		onCloseModal_upvr()
	end
	tbl_2.onActivated = onActivated
	tbl_2.text = var4_result1_upvr.buttonCancel
	tbl_4.props = tbl_2
	tbl_5[1] = tbl_4
	tbl_5[2] = {
		buttonType = ButtonType_upvr.PrimarySystem;
		props = {
			isDisabled = false;
			onActivated = function() -- Line 67, Named "onActivated"
				--[[ Upvalues[6]:
					[1]: sendButtonClickEvent_upvr (copied, readonly)
					[2]: var16_upvr (readonly)
					[3]: AppScreens_upvr (copied, readonly)
					[4]: featureName_upvr (readonly)
					[5]: arg1 (readonly)
					[6]: var4_result1_upvr (readonly)
				]]
				sendButtonClickEvent_upvr(var16_upvr, AppScreens_upvr.AccountSettingsUpsell, featureName_upvr, "OpenAccountSettings")
				arg1.openAccountSettings(var4_result1_upvr.buttonSettings)
			end;
			text = var4_result1_upvr.buttonSettings;
		};
	}
	tbl_3.buttons = tbl_5
	tbl.buttonStackProps = tbl_3
	return React_upvr.createElement("ImageButton", {
		AutoButtonColor = false;
		Size = UDim2.new(1, 0, 1, 0);
		ImageTransparency = 1;
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, {
		Overlay = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, {
			Content = React_upvr.createElement(PartialPageModal_upvr, tbl, {
				ViewFrame = React_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.XY;
					BackgroundTransparency = 1;
				}, {
					UIPadding = React_upvr.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24);
						PaddingBottom = UDim.new(0, 24);
					});
					Text = React_upvr.createElement(StyledTextLabel_upvr, {
						fontStyle = var5_result1.Font.Body;
						colorStyle = var5_result1.Theme.TextEmphasis;
						size = UDim2.new(1, 0, 0, 0);
						fluidSizing = false;
						textXAlignment = Enum.TextXAlignment.Left;
						textYAlignment = Enum.TextYAlignment.Center;
						automaticSize = Enum.AutomaticSize.Y;
						text = var4_result1_upvr.message;
					});
				});
			});
		});
	})
end
AccountSettingsUpsell = require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 121
	return {
		screenSize = arg1.ScreenSize;
	}
end)(AccountSettingsUpsell) -- Setting global
return AccountSettingsUpsell