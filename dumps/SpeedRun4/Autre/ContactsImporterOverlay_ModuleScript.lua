-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:39
-- Luau version 6, Types version 3
-- Time taken: 0.005494 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Dash = dependencies.Dash
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsImporterOverlay")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	onCloseClicked = Dash.isCallable;
	onConnectContacts = Dash.isCallable;
	onLearnMoreClick = Dash.isCallable;
	onAddFriendsActivated = Dash.isCallable;
	isFromAddFriendsPage = t.boolean;
	isFromSignup = t.optional(t.boolean);
})
local withLocalization_upvr = dependencies.withLocalization
local TextKeys_upvr = require(Parent.Common.TextKeys)
local withStyle_upvr = UIBlox.Style.withStyle
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[10]:
		[1]: withLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: PartialPageModal_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: IconSize_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr({
		connectWithFriends = TextKeys_upvr.CONTACTS_LIST_TITLE;
		connectWithFriendsBody = TextKeys_upvr.CONNECT_CONTACTS_BODY;
		connectWithFriendsCaption = TextKeys_upvr.CONNECT_CONTACTS_CAPTION;
		getStarted = TextKeys_upvr.GET_STARTED;
		closeModal = TextKeys_upvr.CLOSE_MODAL;
		goToAddFriends = TextKeys_upvr.NOT_NOW;
		learnMore = TextKeys_upvr.LEARN_MORE;
	})(function(arg1_2) -- Line 57
		--[[ Upvalues[9]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: PartialPageModal_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: Images_upvr (copied, readonly)
			[8]: IconSize_upvr (copied, readonly)
			[9]: StyledTextLabel_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 58
			--[[ Upvalues[9]:
				[1]: arg1 (copied, readonly)
				[2]: ButtonType_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: PartialPageModal_upvr (copied, readonly)
				[6]: ImageSetLabel_upvr (copied, readonly)
				[7]: Images_upvr (copied, readonly)
				[8]: IconSize_upvr (copied, readonly)
				[9]: StyledTextLabel_upvr (copied, readonly)
			]]
			local Theme = arg1_3.Theme
			local Font = arg1_3.Font
			local props = arg1.props
			local tbl = {}
			if props.isFromAddFriendsPage or props.isFromSignup then
				table.insert(tbl, {
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = props.onCloseClicked;
						text = arg1_2.goToAddFriends;
					};
				})
			else
				table.insert(tbl, {
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = props.onAddFriendsActivated;
						text = arg1_2.goToAddFriends;
					};
				})
			end
			table.insert(tbl, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props.onConnectContacts;
					text = arg1_2.getStarted;
				};
			})
			return Roact_upvr.createElement(PartialPageModal_upvr, {
				title = arg1_2.connectWithFriends;
				screenSize = props.screenSize;
				onCloseClicked = props.onCloseClicked;
				buttonStackProps = {
					buttons = tbl;
					buttonHeight = 48;
					marginBetween = 6;
					forcedFillDirection = Enum.FillDirection.Vertical;
				};
			}, {
				ViewContainer = Roact_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y;
					Size = UDim2.new(1, 0, 0, 0);
					BackgroundTransparency = 1;
				}, {
					UIListLayout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, 12);
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
					});
					UIPadding = Roact_upvr.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24);
						PaddingBottom = UDim.new(0, 36);
					});
					IconContainer = Roact_upvr.createElement("Frame", {
						BackgroundTransparency = 1;
						Size = UDim2.fromOffset(120, 132);
					}, {
						Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
							AnchorPoint = Vector2.new(0.5, 0.5);
							BackgroundTransparency = 1;
							ImageTransparency = Theme.IconEmphasis.Transparency;
							Image = Images_upvr["icons/graphic/connectcontacts_xlarge"];
							Size = UDim2.fromOffset(IconSize_upvr.XLarge, IconSize_upvr.XLarge);
							Position = UDim2.fromScale(0.5, 0.5);
							LayoutOrder = 1;
						});
					});
					Header = Roact_upvr.createElement(StyledTextLabel_upvr, {
						text = arg1_2.connectWithFriendsBody;
						fontStyle = Font.Body;
						colorStyle = Theme.TextEmphasis;
						size = UDim2.fromScale(1, 0);
						automaticSize = Enum.AutomaticSize.Y;
						textTruncate = Enum.TextTruncate.AtEnd;
						textXAlignment = Enum.TextXAlignment.Center;
						textYAlignment = Enum.TextYAlignment.Top;
						layoutOrder = 2;
					});
					Description = Roact_upvr.createElement(StyledTextLabel_upvr, {
						text = arg1_2.connectWithFriendsCaption;
						fontStyle = Font.CaptionBody;
						colorStyle = Theme.TextDefault;
						size = UDim2.fromScale(1, 0);
						automaticSize = Enum.AutomaticSize.Y;
						textTruncate = Enum.TextTruncate.AtEnd;
						textXAlignment = Enum.TextXAlignment.Center;
						textYAlignment = Enum.TextYAlignment.Top;
						layoutOrder = 3;
					});
					LearnMore = Roact_upvr.createElement("TextButton", {
						AutomaticSize = Enum.AutomaticSize.Y;
						BackgroundTransparency = 1;
						Font = arg1_3.Font.CaptionBody.Font;
						Size = UDim2.fromScale(1, 0);
						Text = arg1_2.learnMore;
						TextColor3 = Theme.TextEmphasis.Color;
						TextSize = Font.CaptionBody.RelativeSize * Font.BaseSize;
						TextTransparency = Theme.TextEmphasis.Transparency;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextYAlignment = Enum.TextYAlignment.Top;
						LayoutOrder = 4;
						[Roact_upvr.Event.Activated] = props.onLearnMoreClick;
					});
				});
			})
		end)
	end)
end
return any_extend_result1