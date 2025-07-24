-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:19
-- Luau version 6, Types version 3
-- Time taken: 0.002113 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local tbl_2_upvr = {
	online = "Common.Presence.Label.Online";
	inStudio = "Common.Presence.Label.RobloxStudio";
}
local function _(arg1, arg2) -- Line 34
	--[[ Upvalues[1]:
		[1]: UserModel_upvr (readonly)
	]]
	if arg1.presence == UserModel_upvr.PresenceType.IN_GAME then
		return arg1.lastLocation
	end
	if arg1.presence == UserModel_upvr.PresenceType.ONLINE then
		return arg2.online
	end
	if arg1.presence == UserModel_upvr.PresenceType.IN_STUDIO then
		return arg2.inStudio
	end
	return '@'..arg1.name
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local React_upvr = require(Parent.React)
local FFlagFriendsRowPreferredTextSizeFix_upvr = require(FriendsMenu.Flags.FFlagFriendsRowPreferredTextSizeFix)
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_logo_studiologo_small_upvr = UIBlox.App.ImageSet.Images["icons/logo/studiologo_small"]
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
return function(arg1) -- Line 55
	--[[ Upvalues[11]:
		[1]: useStyle_upvr (readonly)
		[2]: getLocalizedStrings_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: UserModel_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: FFlagFriendsRowPreferredTextSizeFix_upvr (readonly)
		[7]: ShimmerPanel_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: icons_logo_studiologo_small_upvr (readonly)
		[10]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[11]: OpenTypeSupport_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 70 start (CF ANALYSIS FAILED)
	local Font = useStyle_upvr().Font
	local friend = arg1.friend
	assert(friend, "friend should be non-nil. Silence type checker.")
	local var20
	if friend.presence ~= UserModel_upvr.PresenceType.IN_STUDIO then
	else
	end
	local tbl_3 = {
		Position = arg1.position;
		Size = arg1.size;
	}
	var20 = FFlagFriendsRowPreferredTextSizeFix_upvr
	if var20 then
		-- KONSTANTWARNING: GOTO [62] #42
	end
	-- KONSTANTERROR: [0] 1. Error Block 70 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 41. Error Block 76 start (CF ANALYSIS FAILED)
	tbl_3.AutomaticSize = nil
	tbl_3.BackgroundTransparency = 1
	tbl_3.ClipsDescendants = true
	local tbl = {}
	if FFlagFriendsRowPreferredTextSizeFix_upvr then
		var20 = React_upvr.createElement
		var20 = var20("UIFlexItem", {
			FlexMode = Enum.UIFlexMode.Shrink;
		})
	else
		var20 = nil
	end
	tbl.UIFlexItem = var20
	var20 = React_upvr.createElement
	var20 = var20("UIPadding", {
		PaddingLeft = UDim.new(0, 12);
	})
	tbl.Padding = var20
	var20 = React_upvr.createElement
	var20 = var20("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = UDim.new(0, 4);
	})
	tbl.ListLayout = var20
	-- KONSTANTERROR: [61] 41. Error Block 76 end (CF ANALYSIS FAILED)
end