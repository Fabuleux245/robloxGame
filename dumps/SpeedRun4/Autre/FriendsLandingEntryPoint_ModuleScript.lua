-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:58
-- Luau version 6, Types version 3
-- Time taken: 0.005576 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local Logger_upvr = dependencies.Logger
local FriendsLandingAnalytics_upvr = require(FriendsLanding.FriendsLandingAnalytics)
local getFStringSocialAddFriendsPageLayer_upvr = dependencies.getFStringSocialAddFriendsPageLayer
local function var7_upvr() -- Line 25
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsLandingEntryPoint")
any_extend_result1.defaultProps = {
	renderAndroidBackButtonNavigationHandler = nil;
	luaAppPages = {};
	isLuobu = false;
	logger = nil;
	debug_willUnmount = nil;
}
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local memoize_upvr = dependencies.memoize
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[6]:
		[1]: Logger_upvr (readonly)
		[2]: filterStates_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: var7_upvr (readonly)
		[5]: memoize_upvr (readonly)
		[6]: FriendsLandingAnalytics_upvr (readonly)
	]]
	if arg1.props.logger then
		Logger_upvr:setParent(arg1.props.logger)
	end
	arg1.state = {
		filter = filterStates_upvr.All;
		topBar = {
			[EnumScreens_upvr.FriendsLanding] = {
				shouldRenderCenter = false;
			};
		};
	}
	arg1.localization = {
		pageError = "CommonUI.Messages.Response.PageError";
	}
	function arg1.setFilterKeys(arg1_2) -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var18
		if type(arg1_2) ~= "string" then
			var18 = false
		else
			var18 = true
		end
		assert(var18, "Expected value to be a string")
		local tbl_3 = {}
		tbl_3.filter = arg1_2
		arg1:setState(tbl_3)
	end
	function arg1.showErrorToast(arg1_3) -- Line 64
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local tbl_4 = {}
		local tbl = {}
		local tbl_2 = {}
		tbl_2.toastTitle = arg1_3
		tbl.toastContent = tbl_2
		tbl_4.toastProps = tbl
		arg1.props.navigation.navigate(EnumScreens_upvr.GenericToast, tbl_4)
	end
	function arg1.refreshPage(arg1_4) -- Line 74
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Logger_upvr (copied, readonly)
			[3]: var7_upvr (copied, readonly)
		]]
		local module = {
			localUserId = arg1.props.localUserId;
			inactiveFriendsNetworkRequestStatus = arg1.props.inactiveFriendsNetworkRequestStatus;
		}
		local function onError() -- Line 78
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_4 (readonly)
				[3]: Logger_upvr (copied, readonly)
			]]
			arg1.showErrorToast(arg1_4.errorMessage)
			Logger_upvr:info("Refreshing FriendsLanding data failed")
		end
		module.onError = onError
		onError = arg1_4.onResolve
		local var26 = onError
		if not var26 then
			var26 = var7_upvr
		end
		module.onResolve = var26
		return arg1.props.refreshPageData(module)
	end
	arg1.getAnalytics = memoize_upvr(function(arg1_5) -- Line 86
		--[[ Upvalues[2]:
			[1]: FriendsLandingAnalytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return FriendsLandingAnalytics_upvr.Class.new({
			Diag = arg1.props.diagService;
			EventStream = arg1.props.eventIngestService;
		}, arg1_5, arg1.props.getLoadingTimeInfo)
	end)
end
local withLocalization_upvr = dependencies.withLocalization
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local Navigator_upvr = require(FriendsLanding.Navigator)
local BottomInsetBackground_upvr = dependencies.SocialCommon.Components.BottomInsetBackground
function any_extend_result1.render(arg1) -- Line 94
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FriendsLandingAnalytics_upvr (readonly)
		[4]: FriendsLandingContext_upvr (readonly)
		[5]: Navigator_upvr (readonly)
		[6]: BottomInsetBackground_upvr (readonly)
	]]
	return withLocalization_upvr(arg1.localization)(function(arg1_6) -- Line 95
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FriendsLandingAnalytics_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FriendsLandingContext_upvr (copied, readonly)
			[5]: Navigator_upvr (copied, readonly)
			[6]: BottomInsetBackground_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(FriendsLandingAnalytics_upvr.Context.Provider, {
			value = arg1.getAnalytics(arg1.props.localUserId);
		}, {Roact_upvr.createElement(FriendsLandingContext_upvr.Provider, {
			value = {
				navigateToLuaAppPages = arg1.props.navigateToLuaAppPages;
				filter = arg1.state.filter;
				setFilterKeys = arg1.setFilterKeys;
				screenSize = arg1.props.screenSize;
				friendRequestCount = arg1.props.friendRequestCount;
				totalFriendCount = arg1.props.totalFriendCount;
				wideMode = arg1.props.wideMode;
				playerSearchPage = arg1.props.luaAppPages.playerSearchPage;
				diagService = arg1.props.diagService;
				eventIngestService = arg1.props.eventIngestService;
				isLuobu = arg1.props.isLuobu;
				refreshPage = arg1.refreshPage;
				friendsRequestEventListener = arg1.props.friendsRequestEventListener;
				robloxEventReceiver = arg1.props.robloxEventReceiver;
				contactImporterAndPYMKEnabled = arg1.props.contactImporterAndPYMKEnabled;
				contactImporterExperimentVariant = arg1.props.contactImporterExperimentVariant;
				addFriendsPageSearchbarEnabled = arg1.props.addFriendsPageSearchbarEnabled;
				openProfilePeekView = arg1.props.openProfilePeekView;
				openPlayerContextualMenu = arg1.props.openPlayerContextualMenu;
				openAmpUpsell = arg1.props.openAmpUpsell;
				passedNavParams = arg1.props.passedNavParams;
			};
		}, {
			navigation = Roact_upvr.createElement(Navigator_upvr, {
				navigation = arg1.props.navigation;
			});
			BottomInsetBackground = Roact_upvr.createElement(BottomInsetBackground_upvr);
		})})
	end)
end
function any_extend_result1.didMount(arg1) -- Line 135
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("FriendsLandingEntryPoint mounted")
end
function any_extend_result1.willUnmount(arg1) -- Line 139
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("FriendsLandingEntryPoint unmounted")
	if arg1.props.debug_willUnmount then
		arg1.props.debug_willUnmount()
	end
end
return dependencies.SocialLibraries.RoduxTools.compose(dependencies.RoactRodux.connect(require(script.mapStateToProps), require(script.mapDispatchToProps)), dependencies.RoactAppExperiment.connectUserLayer({getFStringSocialAddFriendsPageLayer_upvr()}, function(arg1, arg2) -- Line 150
	--[[ Upvalues[1]:
		[1]: getFStringSocialAddFriendsPageLayer_upvr (readonly)
	]]
	local var42 = arg1[getFStringSocialAddFriendsPageLayer_upvr()]
	if not var42 then
		var42 = {}
	end
	return {
		addFriendsPageSearchbarEnabled = var42.show_add_friends_page_search_bar;
	}
end, false))(any_extend_result1)