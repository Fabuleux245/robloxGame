-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:06
-- Luau version 6, Types version 3
-- Time taken: 0.007024 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendTile")
any_extend_result1.validateProps = t.strictInterface({
	user = t.table;
	index = t.number;
	openPlayerProfile = t.optional(t.callback);
	isLuobu = t.optional(t.boolean);
	pageLoadingTimeReport = t.optional(t.callback);
	buttons = t.optional(t.array(t.strictInterface({
		icon = t.optional(t.string);
		onActivated = t.optional(t.callback);
		isSecondary = t.optional(t.boolean);
		isDisabled = t.optional(t.boolean);
	})));
	userProfile = t.optional(t.table);
	isPlayerContextualMenuEnabled = t.optional(t.boolean);
	selected = t.optional(t.boolean);
	focusGuiObject = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	user = {
		username = "";
	};
	openPlayerProfile = function() -- Line 26
		return function() -- Line 27
		end
	end;
	isLuobu = false;
	index = 1;
	buttons = nil;
	isPlayerContextualMenuEnabled = false;
}
local memoize_upvr = dependencies.memoize
local createRelevancyInfo_upvr = require(script.Parent.createRelevancyInfo)
function any_extend_result1.init(arg1) -- Line 59
	--[[ Upvalues[3]:
		[1]: memoize_upvr (readonly)
		[2]: createRelevancyInfo_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	arg1.state = {
		isFirstRender = true;
	}
	arg1.makeRelevancyInfo = memoize_upvr(createRelevancyInfo_upvr)
	local any_createRef_result1 = Roact_upvr.createRef()
	arg1.playerTileRef = any_createRef_result1
	if arg1.props.isPlayerContextualMenuEnabled then
		function any_createRef_result1(arg1_2, arg2) -- Line 64
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.props.openPlayerProfile(arg1.props.user)
		end
	else
		any_createRef_result1 = function(arg1_3, arg2) -- Line 68
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local user = arg1.props.user
			if arg1_3 and arg2 then
				return arg1.props.openPlayerProfile(user.id, arg1.props.index, user, arg1_3, arg2)
			end
			return arg1.props.openPlayerProfile(user.id, arg1.props.index, user)
		end
	end
	arg1.openPlayerProfile = any_createRef_result1
	function arg1.openPlayerProfileForRelevancyInfo(arg1_4, arg2) -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function() -- Line 78
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_4 (readonly)
				[3]: arg2 (readonly)
			]]
			return arg1.openPlayerProfile(arg1_4, arg2)
		end
	end
	function arg1.checkAndSetSelected() -- Line 83
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.selected then
			if arg1.props.focusGuiObject then
				local any_getValue_result1_2 = arg1.playerTileRef:getValue()
				if any_getValue_result1_2 then
					arg1.props.focusGuiObject(any_getValue_result1_2)
				end
			end
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 93
	if arg1.props.pageLoadingTimeReport then
		arg1.props.pageLoadingTimeReport()
	end
	arg1.checkAndSetSelected()
end
local getCorrectUserPresence_upvr = require(FriendsLanding.Friends.getCorrectUserPresence)
local userPresenceText_upvr = require(FriendsLanding.Friends.userPresenceText)
local userPresenceIcon_upvr = require(FriendsLanding.Friends.userPresenceIcon)
local withStyle_upvr = UIBlox.Style.withStyle
local withLocalization_upvr = dependencies.withLocalization
local UserProfiles_upvr = require(Parent.UserProfiles)
local FFlagFriendsLandingIsVerifiedFromUserProfile_upvr = require(FriendsLanding.Flags.FFlagFriendsLandingIsVerifiedFromUserProfile)
local PlayerTile_upvr = UIBlox.App.Tile.PlayerTile
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
function any_extend_result1.render(arg1) -- Line 101
	--[[ Upvalues[11]:
		[1]: getCorrectUserPresence_upvr (readonly)
		[2]: userPresenceText_upvr (readonly)
		[3]: userPresenceIcon_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: withLocalization_upvr (readonly)
		[6]: UserProfiles_upvr (readonly)
		[7]: FFlagFriendsLandingIsVerifiedFromUserProfile_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: PlayerTile_upvr (readonly)
		[10]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[11]: OpenTypeSupport_upvr (readonly)
	]]
	local user_upvr = arg1.props.user
	local getCorrectUserPresence_upvr_result1 = getCorrectUserPresence_upvr(user_upvr)
	local var38_upvw
	local var39_upvw
	local any_getValue_result1 = arg1.playerTileRef:getValue()
	if any_getValue_result1 then
		var38_upvw = any_getValue_result1.AbsoluteSize
		var39_upvw = any_getValue_result1.AbsolutePosition
	else
		arg1:setState({
			isFirstRender = false;
		})
	end
	local var43_upvr = userPresenceText_upvr[getCorrectUserPresence_upvr_result1]
	local var44_upvr = userPresenceIcon_upvr[getCorrectUserPresence_upvr_result1]
	return withStyle_upvr(function(arg1_5) -- Line 119
		--[[ Upvalues[13]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: var43_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: UserProfiles_upvr (copied, readonly)
			[5]: FFlagFriendsLandingIsVerifiedFromUserProfile_upvr (copied, readonly)
			[6]: user_upvr (readonly)
			[7]: var44_upvr (readonly)
			[8]: var38_upvw (read and write)
			[9]: var39_upvw (read and write)
			[10]: Roact_upvr (copied, readonly)
			[11]: PlayerTile_upvr (copied, readonly)
			[12]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
			[13]: OpenTypeSupport_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			presenceText = var43_upvr;
			accountDeletedText = "Feature.Friends.Action.AccountDeleted";
		})(function(arg1_6) -- Line 123
			--[[ Upvalues[12]:
				[1]: arg1 (copied, readonly)
				[2]: UserProfiles_upvr (copied, readonly)
				[3]: FFlagFriendsLandingIsVerifiedFromUserProfile_upvr (copied, readonly)
				[4]: user_upvr (copied, readonly)
				[5]: var44_upvr (copied, readonly)
				[6]: var38_upvw (copied, read and write)
				[7]: var39_upvw (copied, read and write)
				[8]: arg1_5 (readonly)
				[9]: Roact_upvr (copied, readonly)
				[10]: PlayerTile_upvr (copied, readonly)
				[11]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
				[12]: OpenTypeSupport_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var56
			local var57
			if arg1.props.userProfile then
				var56 = arg1.props.userProfile.names.combinedName
				var57 = UserProfiles_upvr.Formatters.formatUsername(arg1.props.userProfile.names.username)
				if FFlagFriendsLandingIsVerifiedFromUserProfile_upvr then
					user_upvr.isDeleted = arg1.props.userProfile.isDeleted
				end
			end
			if var56 then
				local _ = var56
			else
			end
			if var57 then
				local _ = var57
			else
			end
			if not var56 then
				local _
			else
			end
			local var61 = false
			if FFlagFriendsLandingIsVerifiedFromUserProfile_upvr then
				local userProfile = arg1.props.userProfile
				if userProfile then
					userProfile = arg1.props.userProfile.isVerified
				end
				var61 = userProfile
			else
				var61 = user_upvr.hasVerifiedBadge
			end
			local module_2 = {
				tileSize = UDim2.fromScale(1, 1);
				thumbnail = user_upvr.thumbnail;
				title = user_upvr.displayName;
				subtitle = '@'..user_upvr.username;
				hasVerifiedBadge = var61;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			module_2.onActivated = arg1.openPlayerProfile(var38_upvw, var39_upvw, user_upvr.displayName, '@'..user_upvr.username, arg1.makeRelevancyInfo(user_upvr, arg1_6.presenceText or nil, var44_upvr, arg1.openPlayerProfileForRelevancyInfo(var38_upvw, var39_upvw), arg1_5.Theme, arg1.props.index, arg1.props.isLuobu, arg1_5.Font, arg1_6.accountDeletedText, true))
			module_2.forwardedRef = arg1.playerTileRef
			module_2.buttons = arg1.props.buttons
			local var64 = true
			module_2.Selectable = var64
			if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
				var64 = OpenTypeSupport_upvr:getUserNameStylisticAlternative()
			else
				var64 = nil
			end
			module_2.openTypeFeatures = var64
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_2.relevancyInfo = arg1.makeRelevancyInfo(user_upvr, arg1_6.presenceText or nil, var44_upvr, arg1.openPlayerProfileForRelevancyInfo(var38_upvw, var39_upvw), arg1_5.Theme, arg1.props.index, arg1.props.isLuobu, arg1_5.Font, arg1_6.accountDeletedText, true)
			return Roact_upvr.createElement(PlayerTile_upvr, module_2)
		end)
	end)
end
return any_extend_result1