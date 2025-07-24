-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:57
-- Luau version 6, Types version 3
-- Time taken: 0.002716 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images_upvr = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsLandingContextualMenu")
local tbl_4_upvr = {
	motorCallback = dependencies.Otter.instant;
	open = {
		targetValue = 1;
	};
	close = {
		targetValue = 0;
	};
}
local memoize_upvr = dependencies.memoize
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
function any_extend_result1.init(arg1) -- Line 35
	--[[ Upvalues[3]:
		[1]: memoize_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	function arg1.onClose() -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.navigation then
			arg1.props.navigation.goBack()
		end
	end
	arg1.onUnfriend = memoize_upvr(function(arg1_2, arg2) -- Line 42
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		local tbl_3 = {}
		local tbl = {}
		tbl.toastTitle = arg1_2
		tbl.iconImage = arg2
		tbl_3.toastContent = tbl
		tbl_2.toastProps = tbl_3
		arg1.props.navigation.navigate(EnumScreens_upvr.GenericToast, tbl_2)
	end)
	arg1.onActivated = memoize_upvr(function(arg1_3, arg2) -- Line 53
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Images_upvr (copied, readonly)
		]]
		return function() -- Line 54
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: Images_upvr (copied, readonly)
				[4]: arg2 (readonly)
			]]
			local userId = arg1.props.navigation.state.params.userId
			if userId ~= nil then
				arg1.props.unfriendTargetUserId({
					targetUserId = userId;
					currentUserId = arg1.props.localUserId;
				}):andThen(function() -- Line 59
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_3 (copied, readonly)
						[3]: Images_upvr (copied, readonly)
					]]
					arg1.onUnfriend(arg1_3, Images_upvr["icons/actions/friends/friendRemove"])
				end):catch(function() -- Line 62
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: arg2 (copied, readonly)
					]]
					arg1.onUnfriend(arg2)
				end)
			end
			arg1.onClose()
		end
	end)
end
local withStyle_upvr = UIBlox.Style.withStyle
local withLocalization_upvr = dependencies.withLocalization
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
function any_extend_result1.render(arg1) -- Line 71
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ContextualMenu_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: MenuDirection_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 72
		--[[ Upvalues[7]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ContextualMenu_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: MenuDirection_upvr (copied, readonly)
			[7]: tbl_4_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			unfriend = "Feature.Friends.Action.Unfriend";
			error = "Feature.Toast.NetworkingError.SomethingIsWrong";
			success = "Feature.Friends.Action.FriendRemoved";
		})(function(arg1_5) -- Line 77
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: ContextualMenu_upvr (copied, readonly)
				[3]: Images_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: MenuDirection_upvr (copied, readonly)
				[6]: tbl_4_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(ContextualMenu_upvr, {
				buttonProps = {{
					icon = Images_upvr["icons/actions/friends/friendRemove"];
					text = arg1_5.unfriend;
					onActivated = arg1.onActivated(arg1_5.success, arg1_5.error);
				}};
				open = true;
				menuDirection = MenuDirection_upvr.Up;
				openPositionY = UDim.new(1, -24);
				screenSize = arg1.props.screenSize;
				onDismiss = arg1.onClose;
				closeBackgroundVisible = false;
				motorOverrideOptions = tbl_4_upvr;
			})
		end)
	end)
end
local FriendsNetworking_upvr = dependencies.FriendsNetworking
return dependencies.SocialLibraries.RoduxTools.compose(dependencies.RoactRodux.connect(require(FriendsLanding.Components.FriendsLandingContainer.mapStateToProps), function(arg1) -- Line 103
	--[[ Upvalues[1]:
		[1]: FriendsNetworking_upvr (readonly)
	]]
	return {
		unfriendTargetUserId = function(arg1_6) -- Line 105, Named "unfriendTargetUserId"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: FriendsNetworking_upvr (copied, readonly)
			]]
			return arg1(FriendsNetworking_upvr.UnfriendTargetUserId.API(arg1_6))
		end;
	}
end), require(FriendsLanding.FriendsLandingContext).connect(function(arg1, arg2) -- Line 110
	return {
		screenSize = arg1.screenSize;
	}
end))(any_extend_result1)