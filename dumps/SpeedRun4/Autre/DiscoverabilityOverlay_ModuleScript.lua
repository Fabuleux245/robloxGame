-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:43
-- Luau version 6, Types version 3
-- Time taken: 0.007469 seconds

local Parent = script.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local UIBlox = dependencies.UIBlox
local tbl_2_upvr = {
	['1'] = "Discoverable";
	['2'] = "NotDiscoverable";
	["nil"] = "Unset";
}
local Players_upvr = game:GetService("Players")
local DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist_upvr = require(Parent.Flags.DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist)
local React_upvr = dependencies.React
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Hooks.useLocalization
local TextKeys_upvr = require(Parent.Common.TextKeys)
local EventNames_upvr = require(Parent.Analytics.Enums.EventNames)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local RadioButtonList_upvr = UIBlox.App.InputButton.RadioButtonList
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 52
	--[[ Upvalues[16]:
		[1]: Players_upvr (readonly)
		[2]: DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: TextKeys_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: IconSize_upvr (readonly)
		[12]: Checkbox_upvr (readonly)
		[13]: StyledTextLabel_upvr (readonly)
		[14]: RadioButtonList_upvr (readonly)
		[15]: PartialPageModal_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21
	if Players_upvr.LocalPlayer and DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist_upvr.isWhitelistedUserId(Players_upvr.LocalPlayer.UserId) then
		var21 = false
	end
	local var22 = React_upvr
	if var21 then
		var22 = 1
	else
		var22 = nil
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = var22.useState(var22)
	local var9_result1 = useStyle_upvr()
	local Font = var9_result1.Font
	local Theme = var9_result1.Theme
	local var10_result1 = useLocalization_upvr({
		optInText = TextKeys_upvr.DISCOVERABILITY_OPT_IN;
		infoText = TextKeys_upvr.DISCOVERABILITY_INFO;
		learnMoreText = TextKeys_upvr.LEARN_MORE;
		continueText = TextKeys_upvr.CONTINUE;
		yesText = TextKeys_upvr.YES_OPT_IN;
		noText = TextKeys_upvr.NO_OPT_OUT;
		titleText = TextKeys_upvr.DISCOVERABILITY_TITLE;
		titleTextPrefillDiscoverable = TextKeys_upvr.DISCOVERABILITY_TITLE_PREFILL_DISCOVERABLE;
		optInTextPrefillDiscoverable = TextKeys_upvr.DISCOVERABILITY_OPT_IN_PREFILL_DISCOVERABLE;
		infoTextPrefillDiscoverable = TextKeys_upvr.DISCOVERABILITY_INFO_PREFILL_DISCOVERABLE;
	})
	if var21 then
		local function var33() -- Line 93
			--[[ Upvalues[5]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: tbl_2_upvr (copied, readonly)
				[5]: any_useState_result2_upvr (readonly)
			]]
			local var34
			if any_useState_result1_upvr == 1 then
				var34 = 2
			else
				var34 = 1
			end
			arg1.analytics.fireAnalyticsEvent(EventNames_upvr.DiscoverabilityModalRadioButtonClick, {
				selected = tbl_2_upvr[tostring(var34)];
			})
			any_useState_result2_upvr(var34)
		end
		local tbl_6 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Image = Images_upvr["icons/graphic/findfriends_xlarge"];
			ImageTransparency = Theme.IconEmphasis.Transparency;
			Size = UDim2.fromOffset(IconSize_upvr.XLarge, IconSize_upvr.XLarge);
			Position = UDim2.fromScale(0.5, 0.5);
			LayoutOrder = 1;
		}
		local _ = {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}
		local tbl_3 = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, 8);
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 24);
			});
		}
		local tbl_5 = {}
		local var42 = ""
		tbl_5.text = var42
		tbl_5.onActivated = var33
		if any_useState_result1_upvr ~= 1 then
			var42 = false
		else
			var42 = true
		end
		tbl_5.isSelected = var42
		tbl_5.layoutOrder = 1
		tbl_3.Checkbox = React_upvr.createElement(Checkbox_upvr, tbl_5)
		tbl_3.CheckboxLabel = React_upvr.createElement("TextButton", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Font = Font.Body.Font;
			Size = UDim2.fromScale(1, 0);
			Text = var10_result1.optInTextPrefillDiscoverable;
			TextColor3 = Theme.TextDefault.Color;
			TextSize = Font.Body.RelativeSize * Font.BaseSize;
			TextTransparency = Theme.TextDefault.Transparency;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			LayoutOrder = 2;
			[React_upvr.Event.Activated] = var33;
		})
	else
		local tbl_4 = {}
		local tbl = {
			radioButtons = {{
				label = var10_result1.yesText;
			}, {
				label = var10_result1.noText;
			}};
			elementSize = UDim2.new(1, 0, 0, 50);
		}
		function tbl.onActivated(arg1_2) -- Line 80
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: tbl_2_upvr (copied, readonly)
				[4]: any_useState_result2_upvr (readonly)
			]]
			arg1.analytics.fireAnalyticsEvent(EventNames_upvr.DiscoverabilityModalRadioButtonClick, {
				selected = tbl_2_upvr[tostring(arg1_2)];
			})
			any_useState_result2_upvr(arg1_2)
		end
		tbl.initialValue = any_useState_result1_upvr
		tbl.padding = UDim.new(0, 0)
		tbl.layoutOrder = 1
		tbl_4.RadioButtonList = React_upvr.createElement(RadioButtonList_upvr, tbl)
	end
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = var10_result1.titleText;
		screenSize = arg1.screenSize;
		onCloseClicked = function() -- Line 187, Named "onCloseClicked"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: tbl_2_upvr (copied, readonly)
				[3]: any_useState_result1_upvr (readonly)
			]]
			arg1.onCloseClicked(tbl_2_upvr[tostring(any_useState_result1_upvr)])
		end;
		buttonStackProps = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = function() -- Line 87
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: tbl_2_upvr (copied, readonly)
							[3]: any_useState_result1_upvr (readonly)
						]]
						arg1.onActivated(tbl_2_upvr[tostring(any_useState_result1_upvr)])
					end;
					text = var10_result1.continueText;
				};
			}};
			buttonHeight = 48;
			marginBetween = 6;
			forcedFillDirection = Enum.FillDirection.Vertical;
		};
	}, {
		ViewContainer = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			BackgroundTransparency = 1;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 12);
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24);
				PaddingBottom = UDim.new(0, 36);
			});
			Header = React_upvr.createElement(StyledTextLabel_upvr, {
				text = var10_result1.optInText;
				fontStyle = Font.Body;
				colorStyle = Theme.TextDefault;
				size = UDim2.fromScale(1, 0);
				automaticSize = Enum.AutomaticSize.Y;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Top;
				layoutOrder = 1;
			});
			Selector = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				Size = UDim2.fromScale(1, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}, tbl_4);
			Description = React_upvr.createElement(StyledTextLabel_upvr, {
				text = var10_result1.infoText;
				fontStyle = Font.CaptionBody;
				colorStyle = Theme.TextDefault;
				size = UDim2.fromScale(1, 0);
				automaticSize = Enum.AutomaticSize.Y;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Top;
				layoutOrder = 3;
			});
			LearnMore = React_upvr.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				Font = Font.CaptionBody.Font;
				Size = UDim2.fromScale(1, 0);
				Text = var10_result1.learnMoreText;
				TextColor3 = Theme.TextEmphasis.Color;
				TextSize = Font.CaptionBody.RelativeSize * Font.BaseSize;
				TextTransparency = Theme.TextEmphasis.Transparency;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				LayoutOrder = 4;
				[React_upvr.Event.Activated] = arg1.onLearnMoreClick;
			});
		});
	})
end