-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:44
-- Luau version 6, Types version 3
-- Time taken: 0.008125 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Components = GameInvite.Components
local Context = GameInvite.Context
local Parent = GameInvite.Parent
local FriendsMenu = require(Parent.FriendsMenu)
local React_upvr = require(Parent.React)
local GameInviteConstants_upvr = require(GameInvite.GameInviteConstants)
local GameInviteModalLayoutContext_upvr = require(Context.GameInviteModalLayoutContext)
local GameDetailsContext_upvr = require(Context.GameDetailsContext)
local GetFFlagEnableGameInviteRewardsBanner_upvr = require(Parent.SharedFlags).GetFFlagEnableGameInviteRewardsBanner
local GetRewardMetadata_upvr = require(GameInvite.Requests.GetRewardMetadata)
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local DeviceInfo_upvr = require(Parent.NotificationsCommon).DeviceInfo
local TitleHeight_upvr = GameInviteConstants_upvr.Layout.TitleHeight
local GameInviteTitle_upvr = require(Components.GameInviteTitle)
local SidePadding_upvr = GameInviteConstants_upvr.Layout.SidePadding
local FriendsMenuSearch_upvr = FriendsMenu.FriendsMenuSearch
local GameInviteAnalyticsManager_upvr = require(GameInvite.analytics.GameInviteAnalyticsManager)
local GameInviteCustomText_upvr = require(Components.GameInviteCustomText)
local GameInviteRewardsBanner_upvr = require(Components.GameInviteRewardsBanner)
local FriendsMenuFriendsList_upvr = FriendsMenu.FriendsMenuFriendsList
local FriendMenuType_upvr = FriendsMenu.FriendMenuType
local FFlagLuaAppGameInviteFocusable_upvr = require(Parent.SharedFlags).FFlagLuaAppGameInviteFocusable
local function var8_upvr(arg1) -- Line 45
	--[[ Upvalues[19]:
		[1]: React_upvr (readonly)
		[2]: GameInviteModalLayoutContext_upvr (readonly)
		[3]: GameDetailsContext_upvr (readonly)
		[4]: GetFFlagEnableGameInviteRewardsBanner_upvr (readonly)
		[5]: GetRewardMetadata_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: DeviceInfo_upvr (readonly)
		[9]: TitleHeight_upvr (readonly)
		[10]: GameInviteTitle_upvr (readonly)
		[11]: SidePadding_upvr (readonly)
		[12]: FriendsMenuSearch_upvr (readonly)
		[13]: GameInviteAnalyticsManager_upvr (readonly)
		[14]: GameInviteCustomText_upvr (readonly)
		[15]: GameInviteRewardsBanner_upvr (readonly)
		[16]: FriendsMenuFriendsList_upvr (readonly)
		[17]: GameInviteConstants_upvr (readonly)
		[18]: FriendMenuType_upvr (readonly)
		[19]: FFlagLuaAppGameInviteFocusable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useContext_result1 = React_upvr.useContext(GameDetailsContext_upvr)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	local var29
	if GetFFlagEnableGameInviteRewardsBanner_upvr() then
		React_upvr.useEffect(function() -- Line 50
			--[[ Upvalues[3]:
				[1]: GetRewardMetadata_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: any_new_result1_upvr (copied, readonly)
			]]
			if 0 < game.GameId then
				GetRewardMetadata_upvr():andThen(function(arg1_2) -- Line 52
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (copied, readonly)
					]]
					if arg1_2.responseBody and arg1_2.responseBody.name and arg1_2.responseBody.description then
						any_useState_result2_upvr(arg1_2.responseBody)
					end
				end):catch(function(arg1_3) -- Line 56
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:error(`Error fetching reward metadata: {arg1_3}`)
				end)
			end
		end, {})
	end
	local var14_result1 = useSelector_upvr(function(arg1_4) -- Line 63
		return arg1_4.TopBar
	end)
	local var35 = DeviceInfo_upvr
	if React_upvr.useContext(GameInviteModalLayoutContext_upvr).modalMode ~= "compact" then
		var35 = false
	else
		var35 = true
	end
	local promptMessage = any_useContext_result1.promptMessage
	if promptMessage then
		var29 = 0
		if var29 >= #promptMessage then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	var29 = TitleHeight_upvr
	var29 = not var35
	if var29 then
		var29 = not var35.isConsole()
	end
	if var29 then
	end
	if true then
	end
	local var38 = TitleHeight_upvr
	local var39
	if not any_useContext_result1.isCoreScript and var14_result1 and var14_result1.statusBarHeight then
		var39 = true
	else
		var39 = false
		local var40
	end
	if var39 and var14_result1 then
		var38 += var14_result1.statusBarHeight
	end
	local module_2 = {
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}
	var40 = 1
	module_2.Size = UDim2.new(var40, 0, 1, 0)
	local module = {}
	var40 = React_upvr.createElement
	var40 = var40("UIPadding", {
		PaddingBottom = UDim.new(0, 8);
		PaddingTop = UDim.new(0, 8);
	})
	module.UIPadding = var40
	var40 = React_upvr.createElement
	var40 = var40("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		Padding = UDim.new(0, 12);
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Top;
	})
	module.UIListLayout = var40
	var40 = React_upvr.createElement
	var40 = var40("Frame", {
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		LayoutOrder = 0;
		Size = UDim2.new(1, 0, 0, var38);
	}, {
		GameInviteTitle = React_upvr.createElement(GameInviteTitle_upvr, {
			layoutOrder = 0;
			size = UDim2.new(1, 0, 0, TitleHeight_upvr);
		});
	})
	module.TitleContainer = var40
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var40 = var40("Frame", tbl_3, tbl)
		tbl.FriendsMenuSearch = React_upvr.createElement(FriendsMenuSearch_upvr, tbl_6)
		function tbl_6.onFocus() -- Line 141
			--[[ Upvalues[1]:
				[1]: GameInviteAnalyticsManager_upvr (copied, readonly)
			]]
			GameInviteAnalyticsManager_upvr:onSearchFocused()
		end
		tbl_6.focusElement = false
		tbl_6.size = UDim2.new(1, 0, 0, 36)
		tbl_6.layoutOrder = 1
		local tbl_6 = {}
		tbl.UIListLayout = React_upvr.createElement("UIListLayout", tbl_2)
		tbl_2.VerticalAlignment = Enum.VerticalAlignment.Top
		tbl_2.SortOrder = Enum.SortOrder.LayoutOrder
		tbl_2.Padding = UDim.new(0, 12)
		tbl_2.FillDirection = Enum.FillDirection.Vertical
		local tbl_2 = {}
		tbl.UIPadding = React_upvr.createElement("UIPadding", tbl_5)
		tbl_5.PaddingRight = UDim.new(0, SidePadding_upvr)
		tbl_5.PaddingLeft = UDim.new(0, SidePadding_upvr)
		local tbl_5 = {}
		local tbl = {}
		tbl_3.Size = UDim2.new(1, 0, 0, 36)
		tbl_3.LayoutOrder = 1
		tbl_3.BackgroundTransparency = 1
		tbl_3.BorderSizePixel = 0
		local tbl_3 = {}
		var40 = React_upvr.createElement
		return var40
	end
	if not var29 or not INLINED() then
		var40 = nil
	end
	module.SearchBox = var40
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var40 = var40(GameInviteCustomText_upvr, tbl_4)
		tbl_4.promptMessage = promptMessage
		tbl_4.size = UDim2.new(1, 0, 0, 36)
		tbl_4.layoutOrder = 2
		local tbl_4 = {}
		var40 = React_upvr.createElement
		return var40
	end
	if not true or not INLINED_2() then
		var40 = nil
	end
	module.CustomTextContainer = var40
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var40 = var40(GameInviteRewardsBanner_upvr, tbl_7)
		tbl_7.rewardMetadata = any_useState_result1
		tbl_7.layoutOrder = 2
		local tbl_7 = {}
		var40 = React_upvr.createElement
		return var40
	end
	if not GetFFlagEnableGameInviteRewardsBanner_upvr() or any_useState_result1 == nil or not INLINED_3() then
		var40 = nil
	end
	module.RewardsBanner = var40
	var40 = React_upvr.createElement
	local tbl_8 = {
		layoutOrder = 3;
		size = UDim2.new(1, 0, 1, -(var29 + 12 + 48 + 48 + var14_result1.statusBarHeight));
		parentComponentName = GameInviteConstants_upvr.ParentComponentName;
		menuType = FriendMenuType_upvr.SingleSelect;
		gameDetailsData = any_useContext_result1;
	}
	if FFlagLuaAppGameInviteFocusable_upvr then
	else
	end
	tbl_8.disableSelectionParentManagement = nil
	module.FriendsList = var40(FriendsMenuFriendsList_upvr, tbl_8)
	return React_upvr.createElement("Frame", module_2, module)
end
local GetFFlagEnableCommonFriendsMenu_upvr = require(Parent.SharedFlags).GetFFlagEnableCommonFriendsMenu
local InviteFriendContext_upvr = FriendsMenu.InviteFriendContext
local FriendsMenuContextWrapper_upvr = FriendsMenu.FriendsMenuContextWrapper
return function(arg1) -- Line 171
	--[[ Upvalues[5]:
		[1]: GetFFlagEnableCommonFriendsMenu_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: InviteFriendContext_upvr (readonly)
		[4]: FriendsMenuContextWrapper_upvr (readonly)
		[5]: var8_upvr (readonly)
	]]
	local var60
	if GetFFlagEnableCommonFriendsMenu_upvr() then
		var60 = React_upvr.useContext(InviteFriendContext_upvr)
	else
		var60 = {}
		function var60.inviteSingleFriend() -- Line 174
		end
		function var60.getMaxRecipientRowNum() -- Line 174
		end
	end
	if GetFFlagEnableCommonFriendsMenu_upvr() then
		return React_upvr.createElement(FriendsMenuContextWrapper_upvr, {
			inviteSingleFriend = var60.inviteSingleFriend;
			inviteMultiFriends = function() -- Line 178, Named "inviteMultiFriends"
			end;
			isLoadingCustomParams = arg1.isLoadingCustomParams;
		}, {
			GameInviteContent = React_upvr.createElement(var8_upvr, arg1);
		})
	end
	return React_upvr.createElement(var8_upvr, arg1)
end