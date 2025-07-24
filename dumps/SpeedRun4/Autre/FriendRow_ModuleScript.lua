-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:19
-- Luau version 6, Types version 3
-- Time taken: 0.009235 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Components = FriendsMenu.Components
local Parent = FriendsMenu.Parent
local Context = FriendsMenu.Context
local SharedFlags = require(Parent.SharedFlags)
local FriendsMenuCheckbox_upvr = Components.FriendsMenuCheckbox
if SharedFlags.GetFFlagEnableCommonFriendsMenu() then
	FriendsMenuCheckbox_upvr = require(Context.InviteCallbackContext)
else
	FriendsMenuCheckbox_upvr = require(Context.InviteFriendContext)
end
local function var7_upvr() -- Line 42
end
local tbl_5_upvr = {
	sidePadding = 24;
	isFullRowActivatable = false;
	backgroundTransparency = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local SelectedUsersContext_upvr = require(Context.SelectedUsersContext)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr = SharedFlags.GetFFlagFriendsMenuDummyLoadingFriendsFix
local FriendMenuType_upvr = require(FriendsMenu.Enums.FriendMenuType)
local FFlagFriendsRowPreferredTextSizeFix_upvr = require(FriendsMenu.Flags.FFlagFriendsRowPreferredTextSizeFix)
local FriendThumbnail_upvr = require(Components.FriendThumbnail)
local FriendInfo_upvr = require(Components.FriendInfo)
local FriendsMenuCheckbox_upvr_2_upvr = require(FriendsMenuCheckbox_upvr)
local udim2_upvr = UDim2.new(1, 0, 0.5, 0)
local vector2_upvr = Vector2.new(1, 0.5)
local FriendsMenuButton_upvr = require(Components.FriendsMenuButton)
return function(arg1) -- Line 62
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: FriendsMenuCheckbox_upvr (readonly)
		[6]: SelectedUsersContext_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: SquadInviteChangesExperimentation_upvr (readonly)
		[9]: GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr (readonly)
		[10]: FriendMenuType_upvr (readonly)
		[11]: FFlagFriendsRowPreferredTextSizeFix_upvr (readonly)
		[12]: var7_upvr (readonly)
		[13]: FriendThumbnail_upvr (readonly)
		[14]: FriendInfo_upvr (readonly)
		[15]: FriendsMenuCheckbox_upvr_2_upvr (readonly)
		[16]: udim2_upvr (readonly)
		[17]: vector2_upvr (readonly)
		[18]: FriendsMenuButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_5_upvr, arg1)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local Theme = useStyle_upvr().Theme
	local friend_upvr = any_join_result1_upvr.friend
	assert(friend_upvr, "friend should be non-nil. Silence type checker.")
	local any_useContext_result1_upvr = React_upvr.useContext(FriendsMenuCheckbox_upvr)
	local any_useContext_result1_upvr_2 = React_upvr.useContext(SelectedUsersContext_upvr)
	local sidePadding = any_join_result1_upvr.sidePadding
	local isFullRowActivatable_upvr = any_join_result1_upvr.isFullRowActivatable
	if isFullRowActivatable_upvr then
		isFullRowActivatable_upvr = not any_join_result1_upvr.isFetchingFriends
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 76
		--[[ Upvalues[3]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: friend_upvr (readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		if any_useContext_result1_upvr and any_useContext_result1_upvr.inviteSingleFriend and not friend_upvr.isLoadingPlaceholder then
			any_useContext_result1_upvr.inviteSingleFriend(friend_upvr.id, any_join_result1_upvr.layoutOrder)
		end
	end, dependencyArray_upvr(any_useContext_result1_upvr, any_useContext_result1_upvr.inviteSingleFriend, friend_upvr.id, friend_upvr.isLoadingPlaceholder, any_join_result1_upvr.layoutOrder))
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 91
		--[[ Upvalues[3]:
			[1]: any_useContext_result1_upvr_2 (readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: SquadInviteChangesExperimentation_upvr (copied, readonly)
		]]
		if any_useContext_result1_upvr_2.isFriendSelected(any_join_result1_upvr.friend.id) then
			local friend = any_join_result1_upvr.friend
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				friend = any_join_result1_upvr.friend.displayName
			else
				friend = nil
			end
			any_useContext_result1_upvr_2.removeFriend(friend.id, friend)
		else
			any_useContext_result1_upvr_2.addFriend(any_join_result1_upvr.friend.id, any_join_result1_upvr.friend.displayName)
		end
	end, dependencyArray_upvr(any_useContext_result1_upvr_2.isFriendSelected, any_useContext_result1_upvr_2.removeFriend, any_useContext_result1_upvr_2.addFriend, any_join_result1_upvr.friend.id))
	local module_2 = {
		Size = UDim2.new(1, 0, 0, 72);
	}
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
	else
	end
	module_2.AutomaticSize = nil
	if not any_useState_result1 or not Theme.BackgroundOnHover.Color then
	end
	module_2.BackgroundColor3 = Theme.BackgroundDefault.Color
	if any_useState_result1 then
		-- KONSTANTWARNING: GOTO [155] #113
	end
	if any_join_result1_upvr.backgroundTransparency then
		-- KONSTANTWARNING: GOTO [155] #113
	end
	-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [151] 111. Error Block 89 start (CF ANALYSIS FAILED)
	local var41
	module_2.BackgroundTransparency = Theme.BackgroundDefault.Transparency
	module_2.BorderSizePixel = 0
	module_2.LayoutOrder = any_join_result1_upvr.layoutOrder
	module_2[React_upvr.Event.MouseEnter] = function() -- Line 146
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if not any_join_result1_upvr.isFetchingFriends then
			any_useState_result2_upvr(true)
		end
	end
	module_2[React_upvr.Event.MouseLeave] = function() -- Line 151
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end
	if GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr() and friend_upvr.isLoadingPlaceholder or not isFullRowActivatable_upvr then
	else
	end
	module_2[React_upvr.Event.Activated] = React_upvr.useCallback(function() -- Line 112
		--[[ Upvalues[7]:
			[1]: isFullRowActivatable_upvr (readonly)
			[2]: GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr (copied, readonly)
			[3]: friend_upvr (readonly)
			[4]: any_join_result1_upvr (readonly)
			[5]: FriendMenuType_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: any_useCallback_result1_upvr_2 (readonly)
		]]
		if not isFullRowActivatable_upvr or GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr() and friend_upvr.isLoadingPlaceholder then
		else
			if any_join_result1_upvr.menuType ~= FriendMenuType_upvr.MultiSelect then
				any_useCallback_result1_upvr()
				return
			end
			any_useCallback_result1_upvr_2()
		end
	end, dependencyArray_upvr(isFullRowActivatable_upvr, any_join_result1_upvr.menuType, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2, friend_upvr.isLoadingPlaceholder))
	module_2.AutoButtonColor = isFullRowActivatable_upvr
	local module = {}
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		local tbl_4 = {}
		var41 = Enum.VerticalAlignment.Center
		tbl_4.VerticalAlignment = var41
		var41 = Enum.SortOrder.LayoutOrder
		tbl_4.SortOrder = var41
		var41 = Enum.FillDirection.Horizontal
		tbl_4.FillDirection = var41
		var41 = UDim.new(0, 12)
		tbl_4.Padding = var41
		-- KONSTANTWARNING: GOTO [229] #166
	end
	module.UIListLayout = nil
	module.Padding = React_upvr.createElement("UIPadding", {
		PaddingRight = UDim.new(0, sidePadding);
		PaddingLeft = UDim.new(0, sidePadding);
		PaddingBottom = UDim.new(0, 8);
		PaddingTop = UDim.new(0, 8);
	})
	local tbl = {
		friend = friend_upvr;
		isHoverRow = any_useState_result1;
		size = UDim2.new(0, 56, 0, 56);
		position = UDim2.new(0, 0, 0.5, 0);
		anchorPoint = Vector2.new(0, 0.5);
		isFetchingFriends = any_join_result1_upvr.isFetchingFriends;
	}
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		-- KONSTANTWARNING: GOTO [310] #225
	end
	tbl.LayoutOrder = nil
	module.ThumbnailAndPresenceWrapper = React_upvr.createElement(FriendThumbnail_upvr, tbl)
	local tbl_6 = {
		position = UDim2.new(0, 56, 0, 0);
	}
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		-- KONSTANTWARNING: GOTO [338] #247
	end
	tbl_6.size = UDim2.new(1, -134, 1, 0)
	tbl_6.friend = friend_upvr
	tbl_6.isFetchingFriendsNames = any_join_result1_upvr.isFetchingFriendsNames
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
	else
	end
	tbl_6.LayoutOrder = nil
	module.UserInfo = React_upvr.createElement(FriendInfo_upvr, tbl_6)
	if any_join_result1_upvr.menuType == FriendMenuType_upvr.MultiSelect then
		local tbl_2 = {
			size = UDim2.new(0, 66, 0, 36);
			position = udim2_upvr;
			anchorPoint = vector2_upvr;
			friend = friend_upvr;
		}
		local isFetchingFriends = any_join_result1_upvr.isFetchingFriends
		tbl_2.isDisabled = isFetchingFriends
		if FFlagFriendsRowPreferredTextSizeFix_upvr then
			isFetchingFriends = 3
		else
			isFetchingFriends = nil
		end
		tbl_2.layoutOrder = isFetchingFriends
		local any_createElement_result1 = React_upvr.createElement(FriendsMenuCheckbox_upvr_2_upvr, tbl_2)
	else
		local tbl_3 = {
			size = UDim2.new(0, 66, 0, 36);
			position = udim2_upvr;
			anchorPoint = vector2_upvr;
			friend = friend_upvr;
			onInvite = any_useCallback_result1_upvr;
			isFullRowActivatable = any_join_result1_upvr.isFullRowActivatable;
		}
		if FFlagFriendsRowPreferredTextSizeFix_upvr then
		else
		end
		tbl_3.layoutOrder = nil
	end
	module.InviteButton = React_upvr.createElement(FriendsMenuButton_upvr, tbl_3)
	do
		return React_upvr.createElement("ImageButton", module_2, module)
	end
	-- KONSTANTERROR: [151] 111. Error Block 89 end (CF ANALYSIS FAILED)
end