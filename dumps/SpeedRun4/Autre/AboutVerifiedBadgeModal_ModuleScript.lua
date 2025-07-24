-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:28
-- Luau version 6, Types version 3
-- Time taken: 0.002127 seconds

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local Parent = VerifiedBadges.Parent
local function selectScreenSize_upvr(arg1) -- Line 20, Named "selectScreenSize"
	return arg1.ScreenSize
end
local UIBlox_upvr = require(Parent.UIBlox)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local udim_upvr_2 = UDim.new(0, 24)
local udim_upvr = UDim.new(0, 12)
local constants_upvr = require(VerifiedBadges.constants)
return function(arg1) -- Line 24, Named "AboutVerifiedBadgeModal"
	--[[ Upvalues[8]:
		[1]: UIBlox_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectScreenSize_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: udim_upvr_2 (readonly)
		[7]: udim_upvr (readonly)
		[8]: constants_upvr (readonly)
	]]
	local any_useStyle_result1 = UIBlox_upvr.Core.Style.useStyle()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		titleText = "Feature.ProfileBadges.VerifiedBadgeInfoTitle";
		bodyText = "Feature.ProfileBadges.VerifiedBadgeInfo";
		learnMoreText = "Feature.ProfileBadges.VerifiedBadgeInfoLink";
	})
	local tbl_2 = {}
	tbl_2[1] = arg1
	local tbl = {}
	tbl[1] = arg1
	return React_upvr.createElement(UIBlox_upvr.App.Dialog.Modal.PartialPageModal, {
		title = useLocalization_upvr_result1.titleText;
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		buttonStackProps = {
			buttons = {{
				buttonType = UIBlox_upvr.App.Button.Enum.ButtonType.PrimarySystem;
				props = {
					onActivated = React_upvr.useCallback(function() -- Line 40
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						if arg1.onConfirm then
							arg1.onConfirm()
						end
					end, tbl);
					text = useLocalization_upvr_result1.learnMoreText;
				};
			}};
		};
		contentPadding = udim_upvr_2;
		onCloseClicked = React_upvr.useCallback(function() -- Line 34
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onClose then
				arg1.onClose()
			end
		end, tbl_2);
	}, {
		Wrapper = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = udim_upvr;
			});
			Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = udim_upvr;
				PaddingBottom = udim_upvr;
			});
			Icon = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
				layoutOrder = 1;
				text = constants_upvr.VERIFIED_EMOJI;
				fontStyle = any_useStyle_result1.Font.Title;
				colorStyle = any_useStyle_result1.Theme.TextEmphasis;
				automaticSize = Enum.AutomaticSize.XY;
				fluidSizing = false;
			});
			Body = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
				layoutOrder = 2;
				text = useLocalization_upvr_result1.bodyText;
				fontStyle = any_useStyle_result1.Font.Body;
				colorStyle = any_useStyle_result1.Theme.TextMuted;
				size = UDim2.fromScale(1, 0);
				automaticSize = Enum.AutomaticSize.Y;
				fluidSizing = false;
			});
		});
	})
end