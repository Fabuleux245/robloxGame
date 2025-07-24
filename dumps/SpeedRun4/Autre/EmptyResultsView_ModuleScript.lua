-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:53
-- Luau version 6, Types version 3
-- Time taken: 0.001957 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmptyResultsView")
any_extend_result1.defaultProps = {
	layoutOrder = 0;
	pageLoadingTimeReport = nil;
}
local withStyle_upvr = UIBlox.Style.withStyle
local withLocalization_upvr = dependencies.withLocalization
local GetFFlagRenameFriendsToConnectionsFriendsPage_upvr = dependencies.GetFFlagRenameFriendsToConnectionsFriendsPage
local TextKeys_upvr = require(FriendsLanding.Common.TextKeys)
local Constants_upvr = require(FriendsLanding.Common.Constants)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local AppFonts_upvr = require(FriendsLanding.Parent.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 35
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: GetFFlagRenameFriendsToConnectionsFriendsPage_upvr (readonly)
		[4]: TextKeys_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: AppFonts_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 36
		--[[ Upvalues[9]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: GetFFlagRenameFriendsToConnectionsFriendsPage_upvr (copied, readonly)
			[3]: TextKeys_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Images_upvr (copied, readonly)
			[9]: AppFonts_upvr (copied, readonly)
		]]
		local module = {}
		local var17 = "CommonUI.Messages.Response.NoResults"
		module.noResultsText = var17
		if GetFFlagRenameFriendsToConnectionsFriendsPage_upvr() then
			var17 = TextKeys_upvr.ADD_CONNECTIONS_BTN
		else
			var17 = TextKeys_upvr.ADD_FRIENDS_BTN
		end
		module.addFriendsBtn = var17
		return withLocalization_upvr(module)(function(arg1_3) -- Line 42
			--[[ Upvalues[7]:
				[1]: Roact_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: ImageSetLabel_upvr (copied, readonly)
				[5]: Images_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: AppFonts_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -(Constants_upvr.TOP_BAR_HEIGHT + 45));
				LayoutOrder = arg1.props.layoutOrder;
				BackgroundTransparency = 1;
			}, {
				IndicatorInner = Roact_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.XY;
					Size = UDim2.new(0, 0, 0, 0);
					BackgroundTransparency = 1;
					Position = UDim2.new(0.5, 0, 0.4, 0);
					AnchorPoint = Vector2.new(0.5, 0.4);
				}, {
					UIList = Roact_upvr.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						Padding = UDim.new(0, 0);
					});
					Imagelabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
						BackgroundTransparency = 1;
						Image = Images_upvr["icons/status/oof_xlarge"];
						ImageColor3 = arg1_2.Theme.TextMuted.Color;
						ImageTransparency = arg1_2.Theme.TextMuted.Transparency;
						LayoutOrder = 1;
						Size = UDim2.new(0, 96, 0, 96);
					});
					Textlabel = Roact_upvr.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY;
						BackgroundTransparency = 1;
						Font = AppFonts_upvr.default:getDefault();
						LayoutOrder = 2;
						Size = UDim2.new(0, 0, 0, 0);
						Text = arg1_3.noResultsText;
						TextColor3 = arg1_2.Theme.TextMuted.Color;
						TextSize = arg1_2.Font.Header2.RelativeSize * arg1_2.Font.BaseSize;
						TextTransparency = arg1_2.Theme.TextMuted.Transparency;
					});
				});
			})
		end)
	end)
end
return any_extend_result1