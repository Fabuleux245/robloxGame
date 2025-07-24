-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:13
-- Luau version 6, Types version 3
-- Time taken: 0.005618 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerIcon")
any_extend_result1.validateProps = t.strictInterface({
	player = require(RobloxGui.Modules.Interfaces.playerInterface);
	layoutOrder = t.optional(t.integer);
	isSmallTouchDevice = t.optional(t.boolean);
	playerIconInfo = t.strictInterface({
		isPlaceOwner = t.boolean;
		avatarIcon = t.optional(t.table);
		specialGroupIcon = t.optional(t.table);
	});
	playerRelationship = t.strictInterface({
		isBlocked = t.boolean;
		friendStatus = t.enum(Enum.FriendStatus);
		isFollowing = t.boolean;
		isFollower = t.boolean;
	});
})
local function _(arg1, arg2) -- Line 46, Named "getSocialIconImage"
	local var11 = arg1.FriendIcons[arg2.friendStatus]
	if arg2.isBlocked then
		return arg1.BlockedIcon
	end
	if var11 then
		return var11
	end
	return nil
end
local function _(arg1, arg2, arg3, arg4) -- Line 58, Named "getIconImage"
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local var12 = arg1.MembershipIcons[arg2.MembershipType]
	local var13 = arg1.FriendIcons[arg4.friendStatus]
	local var14
	if arg4.isBlocked then
		var14 = arg1.BlockedIcon
		-- KONSTANTWARNING: GOTO [20] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 11. Error Block 30 start (CF ANALYSIS FAILED)
	if var13 then
		var14 = var13
	else
		var14 = nil
	end
	if var14 then
		return var14
	end
	if arg3.isPlaceOwner then
		return arg1.PlaceOwnerIcon
	end
	if arg1.CustomPlayerIcons[arg2.UserId] then
		return arg1.CustomPlayerIcons[arg2.UserId]
	end
	if arg3.specialGroupIcon then
		return arg3.specialGroupIcon
	end
	if arg4.isFollowing then
		return arg1.FollowingIcon
	end
	if var12 then
		return var12
	end
	do
		return ""
	end
	-- KONSTANTERROR: [16] 11. Error Block 30 end (CF ANALYSIS FAILED)
end
local WithLayoutValues_upvr = require(Parent.Connection.LayoutValues).WithLayoutValues
local FFlagPlayerIconAvatarFix_upvr = require(RobloxGui.Modules.Flags.FFlagPlayerIconAvatarFix)
local ImageSetLabel_upvr = require(CorePackages.Packages.UIBlox).Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 78
	--[[ Upvalues[4]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: FFlagPlayerIconAvatarFix_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 79
		--[[ Upvalues[4]:
			[1]: FFlagPlayerIconAvatarFix_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
		]]
		local var19
		if FFlagPlayerIconAvatarFix_upvr then
			local playerIconInfo_2 = arg1.props.playerIconInfo
			if playerIconInfo_2 then
				playerIconInfo_2 = arg1.props.playerIconInfo.avatarIcon
			end
			var19 = playerIconInfo_2
		else
			var19 = arg1.props.playerIconInfo.avatarIcon
		end
		if var19 == nil then
			var19 = arg1_2.DefaultThumbnail
		end
		if arg1_2.IsTenFoot then
			return Roact_upvr.createElement("ImageLabel", {
				LayoutOrder = arg1.props.layoutOrder or 1;
				Size = arg1_2.PlayerIconBackgroundSize;
				BackgroundTransparency = 1;
				Image = arg1_2.PlayerBackgroundImage;
			}, {Roact_upvr.createElement("ImageLabel", {
				Size = arg1_2.PlayerIconSize;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = var19;
				BorderSizePixel = 0;
			})})
		end
		local var24
		if arg1.props.isSmallTouchDevice then
			local module = {
				AnchorPoint = Vector2.new(0, 0.5);
				Position = UDim2.new(0, arg1_2.PlayerNamePaddingXMobile, 0.5, 0);
				Size = arg1_2.PlayerIconSizeMobile;
			}
			local var26 = 1
			module.BackgroundTransparency = var26
			local player_2 = arg1.props.player
			local playerIconInfo_3 = arg1.props.playerIconInfo
			var24 = arg1
			local playerRelationship = var24.props.playerRelationship
			var24 = arg1_2.MembershipIcons
			local var30 = var24[player_2.MembershipType]
			local var31 = arg1_2.FriendIcons[playerRelationship.friendStatus]
			if playerRelationship.isBlocked then
				var24 = arg1_2.BlockedIcon
			elseif var31 then
				var24 = var31
			else
				var24 = nil
			end
			if var24 then
				var26 = var24
			elseif playerIconInfo_3.isPlaceOwner then
				var26 = arg1_2.PlaceOwnerIcon
			elseif arg1_2.CustomPlayerIcons[player_2.UserId] then
				var26 = arg1_2.CustomPlayerIcons[player_2.UserId]
			elseif playerIconInfo_3.specialGroupIcon then
				var26 = playerIconInfo_3.specialGroupIcon
			elseif playerRelationship.isFollowing then
				var26 = arg1_2.FollowingIcon
			elseif var30 then
				var26 = var30
			else
				var26 = ""
			end
			module.Image = var26
			module.BorderSizePixel = 0
			return Roact_upvr.createElement(ImageSetLabel_upvr, module)
		end
		local module_2 = {
			LayoutOrder = arg1.props.layoutOrder;
			Size = arg1_2.PlayerIconSize;
		}
		local var33 = 1
		module_2.BackgroundTransparency = var33
		local player = arg1.props.player
		local playerIconInfo = arg1.props.playerIconInfo
		local playerRelationship_2 = arg1.props.playerRelationship
		local MembershipIcons = arg1_2.MembershipIcons
		local var38 = MembershipIcons[player.MembershipType]
		local var39 = arg1_2.FriendIcons[playerRelationship_2.friendStatus]
		if playerRelationship_2.isBlocked then
			MembershipIcons = arg1_2.BlockedIcon
		elseif var39 then
			MembershipIcons = var39
		else
			MembershipIcons = nil
		end
		if MembershipIcons then
			var33 = MembershipIcons
		elseif playerIconInfo.isPlaceOwner then
			var33 = arg1_2.PlaceOwnerIcon
		elseif arg1_2.CustomPlayerIcons[player.UserId] then
			var33 = arg1_2.CustomPlayerIcons[player.UserId]
		elseif playerIconInfo.specialGroupIcon then
			var33 = playerIconInfo.specialGroupIcon
		elseif playerRelationship_2.isFollowing then
			var33 = arg1_2.FollowingIcon
		elseif var38 then
			var33 = var38
		else
			var33 = ""
		end
		module_2.Image = var33
		module_2.BorderSizePixel = 0
		return Roact_upvr.createElement(ImageSetLabel_upvr, module_2)
	end)
end
local function mapStateToProps(arg1) -- Line 137
	return {
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
	}
end
if require(Parent.Parent.Flags.FFlagPlayerListReduceRerenders) then
	return require(CorePackages.Packages.React).memo(RoactRodux.connect(mapStateToProps, nil)(any_extend_result1))
end
return RoactRodux.connect(mapStateToProps, nil)(any_extend_result1)