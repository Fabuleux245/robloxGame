-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:20
-- Luau version 6, Types version 3
-- Time taken: 0.004954 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
local InviteStatus_upvr = require(FriendsMenu.Constants).InviteStatus
local tbl_upvr = {
	inviteFriend = "Feature.SettingsHub.Action.InviteFriend";
	[InviteStatus_upvr.Success] = "Feature.SettingsHub.Label.Invited";
	[InviteStatus_upvr.Moderated] = "Feature.SettingsHub.Label.Moderated";
	[InviteStatus_upvr.Pending] = "Feature.SettingsHub.Label.Sending";
}
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local React_upvr = require(Parent.React)
local FriendsListContext_upvr = require(FriendsMenu.Context.FriendsListContext)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local FFlagFriendsRowPreferredTextSizeFix_upvr = require(FriendsMenu.Flags.FFlagFriendsRowPreferredTextSizeFix)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
return function(arg1) -- Line 41
	--[[ Upvalues[11]:
		[1]: useSelector_upvr (readonly)
		[2]: getLocalizedStrings_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FriendsListContext_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: InviteStatus_upvr (readonly)
		[8]: FFlagFriendsRowPreferredTextSizeFix_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local friend = arg1.friend
		assert(friend, "friend should be non-nil. Silence type checker.")
		return arg1_2.GameInvitesStatus[friend.id]
	end)
	local var8_result1 = getLocalizedStrings_upvr(tbl_upvr)
	local useStyle_upvr_result1 = useStyle_upvr()
	local var21
	if useStyle_upvr_result1 then
	end
	local var22 = useStyle_upvr_result1
	if var22 then
		var22 = useStyle_upvr_result1.Font
	end
	local isFetchingFriends = React_upvr.useContext(FriendsListContext_upvr).isFetchingFriends
	var21 = var22.BaseSize
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var21 = false
		return useSelector_upvr_result1 == InviteStatus_upvr.Failed
	end
	if not useSelector_upvr_result1 or INLINED() then
		var21 = not arg1.isFullRowActivatable
	end
	if var21 then
		if FFlagFriendsRowPreferredTextSizeFix_upvr then
			local module = {
				buttonType = ButtonType_upvr.Secondary;
				isDisabled = isFetchingFriends;
				isLoading = false;
				onActivated = arg1.onInvite;
				standardSize = StandardButtonSize_upvr.XSmall;
				fitContent = true;
				anchorPoint = arg1.anchorPoint;
				position = arg1.position;
			}
			local inviteFriend = var8_result1.inviteFriend
			module.text = inviteFriend
			if FFlagFriendsRowPreferredTextSizeFix_upvr then
				inviteFriend = arg1.layoutOrder
			else
				inviteFriend = nil
			end
			module.layoutOrder = inviteFriend
			return React_upvr.createElement(Button_upvr, module)
		end
		return React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Size = arg1.size;
			AnchorPoint = arg1.anchorPoint;
			Position = arg1.position;
		}, {
			Button = React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.Secondary;
				isDisabled = isFetchingFriends;
				isLoading = false;
				onActivated = arg1.onInvite;
				standardSize = StandardButtonSize_upvr.XSmall;
				fitContent = true;
				anchorPoint = arg1.anchorPoint;
				position = arg1.position;
				text = var8_result1.inviteFriend;
			});
		})
	end
	local var29 = var8_result1[useSelector_upvr_result1]
	if not var29 then
		var29 = var8_result1.inviteFriend
	end
	local module_2 = {
		BackgroundTransparency = 1;
		Text = var29;
		TextSize = var21 * var22.CaptionHeader.RelativeSize;
		TextWrapped = true;
		Size = arg1.size;
		AnchorPoint = arg1.anchorPoint;
		Position = arg1.position;
		TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
	}
	local Font = var22.CaptionHeader.Font
	module_2.Font = Font
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		Font = arg1.layoutOrder
	else
		Font = nil
	end
	module_2.LayoutOrder = Font
	return React_upvr.createElement("TextLabel", module_2)
end