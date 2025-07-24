-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.001914 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local LocalizationService_upvr = game:GetService("LocalizationService")
local IconButton_upvr = Foundation.IconButton
local IconSize_upvr = Foundation.Enums.IconSize
return function(arg1) -- Line 25, Named "RobuxUpsellModalTitle"
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: formatNumber_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
		[7]: IconButton_upvr (readonly)
		[8]: IconSize_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr({
		NeedMoreRobux = "IAPExperience.RobuxUpsell.Text.NeedMoreRobux";
		CurrentBalance = "IAPExperience.InsufficientRobux.Text.CurrentBalance";
	})
	return React_upvr.createElement(View_upvr, {
		padding = {
			right = UDim.new(0, -12);
			left = UDim.new(0, -12);
		};
		tag = "size-full-300";
	}, {
		TitleArea = React_upvr.createElement(View_upvr, {
			tag = "col gap-xsmall size-full align-x-center";
		}, {
			Title = React_upvr.createElement(Text_upvr, {
				LayoutOrder = 1;
				Size = UDim2.new(1, 0, 0, 0);
				Text = useLocalization_upvr_result1.NeedMoreRobux;
				tag = "auto-xy text-heading-small content-emphasis";
			});
			SubTitle = React_upvr.createElement(Text_upvr, {
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 0);
				Text = useLocalization_upvr_result1.CurrentBalance..' '..utf8.char(57346)..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.balanceAmount);
				tag = "auto-xy text-body-medium content-default";
			});
		});
		CloseButton = React_upvr.createElement(IconButton_upvr, {
			size = IconSize_upvr.Medium;
			icon = "icons/navigation/close";
			onActivated = arg1.cancelPurchaseActivated;
		});
	})
end