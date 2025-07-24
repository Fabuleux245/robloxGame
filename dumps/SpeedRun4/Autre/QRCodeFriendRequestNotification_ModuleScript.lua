-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:24
-- Luau version 6, Types version 3
-- Time taken: 0.005793 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextKeys_upvr = require(ProfileQRCode.Common.TextKeys)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalUserInfo_upvr = require(ProfileQRCode.Utils.useLocalUserInfo)
local useAnalytics_upvr = require(ProfileQRCode.Analytics.useAnalytics)
local React_upvr = require(Parent.React)
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_menu_scanqr_upvr = Images["icons/menu/scanqr"]
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local IconButton_upvr = UIBlox.App.Button.IconButton
local icons_navigation_close_upvr = Images["icons/navigation/close"]
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
return function(arg1) -- Line 48
	--[[ Upvalues[19]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: TextKeys_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: useLocalUserInfo_upvr (readonly)
		[8]: useAnalytics_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: EventNames_upvr (readonly)
		[11]: ImageSetLabel_upvr (readonly)
		[12]: icons_menu_scanqr_upvr (readonly)
		[13]: StyledTextLabel_upvr (readonly)
		[14]: IconButton_upvr (readonly)
		[15]: icons_navigation_close_upvr (readonly)
		[16]: IconSize_upvr (readonly)
		[17]: Button_upvr (readonly)
		[18]: ButtonType_upvr (readonly)
		[19]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var25
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var25 = useAppPolicy_upvr
		var25 = var25(function(arg1_2) -- Line 50
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var25 = nil
	end
	local tbl = {}
	if FFlagFriendsRenameSocgraph_upvr and var25 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [23] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 20. Error Block 26 start (CF ANALYSIS FAILED)
	tbl.notificationRequest = TextKeys_upvr.NotificationRequest
	if FFlagFriendsRenameSocgraph_upvr and var25 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	else
	end
	tbl.acceptFriend = TextKeys_upvr.AcceptFriend
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl)
	local useStyle_upvr_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var13_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 71
		--[[ Upvalues[3]:
			[1]: var13_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var13_result1_upvr.fireEvent(EventNames_upvr.QRPageFriendRequestBannerShown, {
			qrCodeBannerQueueSize = arg1.notificationQueueSize;
		})
	end, {arg1.userId})
	do
		return React_upvr.createElement("Frame", {
			ZIndex = 2;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			BorderSizePixel = 0;
			BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundUIDefault.Color;
			BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundUIDefault.Transparency;
		}, {
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
				PaddingTop = UDim.new(0, 12);
			});
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			UIStroke = React_upvr.createElement("UIStroke", {
				Color = useStyle_upvr_result1.Theme.Divider.Color;
				Transparency = useStyle_upvr_result1.Theme.Divider.Transparency;
				Thickness = 1;
			});
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(640, math.huge);
			});
			UpperFrame = React_upvr.createElement("Frame", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.fromScale(1, 0);
				BorderSizePixel = 0;
			}, {
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 12);
				});
				Layout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				QRCodeImageFrame = React_upvr.createElement("Frame", {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					Size = UDim2.new(0, 40, 0, 40);
					BorderSizePixel = 0;
				}, {
					QRImage = React_upvr.createElement(ImageSetLabel_upvr, {
						Image = icons_menu_scanqr_upvr;
						BackgroundTransparency = 1;
						ImageTransparency = 0;
						ImageColor3 = useStyle_upvr_result1.Theme.TextEmphasis.Color;
						Size = UDim2.new(0, 40, 0, 40);
					});
				});
				TextFrame = React_upvr.createElement("Frame", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, -72, 0, 0);
					BorderSizePixel = 0;
				}, {
					UIPadding = React_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 16);
						PaddingRight = UDim.new(0, 16);
					});
					Layout = React_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
					});
					Username = React_upvr.createElement(StyledTextLabel_upvr, {
						layoutOrder = 1;
						text = useLocalUserInfo_upvr(arg1.userId).displayName;
						fontStyle = useStyle_upvr_result1.Font.Header2;
						colorStyle = useStyle_upvr_result1.Theme.TextDefault;
						size = UDim2.new(1, 0, 0, 20);
						automaticSize = Enum.AutomaticSize.Y;
						textXAlignment = Enum.TextXAlignment.Left;
						textYAlignment = Enum.TextYAlignment.Center;
						textWrapped = true;
					});
					Spacer1 = React_upvr.createElement("Frame", {
						BorderSizePixel = 0;
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 0, 5);
						LayoutOrder = 2;
					});
					Description = React_upvr.createElement(StyledTextLabel_upvr, {
						layoutOrder = 3;
						text = useLocalization_upvr_result1.notificationRequest;
						fontStyle = useStyle_upvr_result1.Font.Body;
						colorStyle = useStyle_upvr_result1.Theme.TextDefault;
						size = UDim2.new(1, 0, 0, 28);
						automaticSize = Enum.AutomaticSize.Y;
						textXAlignment = Enum.TextXAlignment.Left;
						textYAlignment = Enum.TextYAlignment.Center;
						textWrapped = true;
						lineHeight = 1;
					});
				});
				CloseButtonFrame = React_upvr.createElement("Frame", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(0, 32, 0, 32);
					BorderSizePixel = 0;
				}, {
					CloseButton = React_upvr.createElement(IconButton_upvr, {
						icon = icons_navigation_close_upvr;
						iconSize = IconSize_upvr.Medium;
						onActivated = arg1.onClose;
						anchorPoint = Vector2.new(0.13, 0.13);
					});
				});
			});
			AcceptButton = React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.PrimarySystem;
				layoutOrder = 2;
				standardSize = StandardButtonSize_upvr.Small;
				text = useLocalization_upvr_result1.acceptFriend;
				fontStyle = useStyle_upvr_result1.Font.CaptionBody;
				isDisabled = any_useState_result1;
				onActivated = function() -- Line 198, Named "onActivated"
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr (readonly)
						[2]: arg1 (readonly)
					]]
					any_useState_result2_upvr(true)
					arg1.onAccept(arg1.userId)
				end;
			});
		})
	end
	-- KONSTANTERROR: [20] 20. Error Block 26 end (CF ANALYSIS FAILED)
end