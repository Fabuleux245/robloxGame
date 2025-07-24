-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:36
-- Luau version 6, Types version 3
-- Time taken: 0.002251 seconds

local Parent = script:FindFirstAncestor("AdPlayer").Parent
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	confirmationText = "CoreScripts.Ads.Label.RewardedVideoExitConfirmation";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local AdsDisplayOrder_upvr = require(Parent.AdGuiInteractivity).AdsDisplayOrder
local View_upvr = Foundation.View
local StateLayerAffordance_upvr = Foundation.Enums.StateLayerAffordance
local Text_upvr = Foundation.Text
local Button_upvr = Foundation.Button
local FillBehavior_upvr = Foundation.Enums.FillBehavior
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
return function(arg1) -- Line 24, Named "ExitConfirmationModalComponent"
	--[[ Upvalues[10]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AdsDisplayOrder_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: StateLayerAffordance_upvr (readonly)
		[7]: Text_upvr (readonly)
		[8]: Button_upvr (readonly)
		[9]: FillBehavior_upvr (readonly)
		[10]: ButtonVariant_upvr (readonly)
	]]
	return React_upvr.createElement("ScreenGui", {
		DisplayOrder = AdsDisplayOrder_upvr.Modal;
		IgnoreGuiInset = true;
		Enabled = arg1.Enabled;
	}, {
		modal = React_upvr.createElement(View_upvr, {
			tag = "anchor-center-center position-center-center bg-over-media-0 radius-medium padding-x-xxlarge padding-y-xxlarge";
			Size = UDim2.fromOffset(440, 164);
			onActivated = function() -- Line 35, Named "onActivated"
			end;
			stateLayer = {
				affordance = StateLayerAffordance_upvr.None;
			};
		}, {
			buttonContainer = React_upvr.createElement(View_upvr, {
				tag = "size-full-1200 anchor-bottom-center position-bottom-center row gap-medium flex-fill";
			}, {
				cancelExitButton = React_upvr.createElement(Button_upvr, {
					text = "Continue";
					fillBehavior = FillBehavior_upvr.Fill;
					width = UDim.new(1, 0);
					variant = ButtonVariant_upvr.Emphasis;
					onActivated = arg1.onCancel;
				});
				confirmExitButton = React_upvr.createElement(Button_upvr, {
					text = "Exit";
					fillBehavior = FillBehavior_upvr.Fill;
					width = UDim.new(1, 0);
					variant = ButtonVariant_upvr.Standard;
					onActivated = arg1.onConfirm;
					LayoutOrder = 2;
				});
			});
			React_upvr.createElement(Text_upvr, {
				tag = "size-full-1100 position-top-center anchor-top-center text-align-x-left";
				Text = useLocalization_upvr(tbl_upvr).confirmationText;
				TextScaled = true;
			})
		});
	})
end