-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:48
-- Luau version 6, Types version 3
-- Time taken: 0.009109 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Context = GameInvite.Context
local Parent = GameInvite.Parent
local FriendsMenu = require(Parent.FriendsMenu)
local UIBlox = require(Parent.UIBlox)
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local GameInviteConstants = require(GameInvite.GameInviteConstants)
local Images = UIBlox.App.ImageSet.Images
local SharedFlags = require(Parent.SharedFlags)
local tbl_upvr = {
	cancelText = "Feature.SettingsHub.Action.CancelSearch";
	invitefriends = "Feature.SettingsHub.Heading.InviteFriends";
	inviteConnections = "CommonUI.Features.Label.InviteConnections";
	copyLink = "Feature.SocialShare.Action.CopyLink";
}
local GetFFlagEnableGameInviteModalVRSupport_upvr = SharedFlags.GetFFlagEnableGameInviteModalVRSupport
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local isExperienceOlderThanOneWeek_upvr = require(GameInvite.utils.isExperienceOlderThanOneWeek)
local function var11_upvr(arg1, arg2, arg3) -- Line 57
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableGameInviteModalVRSupport_upvr (readonly)
		[2]: IsVRAppBuild_upvr (readonly)
		[3]: isExperienceOlderThanOneWeek_upvr (readonly)
	]]
	if GetFFlagEnableGameInviteModalVRSupport_upvr() then
		local var25 = not IsVRAppBuild_upvr()
		if var25 then
			var25 = arg3
			if var25 then
				var25 = not arg2
				if var25 then
					var25 = arg1
					if var25 then
						var25 = arg1.isCoreScript
						if var25 then
							var25 = false
							if arg1.serverType == "StandardServer" then
								var25 = isExperienceOlderThanOneWeek_upvr(arg1.gameDetails)
							end
						end
					end
				end
			end
		end
		return var25
	end
	var25 = not arg2
	local var26 = var25
	if var26 then
		var26 = arg3
		if var26 then
			var26 = arg1
			if var26 then
				var26 = arg1.isCoreScript
				if var26 then
					var26 = false
					if arg1.serverType == "StandardServer" then
						var26 = isExperienceOlderThanOneWeek_upvr(arg1.gameDetails)
					end
				end
			end
		end
	end
	return var26
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local GameInviteModalLayoutContext_upvr = require(Context.GameInviteModalLayoutContext)
local GameDetailsContext_upvr = require(Context.GameDetailsContext)
local FriendsListContext_upvr = FriendsMenu.FriendsListContext
local InviteFriendContext_upvr = FriendsMenu.InviteFriendContext
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local useAppPolicy_upvr = UniversalAppPolicy_upvr.useAppPolicy
local DeviceInfo_upvr = require(Parent.NotificationsCommon).DeviceInfo
local TextService_upvr = game:GetService("TextService")
local TitleIconSize_upvr = GameInviteConstants.Layout.TitleIconSize
local GameInviteModalManager_upvr = require(GameInvite.GameInviteModalManager)
local FFlagRenameFriendsToConnectionsCoreUI_upvr = SharedFlags.FFlagRenameFriendsToConnectionsCoreUI
local SidePadding_upvr = GameInviteConstants.Layout.SidePadding
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local icons_navigation_close_upvr = Images["icons/navigation/close"]
local icons_menu_search_upvr = Images["icons/menu/search"]
local ShareGameInviteLink_upvr = require(GameInvite.Components.ShareGameInviteLink)
local FriendsMenuSearch_upvr = FriendsMenu.FriendsMenuSearch
local GameInviteAnalyticsManager_upvr = require(GameInvite.analytics.GameInviteAnalyticsManager)
return function(arg1) -- Line 85
	--[[ Upvalues[23]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GameInviteModalLayoutContext_upvr (readonly)
		[4]: GameDetailsContext_upvr (readonly)
		[5]: FriendsListContext_upvr (readonly)
		[6]: InviteFriendContext_upvr (readonly)
		[7]: getLocalizedStrings_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: useAppPolicy_upvr (readonly)
		[10]: DeviceInfo_upvr (readonly)
		[11]: var11_upvr (readonly)
		[12]: TextService_upvr (readonly)
		[13]: TitleIconSize_upvr (readonly)
		[14]: GameInviteModalManager_upvr (readonly)
		[15]: FFlagRenameFriendsToConnectionsCoreUI_upvr (readonly)
		[16]: UniversalAppPolicy_upvr (readonly)
		[17]: SidePadding_upvr (readonly)
		[18]: ImageSetButton_upvr (readonly)
		[19]: icons_navigation_close_upvr (readonly)
		[20]: icons_menu_search_upvr (readonly)
		[21]: ShareGameInviteLink_upvr (readonly)
		[22]: FriendsMenuSearch_upvr (readonly)
		[23]: GameInviteAnalyticsManager_upvr (readonly)
	]]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local any_useContext_result1 = React_upvr.useContext(GameInviteModalLayoutContext_upvr)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local getLocalizedStrings_upvr_result1_upvr = getLocalizedStrings_upvr(tbl_upvr)
	local searchFriends_upvr = React_upvr.useContext(FriendsListContext_upvr).searchFriends
	local function var54_upvr(arg1_2) -- Line 97
		return arg1_2.getExperienceInviteShareLinkEnabled()
	end
	local var55_upvr
	if any_useContext_result1.modalMode ~= "compact" then
		var54_upvr = false
	else
		var54_upvr = true
	end
	local any_isDesktopDevice_result1_upvr = DeviceInfo_upvr.isDesktopDevice()
	var55_upvr = React_upvr.useContext(GameDetailsContext_upvr)
	local var11_upvr_result1_upvr = var11_upvr(var55_upvr, DeviceInfo_upvr.isConsole(), useAppPolicy_upvr(var54_upvr))
	var55_upvr = any_isDesktopDevice_result1_upvr
	if var55_upvr then
		var55_upvr = not any_useContext_result1.isFullWidth
	end
	local var58_upvr = useStyle_upvr_result1_upvr.Font.BaseSize * useStyle_upvr_result1_upvr.Font.Header2.RelativeSize
	local var59_upvw
	local var60_upvw = 0
	if var11_upvr_result1_upvr then
		if any_isDesktopDevice_result1_upvr and var55_upvr then
			local var61 = math.ceil(TextService_upvr:GetTextSize(getLocalizedStrings_upvr_result1_upvr.copyLink, var58_upvr, useStyle_upvr_result1_upvr.Font.Header2.Font, Vector2.new(300 - TitleIconSize_upvr, math.huge)).X) + 10
			var59_upvw = UDim2.new(0, var61, 1, 0)
			var60_upvw += var61
		else
			var59_upvw = UDim2.new(0, TitleIconSize_upvr, 0, TitleIconSize_upvr)
			var60_upvw += TitleIconSize_upvr
		end
	end
	if var54_upvr then
		var60_upvw += TitleIconSize_upvr
	end
	if var54_upvr and var11_upvr_result1_upvr then
		var60_upvw += 4
	end
	local any_useContext_result1_upvr = React_upvr.useContext(InviteFriendContext_upvr)
	local function var62_upvr() -- Line 138
		--[[ Upvalues[2]:
			[1]: GameInviteModalManager_upvr (copied, readonly)
			[2]: any_useContext_result1_upvr (readonly)
		]]
		GameInviteModalManager_upvr:closeModal(any_useContext_result1_upvr.getMaxRecipientRowNum())
	end
	local function var64_upvr() -- Line 142
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(true)
	end
	local function var65_upvr() -- Line 146
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: searchFriends_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
		searchFriends_upvr("")
	end
	if not var54_upvr and any_useState_result1 then
		any_useState_result2_upvr(false)
		searchFriends_upvr("")
	end
	local var66_upvr = FFlagRenameFriendsToConnectionsCoreUI_upvr
	if var66_upvr then
		var66_upvr = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	local var85_upvr = useStyle_upvr_result1_upvr.Font.BaseSize * useStyle_upvr_result1_upvr.Font.Body.RelativeSize
	local function var84() -- Line 239
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: FriendsMenuSearch_upvr (copied, readonly)
			[3]: GameInviteAnalyticsManager_upvr (copied, readonly)
			[4]: var85_upvr (readonly)
			[5]: useStyle_upvr_result1_upvr (readonly)
			[6]: getLocalizedStrings_upvr_result1_upvr (readonly)
			[7]: var65_upvr (readonly)
		]]
		return {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				Padding = UDim.new(0, 4);
			});
			SearchBox = React_upvr.createElement(FriendsMenuSearch_upvr, {
				layoutOrder = 0;
				size = UDim2.new(1, -120, 1, -20);
				focusElement = true;
				onFocus = function() -- Line 252, Named "onFocus"
					--[[ Upvalues[1]:
						[1]: GameInviteAnalyticsManager_upvr (copied, readonly)
					]]
					GameInviteAnalyticsManager_upvr:onSearchFocused()
				end;
			});
			CancelButton = React_upvr.createElement("TextButton", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(1, 0.5);
				Position = UDim2.new(1, 0, 0.5, 0);
				Size = UDim2.new(0, 100, 1, 0);
				TextSize = var85_upvr;
				TextColor3 = useStyle_upvr_result1_upvr.Theme.UIDefault.Color;
				Text = getLocalizedStrings_upvr_result1_upvr.cancelText;
				Font = useStyle_upvr_result1_upvr.Font.Body.Font;
				[React_upvr.Event.Activated] = var65_upvr;
			});
		}
	end
	if any_useState_result1 then
		var84 = React_upvr.useMemo(var84, {any_useState_result1})
	else
		var84 = React_upvr.useMemo(function() -- Line 160
			--[[ Upvalues[19]:
				[1]: React_upvr (copied, readonly)
				[2]: SidePadding_upvr (copied, readonly)
				[3]: var60_upvw (read and write)
				[4]: ImageSetButton_upvr (copied, readonly)
				[5]: TitleIconSize_upvr (copied, readonly)
				[6]: var62_upvr (readonly)
				[7]: icons_navigation_close_upvr (copied, readonly)
				[8]: useStyle_upvr_result1_upvr (readonly)
				[9]: var66_upvr (readonly)
				[10]: getLocalizedStrings_upvr_result1_upvr (readonly)
				[11]: var58_upvr (readonly)
				[12]: var54_upvr (readonly)
				[13]: var64_upvr (readonly)
				[14]: icons_menu_search_upvr (copied, readonly)
				[15]: var11_upvr_result1_upvr (readonly)
				[16]: ShareGameInviteLink_upvr (copied, readonly)
				[17]: any_isDesktopDevice_result1_upvr (readonly)
				[18]: var55_upvr (readonly)
				[19]: var59_upvw (read and write)
			]]
			local module = {}
			module.UIPadding = React_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, SidePadding_upvr);
				PaddingRight = UDim.new(0, SidePadding_upvr);
			})
			module.UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			})
			local tbl_2 = {}
			tbl_2.UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				Padding = UDim.new(0, 4);
			})
			tbl_2.CloseButton = React_upvr.createElement(ImageSetButton_upvr, {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, TitleIconSize_upvr, 0, TitleIconSize_upvr);
				[React_upvr.Event.Activated] = var62_upvr;
				Image = icons_navigation_close_upvr;
				ImageColor3 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Color;
				ImageTransparency = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Transparency;
				BorderSizePixel = 0;
			})
			module.LeftActionContainer = React_upvr.createElement("Frame", {
				Size = UDim2.new(0, var60_upvw, 1, 0);
				LayoutOrder = 0;
				BackgroundTransparency = 1;
			}, tbl_2)
			local tbl_6 = {}
			tbl_2 = 1
			local var76 = tbl_2
			tbl_6.BackgroundTransparency = var76
			local var77
			if var77 then
				var77 = getLocalizedStrings_upvr_result1_upvr
				var76 = var77.inviteConnections
			else
				var77 = getLocalizedStrings_upvr_result1_upvr
				var76 = var77.invitefriends
			end
			tbl_6.Text = var76
			tbl_6.TextSize = var58_upvr
			tbl_6.TextWrapped = true
			tbl_6.TextXAlignment = Enum.TextXAlignment.Center
			var77 = useStyle_upvr_result1_upvr.Theme.TextEmphasis
			tbl_6.TextColor3 = var77.Color
			var77 = useStyle_upvr_result1_upvr.Font.Header2
			tbl_6.Font = var77.Font
			var77 = 1
			tbl_6.Size = UDim2.new(var77, var60_upvw * 2 * -1, 1, 0)
			tbl_6.LayoutOrder = 1
			module.Title = React_upvr.createElement("TextLabel", tbl_6)
			local tbl_5 = {}
			var77 = 0
			tbl_5.Size = UDim2.new(var77, var60_upvw, 1, 0)
			tbl_5.LayoutOrder = 2
			tbl_5.BackgroundTransparency = 1
			local tbl = {}
			var77 = React_upvr.createElement
			var77 = var77("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				Padding = UDim.new(0, 4);
			})
			tbl.UIListLayout = var77
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var77 = var77(ImageSetButton_upvr, tbl_4)
				tbl_4.BorderSizePixel = 0
				tbl_4.ImageTransparency = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Transparency
				tbl_4.ImageColor3 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Color
				tbl_4.Image = icons_menu_search_upvr
				tbl_4[React_upvr.Event.Activated] = var64_upvr
				tbl_4.Size = UDim2.new(0, TitleIconSize_upvr, 0, TitleIconSize_upvr)
				tbl_4.AnchorPoint = Vector2.new(0.5, 0.5)
				tbl_4.BackgroundTransparency = 1
				tbl_4.LayoutOrder = 0
				local tbl_4 = {}
				var77 = React_upvr.createElement
				return var77
			end
			if not var54_upvr or not INLINED() then
				var77 = nil
			end
			tbl.SearchButton = var77
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var77 = var77(ShareGameInviteLink_upvr, tbl_3)
				tbl_3.size = var59_upvw
				tbl_3.isFullSize = var55_upvr
				tbl_3.isDesktop = any_isDesktopDevice_result1_upvr
				tbl_3.layoutOrder = 1
				local tbl_3 = {}
				var77 = React_upvr.createElement
				return var77
			end
			if not var11_upvr_result1_upvr or not INLINED_2() then
				var77 = nil
			end
			tbl.ShareGameInviteLink = var77
			module.RightActionContainer = React_upvr.createElement("Frame", tbl_5, tbl)
			return module
		end, {any_useState_result1, var55_upvr, var54_upvr, var11_upvr_result1_upvr, any_isDesktopDevice_result1_upvr})
	end
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0, 1);
		LayoutOrder = arg1.layoutOrder;
		Position = UDim2.new(0, 0, 1, 0);
		Size = arg1.size;
	}, var84)
end