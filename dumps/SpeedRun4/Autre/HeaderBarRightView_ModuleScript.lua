-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:08
-- Luau version 6, Types version 3
-- Time taken: 0.006440 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local FFlagUserSearchScreenBarAnalytics_upvr = require(Parent.SharedFlags).FFlagUserSearchScreenBarAnalytics
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local function var9_upvr(arg1) -- Line 29
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	return Roact_upvr.createElement(IconButton_upvr, {
		size = UDim2.fromOffset(0, 0);
		icon = Images_upvr["icons/common/search"];
		layoutOrder = arg1.layoutOrder;
		onActivated = arg1.goToSearchFriendsPage;
	})
end
local tbl_2_upvr = {
	SHOW_ADDFRIENDS_ICON = {
		[EnumScreens_upvr.FriendsLanding] = true;
		[EnumScreens_upvr.SearchFriends] = true;
	};
	SHOW_SEARCHFRIENDS_ICON = {
		[EnumScreens_upvr.FriendsLanding] = true;
		[EnumScreens_upvr.SearchFriends] = true;
		[EnumScreens_upvr.AddFriends] = true;
	};
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("HeaderBarRightView")
any_extend_result1.defaultProps = {
	layoutOrder = 1;
	onActivated = nil;
}
local memoize_upvr = dependencies.memoize
local ButtonClickEvents_upvr = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local getDeepValue_upvr = SocialLibraries.Dictionary.getDeepValue
local Sources_upvr = require(Parent.SocialLuaAnalytics).Analytics.Enums.Sources
local PlayerSearchEvent_upvr = require(FriendsLanding.FriendsLandingAnalytics.PlayerSearchEvent)
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[8]:
		[1]: memoize_upvr (readonly)
		[2]: ButtonClickEvents_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: AppPage_upvr (readonly)
		[5]: FFlagUserSearchScreenBarAnalytics_upvr (readonly)
		[6]: getDeepValue_upvr (readonly)
		[7]: Sources_upvr (readonly)
		[8]: PlayerSearchEvent_upvr (readonly)
	]]
	arg1.goToFriendRequestsPage = memoize_upvr(function(arg1_2, arg2) -- Line 59
		--[[ Upvalues[4]:
			[1]: ButtonClickEvents_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: AppPage_upvr (copied, readonly)
		]]
		return function() -- Line 60
			--[[ Upvalues[5]:
				[1]: arg2 (readonly)
				[2]: ButtonClickEvents_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: EnumScreens_upvr (copied, readonly)
				[5]: AppPage_upvr (copied, readonly)
			]]
			local var26
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var26 = ButtonClickEvents_upvr.AddFriendsNoFriends
				return var26
			end
			if arg2 ~= 0 or not INLINED() then
				var26 = ButtonClickEvents_upvr.AddFriends
			end
			arg1.props.analytics:buttonClick(var26)
			arg1.props.analytics:navigate(EnumScreens_upvr.AddFriends)
			return arg1.props.navigation.navigate(AppPage_upvr.AddFriendsPage)
		end
	end)
	arg1.goToSearchFriendsPage = memoize_upvr(function(arg1_3) -- Line 70
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: FFlagUserSearchScreenBarAnalytics_upvr (copied, readonly)
			[3]: getDeepValue_upvr (copied, readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: Sources_upvr (copied, readonly)
			[6]: PlayerSearchEvent_upvr (copied, readonly)
			[7]: AppPage_upvr (copied, readonly)
		]]
		return function() -- Line 71
			--[[ Upvalues[7]:
				[1]: arg1 (copied, readonly)
				[2]: FFlagUserSearchScreenBarAnalytics_upvr (copied, readonly)
				[3]: getDeepValue_upvr (copied, readonly)
				[4]: EnumScreens_upvr (copied, readonly)
				[5]: Sources_upvr (copied, readonly)
				[6]: PlayerSearchEvent_upvr (copied, readonly)
				[7]: AppPage_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local navigation = arg1.props.navigation
			local var36
			if not FFlagUserSearchScreenBarAnalytics_upvr then
				if navigation then
					if navigation.state then
						-- KONSTANTWARNING: GOTO [17] #13
					end
				end
				var36 = navigation
				if not var36 then
					var36 = {}
				end
				if getDeepValue_upvr(var36, "state.params.userSearchSource") then
					var36 = navigation.state
				else
					var36 = arg1.props
					if getDeepValue_upvr(var36, "passedNavParams.userSearchSource") then
						var36 = arg1.props
					else
						var36 = EnumScreens_upvr
						if nil == var36.FriendsLanding then
						end
					end
				end
				var36 = arg1.props.analytics
				local tbl_4 = {
					source = Sources_upvr.FriendsLanding;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.currentRoute = nil
				PlayerSearchEvent_upvr(var36, "open", tbl_4)
			end
			local tbl_5 = {}
			local var39 = true
			tbl_5.shouldShowUserSearchLandingPage = var39
			if FFlagUserSearchScreenBarAnalytics_upvr then
				var39 = Sources_upvr.FriendsLanding
			else
				var39 = nil
			end
			tbl_5.entryPoint = var39
			arg1.props.navigation.navigate(AppPage_upvr.UserSearch, tbl_5)
		end
	end)
end
local AddFriendsIcon_upvr = require(FriendsLanding.Components.AddFriendsIcon)
function any_extend_result1.render(arg1) -- Line 102
	--[[ Upvalues[5]:
		[1]: tbl_2_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: var9_upvr (readonly)
		[5]: AddFriendsIcon_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local navigation_2 = arg1.props.navigation
	if arg1.props.addFriendsPageSearchbarEnabled then
		tbl_2_upvr.SHOW_ADDFRIENDS_ICON[EnumScreens_upvr.SearchFriends] = false
		local var42
	end
	if navigation_2 and navigation_2.state then
		local routeName = navigation_2.state.routeName
	end
	local module_3 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local var47 = nil
	if var47 then
		var47 = var9_upvr
		var47 = var47({
			goToSearchFriendsPage = arg1.goToSearchFriendsPage();
			layoutOrder = 1;
		})
	end
	module_3.SearchFriendsIcon = var47
	module_3.Padding = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	})
	local var50 = tbl_2_upvr.SHOW_ADDFRIENDS_ICON[routeName]
	if var50 then
		var50 = Roact_upvr.createElement
		local tbl_3 = {
			onActivated = arg1.goToFriendRequestsPage(arg1.props.navigateToLuaAppPages, arg1.props.totalFriendCount);
			layoutOrder = 3;
		}
		local friendRequestCount = arg1.props.friendRequestCount
		tbl_3.friendRequestCount = friendRequestCount
		if arg1.props.totalFriendCount ~= 0 then
			friendRequestCount = false
		else
			friendRequestCount = true
		end
		tbl_3.showTooltip = friendRequestCount
		var50 = var50(AddFriendsIcon_upvr, tbl_3)
	end
	module_3.AddFriendsIcon = var50
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 72, 0, 36);
	}, module_3)
end
return SocialLibraries.RoduxTools.compose(require(FriendsLanding.FriendsLandingAnalytics).connect(function(arg1) -- Line 145
	local module_2 = {}
	module_2.analytics = arg1
	return module_2
end), require(FriendsLanding.FriendsLandingContext).connect(function(arg1, arg2) -- Line 150
	--[[ Upvalues[1]:
		[1]: FFlagUserSearchScreenBarAnalytics_upvr (readonly)
	]]
	local module = {
		navigateToLuaAppPages = arg1.navigateToLuaAppPages;
		friendRequestCount = arg1.friendRequestCount;
		totalFriendCount = arg1.totalFriendCount;
		luaAddFriendsPageEnabled = arg1.luaAddFriendsPageEnabled;
	}
	local addFriendsPageSearchbarEnabled = arg1.addFriendsPageSearchbarEnabled
	module.addFriendsPageSearchbarEnabled = addFriendsPageSearchbarEnabled
	if FFlagUserSearchScreenBarAnalytics_upvr then
		addFriendsPageSearchbarEnabled = nil
	else
		addFriendsPageSearchbarEnabled = arg1.passedNavParams
	end
	module.passedNavParams = addFriendsPageSearchbarEnabled
	return module
end))(any_extend_result1)