-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:30
-- Luau version 6, Types version 3
-- Time taken: 0.006573 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.dependencies)
local EnumScreens = require(FriendsLanding.EnumScreens)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local Logger_upvr = require(script.Parent.Logger)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.DiagCounters = {
	UserLoadedPage = game:DefineFastString("FriendsLandingUserLoadedPageCounter", "FriendsLandingUserLoadedPage");
	ShowMoreButtonPressedFriends = game:DefineFastString("ShowMoreButtonPressedFriends", "ShowMoreButtonPressedFriends");
	ShowMoreButtonPressedFriendRequests = game:DefineFastString("ShowMoreButtonPressedFriendRequests", "ShowMoreButtonPressedFriendRequests");
}
module_2_upvr.Navigation = {
	[EnumScreens.AddFriends] = game:DefineFastString("FriendsLandingNavigationAddFriendsCounter", "FriendsLandingNavigationAddFriends");
	[EnumScreens.ViewUserProfile] = game:DefineFastString("FriendsLandingNavigationViewUserProfileCounter", "FriendsLandingNavigationViewUserProfile");
	[EnumScreens.GameDetailsPeekView] = game:DefineFastString("FriendsLandingNavigationGameDetailsPeekViewCounter", "FriendsLandingNavigationGameDetailsPeekView");
	[EnumScreens.SearchFriends] = game:DefineFastString("FriendsLandingSearchFriendsCounter", "FriendsLandingSearchFriends");
}
module_2_upvr.Navigation[AppPage_upvr.Home] = game:DefineFastString("AddFriendsHomeEntryCounter", "AddFriendsHomeEntry")
module_2_upvr.Navigation.ViewUserProfileAddFriends = game:DefineFastString("FriendsLandingViewUserProfileAddFriendsCounter", "FriendsLandingViewUserProfileAddFriends")
module_2_upvr.Navigation.ConnectWithFriends = game:DefineFastString("AddFriendsConnectWithFriendsCounter", "AddFriendsConnectWithFriends")
module_2_upvr.DiagStats = {
	LoadingPageTime = game:DefineFastString("FriendsLandingLoadingPageTimeStats", "FriendsLandingLoadingPageTime");
	MountingPageTime = game:DefineFastString("FriendsLandingMountingPageTimeStats", "FriendsLandingMountingPageTime");
}
module_2_upvr.BASE_CONTEXT = "friendsLanding"
function module_2_upvr.new(arg1, arg2, arg3) -- Line 74
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	assert(arg2, "FriendsLanding must be passed the ID of the local user")
	local module = {
		_diagImpl = arg1.Diag;
		_eventStreamImpl = arg1.EventStream;
	}
	module.localUserId = arg2
	module._getLoadingTimeInfo = arg3
	module._reportedPagePerformanceOnce = {}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.navigate(arg1, arg2) -- Line 90
	--[[ Upvalues[2]:
		[1]: Logger_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	Logger_upvr:info("navigate to {}", arg2)
	local var12 = module_2_upvr.Navigation[arg2]
	if var12 then
		arg1._diagImpl:reportCounter(var12, 1)
	else
		Logger_upvr:error("Error from navigate: Invalid destination '{}'", arg2)
	end
end
local ButtonClickEvents_upvr = require(script.Parent.ButtonClickEvents)
local llama_upvr = dependencies.llama
local ShowMoreSectionTypeEnum_upvr = require(FriendsLanding.Enums.ShowMoreSectionTypeEnum)
function module_2_upvr.buttonClick(arg1, arg2, arg3) -- Line 100
	--[[ Upvalues[5]:
		[1]: ButtonClickEvents_upvr (readonly)
		[2]: Logger_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: ShowMoreSectionTypeEnum_upvr (readonly)
		[5]: module_2_upvr (readonly)
	]]
	assert(ButtonClickEvents_upvr.isEnumValue(arg2), "invalid button name used")
	Logger_upvr:info("eventName: buttonClick btn: {}{}", arg2, arg1:_toStringAdditionalArgs(arg3))
	local var16
	if arg3 and arg3.contextOverride then
		var16 = arg3.contextOverride
	end
	local var17 = arg3
	if not var17 then
		var17 = {}
	end
	local any_join_result1 = llama_upvr.Dictionary.join(var17, {
		btn = arg2:rawValue();
		uid = arg1.localUserId;
		contextOverride = llama_upvr.None;
	})
	arg1._eventStreamImpl:setRBXEventStream(var16, "buttonClick", any_join_result1)
	local var20
	if arg2 == ButtonClickEvents_upvr.LoadMoreUsers then
		if any_join_result1.sectionType == ShowMoreSectionTypeEnum_upvr.FriendRequests then
			var20 = module_2_upvr.DiagCounters.ShowMoreButtonPressedFriendRequests
		elseif any_join_result1.sectionType == ShowMoreSectionTypeEnum_upvr.Friends then
			var20 = module_2_upvr.DiagCounters.ShowMoreButtonPressedFriends
		end
	end
	if var20 then
		arg1._diagImpl:reportCounter(var20, 1)
	end
end
if not require(Parent.SharedFlags).FFlagUserSearchScreenBarAnalytics then
	local LocalizationService_upvr = dependencies.LocalizationService
	function module_2_upvr.playerSearch(arg1, arg2, arg3, arg4, arg5) -- Line 132
		--[[ Upvalues[2]:
			[1]: Logger_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
		]]
		local var22
		if type(arg2) ~= "string" then
			var22 = false
		else
			var22 = true
		end
		assert(var22, "Expected act to be a string")
		if arg3 then
			if type(arg3) ~= "string" then
				var22 = false
			else
				var22 = true
			end
			assert(var22, "Expected keyword to be a string")
		end
		if arg4 then
			if type(arg4) ~= "string" then
				var22 = false
			else
				var22 = true
			end
			assert(var22, "Expected source to be a string")
		end
		Logger_upvr:info("eventName: search ctx: players keyword: {} source: {}", arg3, arg4)
		;({}).act = arg2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).kwd = arg3
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).source = arg4
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).locale = LocalizationService_upvr.RobloxLocaleId
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).currentPage = arg5
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1._eventStreamImpl:setRBXEventStream("players", "search", {})
	end
end
local tutils_upvr = dependencies.tutils
function module_2_upvr._toStringAdditionalArgs(arg1, arg2) -- Line 157
	--[[ Upvalues[1]:
		[1]: tutils_upvr (readonly)
	]]
	if not arg2 then
		return ""
	end
	local string_gsub_result1, string_gsub_result2 = string.gsub(" args: "..tutils_upvr.toString(arg2), "%s+", ' ')
	return string_gsub_result1
end
function module_2_upvr.pageLoaded(arg1) -- Line 166
	--[[ Upvalues[2]:
		[1]: Logger_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	Logger_upvr:info("pageLoaded")
	arg1._diagImpl:reportCounter(module_2_upvr.DiagCounters.UserLoadedPage, 1)
end
function module_2_upvr.pageLoadedWithArgs(arg1, arg2, arg3) -- Line 172
	local var26 = arg2
	if not var26 then
		var26 = arg1.BASE_CONTEXT
	end
	arg1._eventStreamImpl:setRBXEventStream(var26, "luaPageLoad", arg3)
end
local NavigatedFromPagesEnum_upvr = require(script.Parent.NavigatedFromPagesEnum)
function module_2_upvr._pagePerformanceReport(arg1, arg2, arg3, arg4) -- Line 177
	--[[ Upvalues[2]:
		[1]: NavigatedFromPagesEnum_upvr (readonly)
		[2]: Logger_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var28
	if not arg4 then
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = arg1._getLoadingTimeInfo()
		return var28
	end
	if not arg1._getLoadingTimeInfo or not INLINED() then
		var28 = {}
	end
	local startPage = var28.startPage
	local startTime = var28.startTime
	if not NavigatedFromPagesEnum_upvr.fromRawValue(startPage) or type(startTime) ~= "number" then
		Logger_upvr:warning("Cannot report loading time: incorrect startPage or startTime")
	else
		local var31 = (os.clock() - startTime) * 1000
		local any_rawValue_result1 = NavigatedFromPagesEnum_upvr[startPage].rawValue()
		Logger_upvr:info("pageLoaded in "..var31.."ms")
		arg1._diagImpl:reportStats(arg2..'_'..any_rawValue_result1, var31)
		arg1._eventStreamImpl:setRBXEventStream(arg1.BASE_CONTEXT, arg3, {
			startPage = any_rawValue_result1;
			loadingTime = var31;
			uid = arg1.localUserId;
		})
	end
end
function module_2_upvr._reportPagePerformanceOnceCheck(arg1, arg2) -- Line 203
	if arg1._reportedPagePerformanceOnce[arg2] then
		return true
	end
	arg1._reportedPagePerformanceOnce[arg2] = true
	return false
end
function module_2_upvr.pageMountingTimeReport(arg1, arg2) -- Line 211
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:_reportPagePerformanceOnceCheck("pageMountingTime") then
	else
		arg1:_pagePerformanceReport(module_2_upvr.DiagStats.MountingPageTime, "pageMountingTime", arg2)
	end
end
function module_2_upvr.pageLoadingTimeReport(arg1, arg2) -- Line 219
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:_reportPagePerformanceOnceCheck("pageLoadingTime") then
	else
		arg1:_pagePerformanceReport(module_2_upvr.DiagStats.LoadingPageTime, "pageLoadingTime", arg2)
	end
end
function module_2_upvr.reportAddFriendsEntrypoint(arg1, arg2, arg3) -- Line 227
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: AppPage_upvr (readonly)
	]]
	local var34
	if module_2_upvr.Navigation[arg2] == nil then
		var34 = false
	else
		var34 = true
	end
	assert(var34, "invalid screen")
	var34 = AppPage_upvr
	if arg2 == var34.Home then
		local tbl = {
			btn = "LegacyAddFriendsButton";
		}
		local var36 = 1
		tbl.absolutePosition = var36
		if arg3 then
			var36 = arg3.showContactImporterModal
		else
			var36 = nil
		end
		tbl.showContactImporterModal = var36
		arg1._eventStreamImpl:setRBXEventStream("addUniversalFriends", "buttonClick", tbl)
	end
	arg1._diagImpl:reportCounter(module_2_upvr.Navigation[arg2], 1)
end
local ImpressionEvents_upvr = require(script.Parent.ImpressionEvents)
function module_2_upvr.impressionEvent(arg1, arg2, arg3) -- Line 239
	--[[ Upvalues[1]:
		[1]: ImpressionEvents_upvr (readonly)
	]]
	assert(ImpressionEvents_upvr.isEnumValue(arg2), "invalid impression name used")
	arg1._eventStreamImpl:setRBXEventStream("addUniversalFriends", arg2:rawValue(), arg3)
	arg1._diagImpl:reportCounter(arg2:rawValue(), 1)
end
return module_2_upvr