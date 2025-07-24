-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:02
-- Luau version 6, Types version 3
-- Time taken: 0.035320 seconds

local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local GuiLoader_upvr = require(script.GuiLoader)
local IconController_upvr = require(script.Parent.Utils.Icon.IconController)
IconController_upvr.voiceChatEnabled = ConfigReader_upvr:read("IsGameVoiceChatEnabled")
local Value = require(script.Parent.Utils.Fusion).Value
local Windows_upvr = script.Gui.Windows
local var8_upvw
local var9_upvw
local var10_upvw
local var11_upvw
local var12_upvw
local var13_upvw
local var14_upvw
local var15_upvw
local var16_upvw
local var17_upvw
local var18_upvw
local var19_upvw
local var20_upvw
local var21_upvw
local var22_upvw
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_upvr = {}
local BindableEvent_upvw_2 = Instance.new("BindableEvent")
local BindableEvent_upvw = Instance.new("BindableEvent")
local tbl_5_upvr = {
	Config = nil;
	PostFrames = {};
	CurrentPage = nil;
	CurrentPosts = nil;
	CurrentFeedType = nil;
	FetchingFeedTypeValue = Value();
	CurrentFeedTypeValue = Value();
	CurrentViewingProfileId = Value();
	CurrentProfileData = Value();
	ContentToRender = Value({});
	RenderPosts = Instance.new("BindableEvent");
	ParentPost = nil;
	BoostingPostBoostValue = nil;
	PostImpressions = {};
	PostsForImpressionCheck = {};
	NotificationCount = Value(0);
	Images = Value({});
	ImagesPage = 1;
	ImagesLoadedKeyword = "";
	ImageSearchTerms = Value({});
	ImageScrollingFrame = Value();
	DecalsNextPageCursor = nil;
	ScreenshotData = Value();
	FollowersPage = 1;
	FollowingPage = 1;
	FollowingLoadedUserId = 0;
	FollowersLoadedUserId = 0;
	UserListLoaded = Value({});
	UserListScrollingFrame = Value();
	UserListVisible = Value(false);
	IsLoading = Value();
	IsOpened = Value(false);
	IsPosting = Value(false);
	IsOptions = Value(false);
	IsBoosting = Value(false);
	IsVertical = Value(false);
	BoostingPostId = Value();
	PostingContent = Value();
	PostingCommentParent = Value();
	UserSearchFailed = Value(false);
	InteractedWithPostId = nil;
	UIListLayout = Value();
	ContentFrame = Value();
	ScrollingFrame = Value();
	ExploreTabScrollingFrame = Value();
	LastViewedPost = {};
	LastViewedPage = {};
	LastBottomBtnPress = Value("home");
	LastLocalPlayerProfileData = Value();
	ResetLastViewedPost = nil;
	undoTable = {};
	EnablePopupMessage = Value(false);
	ContentFetchDebounce = Value();
	ContentLoadSpinnerLayoutOrder = Value(1);
	TopbarButton = nil;
	ExplorePageContent = {
		top_donors = Value({});
		top_boosters = Value({});
	};
	UpdateHomeButtons = Value(false);
	DisableHomeButtons = false;
	ProfileFeeds = {};
	isProfileFeed = nil;
	initialProfileFeed = nil;
	LastLoadedProfileTab = nil;
	cachedUserInfos = {};
	getUserInfoFromUserIds = nil;
	getLocalPlayerProfileData = nil;
	closePopfeed = nil;
}
local var29_upvw
local var30_upvw
local var31_upvw
local var32_upvw
local var33_upvw
local tbl_4_upvr = {}
function tbl_5_upvr.isFeedTypeHomeFeed(arg1) -- Line 135
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if not tbl_5_upvr.Config then
	else
		for _, var36 in tbl_5_upvr.Config.feeds.main do
			if var36.id == arg1 then
				return true
			end
		end
	end
end
local UserService_upvr = game:GetService("UserService")
function tbl_5_upvr.getUserInfoFromUserIds(arg1) -- Line 147
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: UserService_upvr (readonly)
	]]
	local module_2 = {}
	local tbl_7_upvr = {}
	local var52
	for _, v in arg1, nil, var52 do
		if tbl_5_upvr.cachedUserInfos[v] then
			module_2[v] = tbl_5_upvr.cachedUserInfos[v]
		else
			table.insert(tbl_7_upvr, v)
		end
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 159
		--[[ Upvalues[2]:
			[1]: UserService_upvr (copied, readonly)
			[2]: tbl_7_upvr (readonly)
		]]
		return UserService_upvr:GetUserInfosByUserIdsAsync(tbl_7_upvr)
	end)
	if #pcall_result2 ~= 0 then
		var52 = false
	else
		var52 = true
	end
	local var56
	for _, v_2 in tbl_7_upvr do
		if not pcall_result1 then break end
		if var52 then break end
		var56 = {}
		var56.DisplayName = "Unknown"
		var56.Username = "Unknown"
		for _, v_3 in pcall_result2 do
			if v_2 == v_3.Id then
				var56 = v_3
			end
		end
		tbl_5_upvr.cachedUserInfos[v_2] = var56
		module_2[v_2] = var56
	end
	return module_2
end
function tbl_5_upvr.isProfileFeed(arg1) -- Line 182
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	for _, v_4 in tbl_5_upvr.ProfileFeeds do
		if arg1 == v_4.id then
			return true
		end
	end
end
function tbl_5_upvr.getLocalPlayerProfileData() -- Line 190
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var19_upvw (read and write)
	]]
	tbl_5_upvr.IsLoading:set(true)
	local any_InvokeServer_result1_3, any_InvokeServer_result2_3 = var19_upvw:InvokeServer({
		FeedType = "player";
		NewPageNum = 0;
		ProfileId = LocalPlayer_upvr.UserId;
	})
	tbl_5_upvr.LastLocalPlayerProfileData:set(any_InvokeServer_result2_3.ProfileData)
	tbl_5_upvr.IsLoading:set(false)
	return any_InvokeServer_result1_3, any_InvokeServer_result2_3
end
local tbl_6_upvw = {}
local function _(arg1) -- Line 221, Named "isFetchingThisRequest"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_6_upvw (read and write)
	]]
	if not tbl_5_upvr.ContentFetchDebounce:get() then
		return false
	end
	if arg1.IsScrolling then
		local IsScrolling_2 = tbl_6_upvw.IsScrolling
		if IsScrolling_2 then
			if arg1.FeedType ~= tbl_6_upvw.FeedType then
				IsScrolling_2 = false
			else
				IsScrolling_2 = true
			end
			return IsScrolling_2
		end
	end
end
local function _(arg1) -- Line 231, Named "showLoadingState"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local var65
	if arg1.IsScrolling == true then
		var65 = false
	else
		var65 = true
	end
	tbl_5_upvr.IsLoading:set(var65)
end
local function _(arg1) -- Line 235, Named "isLatestRequest"
	--[[ Upvalues[1]:
		[1]: tbl_6_upvw (read and write)
	]]
	local var66
	if tbl_6_upvw.RequestId ~= arg1.RequestId then
		var66 = false
	else
		var66 = true
	end
	return var66
end
local function requestContent_upvr(arg1) -- Line 239, Named "requestContent"
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_6_upvw (read and write)
		[3]: HttpService_upvr (readonly)
		[4]: var19_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var67
	if var67 < 1 then return end
	if not tbl_5_upvr.ContentFetchDebounce:get() then
		var67 = false
	elseif arg1.IsScrolling and tbl_6_upvw.IsScrolling then
		if arg1.FeedType ~= tbl_6_upvw.FeedType then
			var67 = false
		else
			var67 = true
		end
	else
		var67 = nil
	end
	if var67 then return end
	var67 = tbl_5_upvr.IsLoading
	if arg1.IsScrolling == true then
	else
	end
	var67 = var67:set
	var67(true)
	var67 = HttpService_upvr:GenerateGUID(false)
	arg1.RequestId = var67
	tbl_6_upvw = arg1
	var67 = tbl_5_upvr.ContentFetchDebounce:set
	var67(true)
	var67 = tbl_5_upvr.FetchingFeedTypeValue:set
	var67(arg1.FeedType)
	var67 = var19_upvw:InvokeServer(arg1)
	local any_InvokeServer_result1_6, any_InvokeServer_result2 = var19_upvw:InvokeServer(arg1)
	if tbl_6_upvw.RequestId ~= any_InvokeServer_result2.RequestData.RequestId then
	else
	end
	if not true then return end
	return any_InvokeServer_result1_6, any_InvokeServer_result2
end
local function renderLeaderboard_upvr(arg1, arg2, arg3) -- Line 268, Named "renderLeaderboard"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var79
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var79 = tbl_5_upvr.ExplorePageContent[arg3]:get()
		return var79
	end
	if 1 >= arg2 or not INLINED() then
		var79 = {}
	end
	for _, v_5 in arg1[arg3] do
		table.insert(var79, v_5)
		table.insert({}, v_5.player_id)
		local var81
	end
	tbl_5_upvr.getUserInfoFromUserIds(var81)
	tbl_5_upvr.ExplorePageContent[arg3]:set(var79)
end
local function renderExplorePage_upvr(arg1, arg2) -- Line 285, Named "renderExplorePage"
	--[[ Upvalues[3]:
		[1]: requestContent_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: renderLeaderboard_upvr (readonly)
	]]
	local tbl = {
		FeedType = "explore";
	}
	tbl.LeaderboardType = arg2
	tbl.NewPageNum = arg1
	tbl.EntriesPerPage = 3
	local requestContent_upvr_result1_2 = requestContent_upvr(tbl)
	if not requestContent_upvr_result1_2 then
		tbl_5_upvr.IsLoading:set(false)
		return
	end
	if arg2 then
		renderLeaderboard_upvr(requestContent_upvr_result1_2, arg1, arg2)
	else
		for var83 in requestContent_upvr_result1_2 do
			renderLeaderboard_upvr(requestContent_upvr_result1_2, arg1, var83)
		end
	end
	tbl_5_upvr.CurrentPage = nil
	tbl_5_upvr.CurrentPosts = nil
	tbl_5_upvr.CurrentFeedType = "explore"
	tbl_5_upvr.CurrentFeedTypeValue:set("explore")
	tbl_5_upvr.ContentToRender:set({})
	tbl_5_upvr.PostsForImpressionCheck = {}
	task.defer(function() -- Line 314
		--[[ Upvalues[1]:
			[1]: tbl_5_upvr (copied, readonly)
		]]
		local any_get_result1_4 = tbl_5_upvr.ExploreTabScrollingFrame:get()
		if not any_get_result1_4 then
		else
			local Content = any_get_result1_4:FindFirstChild("Content")
			if not Content then return end
			any_get_result1_4.CanvasSize = UDim2.new(0, 0, 0, Content.UIListLayout.AbsoluteContentSize.Y)
		end
	end)
	tbl_5_upvr.IsLoading:set(false)
	return true
end
local function requestDonationItems_upvr(arg1) -- Line 333, Named "requestDonationItems"
	--[[ Upvalues[3]:
		[1]: var33_upvw (read and write)
		[2]: tbl_4_upvr (readonly)
		[3]: var8_upvw (read and write)
	]]
	if var33_upvw then
		return "Loading"
	end
	var33_upvw = true
	if not tbl_4_upvr[arg1] then
		tbl_4_upvr[arg1] = var8_upvw:InvokeServer(arg1)
	end
	var33_upvw = nil
	return tbl_4_upvr[arg1]
end
local function renderDonationItems_upvr() -- Line 348, Named "renderDonationItems"
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: var33_upvw (read and write)
		[3]: tbl_4_upvr (readonly)
		[4]: var8_upvw (read and write)
	]]
	tbl_5_upvr.IsLoading:set(true)
	local any_get_result1_7 = tbl_5_upvr.CurrentViewingProfileId:get()
	tbl_5_upvr.CurrentPage = 1
	tbl_5_upvr.CurrentPosts = {}
	local var90 = tbl_5_upvr
	var90.CurrentFeedType = "donations"
	if var33_upvw then
		var90 = "Loading"
	else
		var33_upvw = true
		if not tbl_4_upvr[any_get_result1_7] then
			tbl_4_upvr[any_get_result1_7] = var8_upvw:InvokeServer(any_get_result1_7)
		end
		var33_upvw = nil
		var90 = tbl_4_upvr[any_get_result1_7]
	end
	tbl_5_upvr.RenderPosts:Fire(var90)
end
local function renderPosts_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 362, Named "renderPosts"
	--[[ Upvalues[6]:
		[1]: renderDonationItems_upvr (readonly)
		[2]: renderExplorePage_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: requestContent_upvr (readonly)
		[5]: var22_upvw (read and write)
		[6]: LocalPlayer_upvr (readonly)
	]]
	if arg2 == "shop" and arg3 then
	else
		if arg2 == "donations" then
			if not arg3 then
				renderDonationItems_upvr()
			end
			do
				return
			end
			local _
		end
		if arg2 == "explore" then
			renderExplorePage_upvr(1)
			return
		end
		local any_get_result1_10 = tbl_5_upvr.CurrentViewingProfileId:get()
		if arg5 ~= true or not any_get_result1_10 then
			local var104
		end
		if not var104 then
		end
		local tbl_8 = {}
		tbl_8.FeedType = arg2
		tbl_8.NewPageNum = arg1
		tbl_8.OldPageNum = tbl_5_upvr.CurrentPage
		tbl_8.PostId = any_get_result1_10
		tbl_8.ProfileId = var104
		tbl_8.IsScrolling = arg3
		local requestContent_upvr_result1, requestContent_upvr_result2 = requestContent_upvr(tbl_8)
		if requestContent_upvr_result1 then
			if arg2 == "notifications" then
				tbl_5_upvr.NotificationCount:set(0)
				if var22_upvw then
					var22_upvw:clearNotices()
				end
			end
			if arg2 ~= "replies" then
				tbl_5_upvr.PostingCommentParent:set(nil)
			end
			if requestContent_upvr_result2.ProfileData == nil then
			else
			end
			if true then
				local ProfileData = requestContent_upvr_result2.ProfileData
				local any_get_result1_2 = tbl_5_upvr.CurrentProfileData:get()
				tbl_5_upvr.CurrentProfileData:set(requestContent_upvr_result2.ProfileData)
				if any_get_result1_10 == LocalPlayer_upvr.UserId then
					tbl_5_upvr.LastLocalPlayerProfileData:set(ProfileData)
				end
				local LastLoadedProfileTab = tbl_5_upvr.LastLoadedProfileTab
				local var111 = any_get_result1_2
				if var111 then
					if any_get_result1_2.user_id ~= ProfileData.user_id then
						var111 = false
					else
						var111 = true
					end
				end
				local var112 = LastLoadedProfileTab
				if var112 then
					if LastLoadedProfileTab == string.match(tbl_5_upvr.Config.profile_tab_order[1], ":[%s]*(.-)[%s]*$") then
					else
					end
				end
				if var111 and true then
					tbl_5_upvr.ContentFetchDebounce:set(nil)
					tbl_5_upvr.OnSwitchFeedClicked(LastLoadedProfileTab, var104)
					return
				end
				tbl_5_upvr.LastLoadedProfileTab = arg2
			end
			tbl_5_upvr.CurrentPage = arg1
			tbl_5_upvr.CurrentPosts = requestContent_upvr_result1
			tbl_5_upvr.CurrentFeedType = arg2
			tbl_5_upvr.RenderPosts:Fire(requestContent_upvr_result2, arg4)
			return
		end
		if requestContent_upvr_result2 then
			tbl_5_upvr.ContentFetchDebounce:set(nil)
		end
	end
end
local function onCanvasPositionChanged_upvr(arg1, arg2) -- Line 454, Named "onCanvasPositionChanged"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: renderPosts_upvr (readonly)
	]]
	local floored = math.floor(arg2.Y)
	local CurrentPage = tbl_5_upvr.CurrentPage
	local CurrentFeedType = tbl_5_upvr.CurrentFeedType
	if not CurrentPage then
	else
		if math.floor(arg1.CanvasSize.Y.Offset - arg1.AbsoluteWindowSize.Y) <= floored then
			renderPosts_upvr(CurrentPage + 1, CurrentFeedType, true)
			return
		end
		if floored == 0 then
			renderPosts_upvr(CurrentPage - 1, CurrentFeedType, true)
		end
	end
end
local function _(arg1) -- Line 472, Named "setScreenOrientation"
	--[[ Upvalues[2]:
		[1]: var21_upvw (read and write)
		[2]: var31_upvw (read and write)
	]]
	if arg1 == true then
		var21_upvw.ScreenOrientation = var31_upvw
	else
		var31_upvw = var21_upvw.ScreenOrientation
		var21_upvw.ScreenOrientation = Enum.ScreenOrientation.Portrait
	end
end
local function loadProfileFeedsConfig_upvr() -- Line 481, Named "loadProfileFeedsConfig"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local tbl_11 = {}
	for _, v_6 in tbl_5_upvr.Config.feeds.profile do
		table.insert(tbl_11, v_6)
	end
	table.insert(tbl_11, {
		id = "shop";
		name = "Shop";
	})
	table.insert(tbl_11, {
		id = "donations";
		name = "Donate";
	})
	tbl_5_upvr.ProfileFeeds = tbl_11
	tbl_5_upvr.initialProfileFeed = string.match(tbl_5_upvr.Config.profile_tab_order[1], ":[%s]*(.-)[%s]*$")
end
local tbl_13_upvw = {}
local function toggleTopBarButtons_upvr(arg1) -- Line 502, Named "toggleTopBarButtons"
	--[[ Upvalues[2]:
		[1]: IconController_upvr (readonly)
		[2]: tbl_13_upvw (read and write)
	]]
	if arg1 == true then
		tbl_13_upvw = {}
		for _, v_7 in IconController_upvr.getIcons(), nil do
			if v_7.name ~= "Popfeed" and v_7.enabled == true then
				v_7:setEnabled(false)
				table.insert(tbl_13_upvw, v_7)
			end
		end
	else
		for _, var127 in tbl_13_upvw do
			var127:setEnabled(true)
		end
	end
end
local StarterGui_upvr = game:GetService("StarterGui")
local function togglePopfeedVisibility_upvr(arg1, arg2) -- Line 526, Named "togglePopfeedVisibility"
	--[[ Upvalues[12]:
		[1]: BindableEvent_upvw (read and write)
		[2]: tbl_5_upvr (readonly)
		[3]: var21_upvw (read and write)
		[4]: var31_upvw (read and write)
		[5]: var22_upvw (read and write)
		[6]: toggleTopBarButtons_upvr (readonly)
		[7]: BindableEvent_upvw_2 (read and write)
		[8]: loadProfileFeedsConfig_upvr (readonly)
		[9]: var32_upvw (read and write)
		[10]: StarterGui_upvr (readonly)
		[11]: renderPosts_upvr (readonly)
		[12]: var20_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if BindableEvent_upvw then
		BindableEvent_upvw.Event:Wait()
	end
	local IsOpened = tbl_5_upvr.IsOpened
	if arg1 == nil then
		if IsOpened:get() == true then
			var21_upvw.ScreenOrientation = var31_upvw
		else
			var31_upvw = var21_upvw.ScreenOrientation
			var21_upvw.ScreenOrientation = Enum.ScreenOrientation.Portrait
		end
		IsOpened:set(not IsOpened:get())
	else
		if not arg1 == true then
			var21_upvw.ScreenOrientation = var31_upvw
		else
			var31_upvw = var21_upvw.ScreenOrientation
			var21_upvw.ScreenOrientation = Enum.ScreenOrientation.Portrait
		end
		IsOpened:set(arg1)
	end
	tbl_5_upvr.IsLoading:set(false)
	if var22_upvw then
		var22_upvw:clearNotices()
	end
	toggleTopBarButtons_upvr(IsOpened:get())
	if IsOpened:get() == true then
		if not tbl_5_upvr.Config then
			BindableEvent_upvw_2.Event:Wait()
		end
		loadProfileFeedsConfig_upvr()
		tbl_5_upvr.LastBottomBtnPress:set("home")
		tbl_5_upvr.IsPosting:set(false)
		var22_upvw:select()
		StarterGui_upvr:SetCore("ChatActive", false)
		if not arg2 then
			renderPosts_upvr(1, var32_upvw or tbl_5_upvr.Config.feeds.main[1].id)
			-- KONSTANTWARNING: GOTO [168] #125
		end
	else
		for _ = 1, tbl_5_upvr.NotificationCount:get() do
			if var22_upvw then
				var22_upvw:notify()
			end
		end
		tbl_5_upvr.ChangeOutfit:FireServer()
		tbl_5_upvr.IsOptions:set(false)
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [168] 125. Error Block 28 start (CF ANALYSIS FAILED)
	var20_upvw:FireServer(IsOpened:get())
	-- KONSTANTERROR: [168] 125. Error Block 28 end (CF ANALYSIS FAILED)
end
function module_upvr.OpenPopfeed() -- Line 583
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: togglePopfeedVisibility_upvr (readonly)
	]]
	if tbl_5_upvr.IsOpened:get() == true then
	else
		togglePopfeedVisibility_upvr(true)
	end
end
function module_upvr.ClosePopfeed() -- Line 592
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: togglePopfeedVisibility_upvr (readonly)
	]]
	if not tbl_5_upvr.IsOpened:get() then
	else
		togglePopfeedVisibility_upvr(false)
	end
end
function module_upvr.TogglePopfeed() -- Line 601
	--[[ Upvalues[1]:
		[1]: togglePopfeedVisibility_upvr (readonly)
	]]
	togglePopfeedVisibility_upvr()
end
local function openInviteFriendsMenu_upvr() -- Line 605, Named "openInviteFriendsMenu"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	game:GetService("SocialService"):PromptGameInvite(LocalPlayer_upvr)
end
local Icon_upvr = require(script.Parent.Utils.Icon)
local function setupTopbarButton_upvr() -- Line 609, Named "setupTopbarButton"
	--[[ Upvalues[5]:
		[1]: var22_upvw (read and write)
		[2]: Icon_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: openInviteFriendsMenu_upvr (readonly)
	]]
	var22_upvw = Icon_upvr.new()
	var22_upvw:setName("Popfeed")
	var22_upvw:setImage(14109181142)
	var22_upvw:setImageYScale(0.85)
	var22_upvw:setXSize(90)
	var22_upvw:setProperty("deselectWhenOtherIconSelected", false)
	var22_upvw:setLeft()
	var22_upvw:bindEvent("selected", module_upvr.OpenPopfeed)
	var22_upvw:bindEvent("deselected", module_upvr.ClosePopfeed)
	var22_upvw:setTheme(require(script.Parent.Utils.Icon.Themes.RedNotification))
	tbl_5_upvr.TopbarButton = var22_upvw
	if game.GameId == 4527425367 then
		local any_new_result1 = Icon_upvr.new()
		any_new_result1:setName("InviteFriends")
		any_new_result1:setLabel("Invite Friends")
		any_new_result1:setLeft()
		any_new_result1:bindEvent("selected", openInviteFriendsMenu_upvr)
	end
end
local function onPostButtonClicked_upvr(arg1, arg2) -- Line 634, Named "onPostButtonClicked"
	--[[ Upvalues[9]:
		[1]: tbl_5_upvr (readonly)
		[2]: var29_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var33_upvw (read and write)
		[5]: tbl_4_upvr (readonly)
		[6]: var8_upvw (read and write)
		[7]: HttpService_upvr (readonly)
		[8]: var14_upvw (read and write)
		[9]: renderPosts_upvr (readonly)
	]]
	local any_get_result1_5 = tbl_5_upvr.PostingContent:get()
	if not any_get_result1_5 then
	else
		if var29_upvw then return end
		var29_upvw = true
		if #any_get_result1_5 == 0 and #arg1 == 0 then return end
		local var134
		if arg2 then
			local UserId = LocalPlayer_upvr.UserId
			if var33_upvw then
				var134 = "Loading"
			else
				var33_upvw = true
				if not tbl_4_upvr[UserId] then
					tbl_4_upvr[UserId] = var8_upvw:InvokeServer(UserId)
				end
				var33_upvw = nil
				var134 = tbl_4_upvr[UserId]
			end
			if var134 then
				var134 = var134.donations
			end
		end
		local any_get_result1_8 = tbl_5_upvr.ScreenshotData:get()
		print("Size:", string.format("%.2f", #HttpService_upvr:JSONEncode(any_get_result1_8) / 1000).." KB")
		if var14_upvw:InvokeServer(any_get_result1_5, arg1, tbl_5_upvr.PostingCommentParent:get(), var134, any_get_result1_8) and tbl_5_upvr.CurrentPage == 1 then
			renderPosts_upvr(1, tbl_5_upvr.CurrentFeedType)
		end
		tbl_5_upvr.IsPosting:set(false)
		tbl_5_upvr.PostingContent:set(nil)
		var29_upvw = nil
	end
end
local function onCommentButtonClicked_upvr() -- Line 676, Named "onCommentButtonClicked"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	tbl_5_upvr.IsPosting:set(true)
end
local function onLikeButtonClicked_upvr(arg1, arg2) -- Line 680, Named "onLikeButtonClicked"
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw:FireServer(arg1, arg2)
end
local function onFollowButtonClicked_upvr(arg1, arg2) -- Line 684, Named "onFollowButtonClicked"
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	var13_upvw:FireServer(arg1, arg2)
end
local function calculateCanvasOffset_upvr() -- Line 688, Named "calculateCanvasOffset"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local var143
	if var143 == 0 then return end
	var143 = tbl_5_upvr.ContentFrame:get()
	if not var143 then return end
	var143 = {}
	if tbl_5_upvr.ResetLastViewedPost == true then
		var143 = nil
		tbl_5_upvr.ResetLastViewedPost = nil
		return
	end
	for _, v_8 in tbl_5_upvr.PostFrames do
		if tbl_5_upvr.ScrollingFrame:get().CanvasPosition.Y <= (0) + (v_8.AbsoluteSize.Y + tbl_5_upvr.ContentFrame:get().AbsoluteSize.Y * tbl_5_upvr.UIListLayout:get().Padding.Scale) then
			var143 = {
				Id = v_8.Name;
				Position = v_8.AbsolutePosition.Y;
			}
			return var143
		end
	end
	return var143
end
local function onBackButtonClicked_upvr() -- Line 730, Named "onBackButtonClicked"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: renderPosts_upvr (readonly)
	]]
	local var145 = tbl_5_upvr.undoTable[#tbl_5_upvr.undoTable]
	if not var145 then
	else
		tbl_5_upvr.CurrentViewingProfileId:set(var145.ProfileId)
		tbl_5_upvr.LastBottomBtnPress:set(var145.ActiveBottomBtn)
		if type(tbl_5_upvr.CurrentViewingProfileId:get()) == "string" then
			tbl_5_upvr.PostingCommentParent:set(tbl_5_upvr.CurrentViewingProfileId:get())
		end
		tbl_5_upvr.undoTable[#tbl_5_upvr.undoTable] = nil
		renderPosts_upvr(var145.PageNum, var145.FeedType, false, var145, tbl_5_upvr.isProfileFeed(var145.FeedType))
	end
end
local function onSwitchFeedClicked_upvr(arg1, arg2, arg3) -- Line 749, Named "onSwitchFeedClicked"
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: var32_upvw (read and write)
		[3]: calculateCanvasOffset_upvr (readonly)
		[4]: renderPosts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	tbl_5_upvr.UserSearchFailed:set(false)
	tbl_5_upvr.UserListVisible:set(false)
	local var146
	if var146 == "home" then
		local var147 = var32_upvw
		if not var147 then
			var147 = tbl_5_upvr.Config.feeds.main[1].id
		end
		var146 = var147
	end
	if not not tbl_5_upvr.isProfileFeed(var146) then
		if arg2 == tbl_5_upvr.CurrentViewingProfileId:get() then
		else
		end
	end
	if arg3 then
		tbl_5_upvr.undoTable = {}
	elseif true and tbl_5_upvr.CurrentFeedType then
		table.insert(tbl_5_upvr.undoTable, {
			PageNum = tbl_5_upvr.CurrentPage;
			FeedType = tbl_5_upvr.CurrentFeedType;
			LastViewedPost = calculateCanvasOffset_upvr();
			ProfileId = tbl_5_upvr.CurrentViewingProfileId:get();
			ActiveBottomBtn = tbl_5_upvr.LastBottomBtnPress:get();
		})
	end
	tbl_5_upvr.CurrentViewingProfileId:set(arg2)
	if tbl_5_upvr.CurrentFeedType then
		tbl_5_upvr.LastViewedPage[tbl_5_upvr.CurrentFeedType] = tbl_5_upvr.CurrentPage
	end
	local var149 = 1
	if var146 == tbl_5_upvr.CurrentFeedType then
		var149 = 1
		tbl_5_upvr.ResetLastViewedPost = true
	else
		var149 = tbl_5_upvr.LastViewedPage[var146] or 1
	end
	if tbl_5_upvr.isFeedTypeHomeFeed(var146) then
		var32_upvw = var146
	end
	local var150 = arg2
	if var150 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg2 == tbl_5_upvr.CurrentViewingProfileId:get() then
			var150 = false
		else
			var150 = true
		end
	end
	renderPosts_upvr(var149, var146, false, nil, tbl_5_upvr.isProfileFeed(var146) and var150)
end
local function onDeletePostButtonClicked_upvr(arg1) -- Line 803, Named "onDeletePostButtonClicked"
	--[[ Upvalues[4]:
		[1]: var29_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: onBackButtonClicked_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
	]]
	if not arg1 then
	else
		if var29_upvw then return end
		var29_upvw = true
		if var12_upvw:InvokeServer(arg1) then
			onBackButtonClicked_upvr()
		end
		tbl_5_upvr.IsOptions:set(false)
		var29_upvw = nil
	end
end
local function onReportPostButtonClicked_upvr(arg1) -- Line 823, Named "onReportPostButtonClicked"
	--[[ Upvalues[3]:
		[1]: var29_upvw (read and write)
		[2]: var9_upvw (read and write)
		[3]: tbl_5_upvr (readonly)
	]]
	if not arg1 then
	else
		if var29_upvw then return end
		var29_upvw = true
		var9_upvw:FireServer(arg1)
		tbl_5_upvr.IsOptions:set(false)
		var29_upvw = nil
	end
end
local function onBoostButtonClicked_upvr() -- Line 841, Named "onBoostButtonClicked"
	--[[ Upvalues[3]:
		[1]: var30_upvw (read and write)
		[2]: tbl_5_upvr (readonly)
		[3]: var11_upvw (read and write)
	]]
	if var30_upvw then
	else
		var30_upvw = true
		local any_get_result1 = tbl_5_upvr.BoostingPostId:get()
		if not any_get_result1 then return end
		var11_upvw:FireServer(any_get_result1, "copper")
	end
end
local function getUserProfilePicture_upvr(arg1) -- Line 855, Named "getUserProfilePicture"
	return "rbxthumb://type=AvatarHeadShot&id="..tostring(arg1).."&w=150&h=150&filters=circular"
end
local function searchFromAssetId_upvr(arg1) -- Line 859, Named "searchFromAssetId"
	local any_match_result1 = arg1:match("%d+")
	if not any_match_result1 then return end
	return {{
		AssetId = any_match_result1;
	}}
end
local tbl_upvr = {}
local function onImagesButtonClicked_upvr(arg1, arg2, arg3) -- Line 870, Named "onImagesButtonClicked"
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: searchFromAssetId_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var17_upvw (read and write)
	]]
	if not arg3 then
		tbl_5_upvr.IsLoading:set(true)
	end
	local searchFromAssetId_upvr_result1 = searchFromAssetId_upvr(arg1)
	if not searchFromAssetId_upvr_result1 then
		tbl_upvr.Page = arg2
		tbl_upvr.Keyword = arg1
		local any_InvokeServer_result1_5, any_InvokeServer_result2_2 = var17_upvw:InvokeServer(arg1, arg2)
		searchFromAssetId_upvr_result1 = any_InvokeServer_result1_5
		local var163 = any_InvokeServer_result2_2
	end
	if searchFromAssetId_upvr_result1 then
		if var163 and var163.Keyword ~= tbl_upvr.Keyword then return end
		if #searchFromAssetId_upvr_result1 == 0 then
			if arg2 == 1 then
				tbl_5_upvr.Images:set({})
			end
			tbl_5_upvr.IsLoading:set(false)
			return true
		end
		tbl_5_upvr.ImagesPage = arg2
		tbl_5_upvr.ImagesLoadedKeyword = arg1
		local var164
		if tbl_5_upvr.ImagesLoadedKeyword == arg1 and tbl_5_upvr.ImagesPage ~= arg2 then
			var164 = tbl_5_upvr.Images:get()
			for _, v_9 in searchFromAssetId_upvr_result1 do
				table.insert(var164, v_9)
			end
		else
			var164 = searchFromAssetId_upvr_result1
		end
		tbl_5_upvr.Images:set(var164)
		local any_get_result1_9_upvr = tbl_5_upvr.ImageScrollingFrame:get()
		if any_get_result1_9_upvr then
			if arg2 == 1 then
				any_get_result1_9_upvr.CanvasPosition = Vector2.zero
			end
			task.defer(function() -- Line 921
				--[[ Upvalues[1]:
					[1]: any_get_result1_9_upvr (readonly)
				]]
				any_get_result1_9_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_9_upvr.Container.UIGridLayout.AbsoluteContentSize.Y)
			end)
		end
	end
	tbl_5_upvr.IsLoading:set(false)
end
local tbl_3_upvr = {}
local function onDecalsButtonClicked_upvr(arg1, arg2) -- Line 932, Named "onDecalsButtonClicked"
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var18_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var176 = arg1 or "first_page"
	if not arg2 then
		tbl_5_upvr.IsLoading:set(true)
	end
	tbl_3_upvr.nextPageCursor = var176
	local any_InvokeServer_result1_2, any_InvokeServer_result2_5 = var18_upvw:InvokeServer(var176)
	if any_InvokeServer_result1_2 then
		if any_InvokeServer_result2_5 ~= tbl_3_upvr.nextPageCursor then return end
		local data = any_InvokeServer_result1_2.data
		if #data == 0 then
			if not var176 then
				tbl_5_upvr.Images:set({})
			end
			tbl_5_upvr.IsLoading:set(false)
			return true
		end
		tbl_5_upvr.DecalsNextPageCursor = any_InvokeServer_result1_2.nextPageCursor
		for _, v_10 in data do
			table.insert(tbl_5_upvr.Images:get(), v_10)
			local var181
		end
		tbl_5_upvr.Images:set(var181)
		local any_get_result1_12_upvr = tbl_5_upvr.ImageScrollingFrame:get()
		if any_get_result1_12_upvr then
			if var176 == "first_page" then
				any_get_result1_12_upvr.CanvasPosition = Vector2.zero
			end
			task.defer(function() -- Line 973
				--[[ Upvalues[1]:
					[1]: any_get_result1_12_upvr (readonly)
				]]
				any_get_result1_12_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_12_upvr.Container.UIGridLayout.AbsoluteContentSize.Y)
			end)
		end
	end
	any_get_result1_12_upvr = false
	tbl_5_upvr.IsLoading:set(any_get_result1_12_upvr)
end
local tbl_10_upvr = {}
local function onFollowersButtonClicked_upvr(arg1, arg2, arg3) -- Line 984, Named "onFollowersButtonClicked"
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_10_upvr (readonly)
		[3]: var15_upvw (read and write)
	]]
	if not arg3 then
		tbl_5_upvr.IsLoading:set(true)
	end
	tbl_10_upvr.Page = arg2
	tbl_10_upvr.UserId = arg1
	local any_InvokeServer_result1, any_InvokeServer_result2_4 = var15_upvw:InvokeServer(arg1, arg2)
	if any_InvokeServer_result1 then
		if any_InvokeServer_result2_4 and any_InvokeServer_result2_4.UserId ~= tbl_10_upvr.UserId then return end
		if #any_InvokeServer_result1 == 0 then
			if arg2 == 1 then
				tbl_5_upvr.UserListLoaded:set({})
			end
			tbl_5_upvr.IsLoading:set(false)
			return true
		end
		tbl_5_upvr.FollowersPage = arg2
		tbl_5_upvr.FollowersLoadedUserId = arg1
		local tbl_9 = {}
		if arg2 == 1 then
			tbl_5_upvr.UserListLoaded:set({})
			local var196
		end
		if tbl_5_upvr.FollowersLoadedUserId == arg1 and tbl_5_upvr.FollowersPage ~= arg2 then
			var196 = tbl_5_upvr.UserListLoaded:get()
			for _, v_11 in any_InvokeServer_result1 do
				table.insert(var196, v_11)
			end
		else
			var196 = any_InvokeServer_result1
		end
		for _, v_12 in any_InvokeServer_result1 do
			local follower = v_12.follower
			if not follower then
				follower = v_12.following
			end
			table.insert(tbl_9, follower)
		end
		tbl_5_upvr.getUserInfoFromUserIds(tbl_9)
		tbl_5_upvr.UserListLoaded:set(var196)
		local any_get_result1_11_upvr = tbl_5_upvr.UserListScrollingFrame:get()
		if any_get_result1_11_upvr then
			if arg2 == 1 then
				any_get_result1_11_upvr.CanvasPosition = Vector2.zero
			end
			task.defer(function() -- Line 1042
				--[[ Upvalues[1]:
					[1]: any_get_result1_11_upvr (readonly)
				]]
				any_get_result1_11_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_11_upvr.Container.UIListLayout.AbsoluteContentSize.Y)
			end)
		end
	end
	tbl_5_upvr.IsLoading:set(false)
end
local tbl_upvr_2 = {}
local function onFollowingButtonClicked_upvr(arg1, arg2, arg3) -- Line 1053, Named "onFollowingButtonClicked"
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var16_upvw (read and write)
	]]
	if not arg3 then
		tbl_5_upvr.IsLoading:set(true)
	end
	tbl_upvr_2.Page = arg2
	tbl_upvr_2.UserId = arg1
	local any_InvokeServer_result1_4, any_InvokeServer_result2_6 = var16_upvw:InvokeServer(arg1, arg2)
	if any_InvokeServer_result1_4 then
		if any_InvokeServer_result2_6 and any_InvokeServer_result2_6.UserId ~= tbl_upvr_2.UserId then return end
		if #any_InvokeServer_result1_4 == 0 then
			if arg2 == 1 then
				tbl_5_upvr.UserListLoaded:set({})
			end
			tbl_5_upvr.IsLoading:set(false)
			return true
		end
		tbl_5_upvr.FollowingPage = arg2
		tbl_5_upvr.FollowingLoadedUserId = arg1
		local tbl_2 = {}
		if arg2 == 1 then
			tbl_5_upvr.UserListLoaded:set({})
			local var212
		end
		if tbl_5_upvr.FollowingLoadedUserId == arg1 and tbl_5_upvr.FollowingPage ~= arg2 then
			var212 = tbl_5_upvr.UserListLoaded:get()
			for _, v_13 in any_InvokeServer_result1_4 do
				table.insert(var212, v_13)
			end
		else
			var212 = any_InvokeServer_result1_4
		end
		for _, v_14 in any_InvokeServer_result1_4 do
			local follower_2 = v_14.follower
			if not follower_2 then
				follower_2 = v_14.following
			end
			table.insert(tbl_2, follower_2)
		end
		tbl_5_upvr.getUserInfoFromUserIds(tbl_2)
		tbl_5_upvr.UserListLoaded:set(var212)
		local any_get_result1_upvr = tbl_5_upvr.UserListScrollingFrame:get()
		if any_get_result1_upvr then
			if arg2 == 1 then
				any_get_result1_upvr.CanvasPosition = Vector2.zero
			end
			task.defer(function() -- Line 1111
				--[[ Upvalues[1]:
					[1]: any_get_result1_upvr (readonly)
				]]
				any_get_result1_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_upvr.Container.UIListLayout.AbsoluteContentSize.Y)
			end)
		end
	end
	tbl_5_upvr.IsLoading:set(false)
end
local function loadProfileFromFloatingBanner_upvr(arg1) -- Line 1120, Named "loadProfileFromFloatingBanner"
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: onSwitchFeedClicked_upvr (readonly)
	]]
	if tbl_5_upvr.IsOpened:get() == true then
	else
		tbl_5_upvr.DisableHomeButtons = true
		tbl_5_upvr.UpdateHomeButtons:set(not tbl_5_upvr.UpdateHomeButtons:get())
		tbl_5_upvr.CurrentViewingProfileId:set(nil)
		tbl_5_upvr.TopbarButton:select()
		onSwitchFeedClicked_upvr(tbl_5_upvr.initialProfileFeed, arg1.UserId)
	end
end
local function renderCameraView_upvr() -- Line 1134, Named "renderCameraView"
	--[[ Upvalues[2]:
		[1]: Windows_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
	]]
	return require(Windows_upvr.CameraView)(tbl_5_upvr)
end
local var216_upvw
local function toggleCamera_upvr(arg1) -- Line 1140, Named "toggleCamera"
	--[[ Upvalues[6]:
		[1]: toggleCamera_upvr (readonly)
		[2]: var216_upvw (read and write)
		[3]: GuiLoader_upvr (readonly)
		[4]: renderCameraView_upvr (readonly)
		[5]: var21_upvw (read and write)
		[6]: tbl_5_upvr (readonly)
	]]
	if arg1 then
		toggleCamera_upvr(false)
		var216_upvw = GuiLoader_upvr.Load(renderCameraView_upvr, var21_upvw, tbl_5_upvr)
	elseif var216_upvw then
		var216_upvw:Destroy()
	end
end
local function serializeCharacter_upvr(arg1) -- Line 1152, Named "serializeCharacter"
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then return end
	local any_GetAppliedDescription_result1 = class_Humanoid:GetAppliedDescription()
	local module = {}
	for _, v_15 in arg1:GetChildren() do
		if v_15:IsA("BasePart") then
			({})[v_15.Name] = {v_15.CFrame:GetComponents()}
		end
	end
	module.Cframe = {arg1:GetPivot():GetComponents()}
	module.RigType = class_Humanoid.RigType.Name
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.PartCframes = {}
	module.Properties = {
		Shirt = any_GetAppliedDescription_result1.Shirt;
		Pants = any_GetAppliedDescription_result1.Pants;
		Face = any_GetAppliedDescription_result1.Face;
		Torso = any_GetAppliedDescription_result1.Torso;
		RightLeg = any_GetAppliedDescription_result1.RightLeg;
		LeftLeg = any_GetAppliedDescription_result1.LeftLeg;
		LeftArm = any_GetAppliedDescription_result1.LeftArm;
		RightArm = any_GetAppliedDescription_result1.RightArm;
		Head = any_GetAppliedDescription_result1.Head;
		GraphicTShirt = any_GetAppliedDescription_result1.GraphicTShirt;
		BodyTypeScale = any_GetAppliedDescription_result1.BodyTypeScale;
		DepthScale = any_GetAppliedDescription_result1.DepthScale;
		HeadScale = any_GetAppliedDescription_result1.HeadScale;
		HeightScale = any_GetAppliedDescription_result1.HeightScale;
		ProportionScale = any_GetAppliedDescription_result1.ProportionScale;
		WidthScale = any_GetAppliedDescription_result1.WidthScale;
		BackAccessory = any_GetAppliedDescription_result1.BackAccessory;
		FaceAccessory = any_GetAppliedDescription_result1.FaceAccessory;
		FrontAccessory = any_GetAppliedDescription_result1.FrontAccessory;
		HairAccessory = any_GetAppliedDescription_result1.HairAccessory;
		HatAccessory = any_GetAppliedDescription_result1.HatAccessory;
		NeckAccessory = any_GetAppliedDescription_result1.NeckAccessory;
		ShouldersAccessory = any_GetAppliedDescription_result1.ShouldersAccessory;
		WaistAccessory = any_GetAppliedDescription_result1.WaistAccessory;
		ClimbAnimation = any_GetAppliedDescription_result1.ClimbAnimation;
		FallAnimation = any_GetAppliedDescription_result1.FallAnimation;
		IdleAnimation = any_GetAppliedDescription_result1.IdleAnimation;
		JumpAnimation = any_GetAppliedDescription_result1.JumpAnimation;
		MoodAnimation = any_GetAppliedDescription_result1.MoodAnimation;
		RunAnimation = any_GetAppliedDescription_result1.RunAnimation;
		SwimAnimation = any_GetAppliedDescription_result1.SwimAnimation;
		WalkAnimation = any_GetAppliedDescription_result1.WalkAnimation;
	}
	module.Colors = {
		HeadColor = {any_GetAppliedDescription_result1.HeadColor.R, any_GetAppliedDescription_result1.HeadColor.G, any_GetAppliedDescription_result1.HeadColor.B};
		LeftArmColor = {any_GetAppliedDescription_result1.LeftArmColor.R, any_GetAppliedDescription_result1.LeftArmColor.G, any_GetAppliedDescription_result1.LeftArmColor.B};
		RightArmColor = {any_GetAppliedDescription_result1.RightArmColor.R, any_GetAppliedDescription_result1.RightArmColor.G, any_GetAppliedDescription_result1.RightArmColor.B};
		LeftLegColor = {any_GetAppliedDescription_result1.LeftLegColor.R, any_GetAppliedDescription_result1.LeftLegColor.G, any_GetAppliedDescription_result1.LeftLegColor.B};
		RightLegColor = {any_GetAppliedDescription_result1.RightLegColor.R, any_GetAppliedDescription_result1.RightLegColor.G, any_GetAppliedDescription_result1.RightLegColor.B};
		TorsoColor = {any_GetAppliedDescription_result1.TorsoColor.R, any_GetAppliedDescription_result1.TorsoColor.G, any_GetAppliedDescription_result1.TorsoColor.B};
	}
	return module
end
local function getSerializedCharacters_upvr(arg1) -- Line 1222, Named "getSerializedCharacters"
	--[[ Upvalues[1]:
		[1]: serializeCharacter_upvr (readonly)
	]]
	for i_17 in arg1 do
		local serializeCharacter_result1 = serializeCharacter_upvr(i_17.Parent)
		if serializeCharacter_result1 then
			table.insert({}, serializeCharacter_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function deserializeCharacter_upvr(arg1) -- Line 1235, Named "deserializeCharacter"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local HumanoidDescription = Instance.new("HumanoidDescription")
	for i_18, v_16 in arg1.Properties do
		if v_16 ~= 0 then
			HumanoidDescription[i_18] = v_16
		end
	end
	for i_19, v_17 in arg1.Colors do
		HumanoidDescription[i_19] = Color3.new(v_17[1], v_17[2], v_17[3])
	end
	local any_CreateHumanoidModelFromDescription_result1 = Players_upvr:CreateHumanoidModelFromDescription(HumanoidDescription, Enum.HumanoidRigType[arg1.RigType])
	local Animate = any_CreateHumanoidModelFromDescription_result1:FindFirstChild("Animate", true)
	if Animate then
		Animate:Destroy()
	end
	local class_Animator = any_CreateHumanoidModelFromDescription_result1:FindFirstChildWhichIsA("Animator", true)
	if class_Animator then
		class_Animator:Destroy()
	end
	local class_FaceControls = any_CreateHumanoidModelFromDescription_result1:FindFirstChildWhichIsA("FaceControls", true)
	if class_FaceControls then
		class_FaceControls:Destroy()
	end
	any_CreateHumanoidModelFromDescription_result1:PivotTo(CFrame.new(table.unpack(arg1.Cframe)))
	for i_20, v_18 in arg1.PartCframes do
		local SOME = any_CreateHumanoidModelFromDescription_result1:FindFirstChild(i_20)
		if SOME then
			local class_Motor6D = SOME:FindFirstChildOfClass("Motor6D")
			if class_Motor6D then
				class_Motor6D:Destroy()
			end
			SOME.Anchored = true
			SOME.CFrame = CFrame.new(table.unpack(v_18))
		end
	end
	return any_CreateHumanoidModelFromDescription_result1
end
local function getDeserializedCharacters_upvr(arg1) -- Line 1287, Named "getDeserializedCharacters"
	--[[ Upvalues[1]:
		[1]: deserializeCharacter_upvr (readonly)
	]]
	local Folder = Instance.new("Folder")
	for _, v_19 in arg1 do
		deserializeCharacter_upvr(v_19).Parent = Folder
	end
	return Folder
end
local function onScreenshotTaken_upvr(arg1) -- Line 1298, Named "onScreenshotTaken"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	tbl_5_upvr.ScreenshotData:set(arg1)
end
local function renderFeed_upvr() -- Line 1302, Named "renderFeed"
	--[[ Upvalues[2]:
		[1]: Windows_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
	]]
	return require(Windows_upvr.Feed)(tbl_5_upvr)
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage").BloxbizRemotes
local var262_upvw
local var263_upvw
local var264_upvw
local var265_upvw
local CurrentCamera_upvr = workspace.CurrentCamera
local any_read_result1_upvr = ConfigReader_upvr:read("PopfeedProfilePlayerBannersEnabled")
function module_upvr.init() -- Line 1306
	--[[ Upvalues[58]:
		[1]: var21_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: BloxbizRemotes_upvr (readonly)
		[5]: var11_upvw (read and write)
		[6]: var9_upvw (read and write)
		[7]: var12_upvw (read and write)
		[8]: var13_upvw (read and write)
		[9]: var14_upvw (read and write)
		[10]: var18_upvw (read and write)
		[11]: var17_upvw (read and write)
		[12]: var262_upvw (read and write)
		[13]: var19_upvw (read and write)
		[14]: var263_upvw (read and write)
		[15]: var264_upvw (read and write)
		[16]: var15_upvw (read and write)
		[17]: var16_upvw (read and write)
		[18]: var265_upvw (read and write)
		[19]: var8_upvw (read and write)
		[20]: var20_upvw (read and write)
		[21]: tbl_5_upvr (readonly)
		[22]: toggleCamera_upvr (readonly)
		[23]: onScreenshotTaken_upvr (readonly)
		[24]: onSwitchFeedClicked_upvr (readonly)
		[25]: onLikeButtonClicked_upvr (readonly)
		[26]: onPostButtonClicked_upvr (readonly)
		[27]: onBackButtonClicked_upvr (readonly)
		[28]: requestDonationItems_upvr (readonly)
		[29]: onBoostButtonClicked_upvr (readonly)
		[30]: getUserProfilePicture_upvr (readonly)
		[31]: onFollowButtonClicked_upvr (readonly)
		[32]: onImagesButtonClicked_upvr (readonly)
		[33]: onDecalsButtonClicked_upvr (readonly)
		[34]: onCommentButtonClicked_upvr (readonly)
		[35]: togglePopfeedVisibility_upvr (readonly)
		[36]: onFollowersButtonClicked_upvr (readonly)
		[37]: onFollowingButtonClicked_upvr (readonly)
		[38]: onDeletePostButtonClicked_upvr (readonly)
		[39]: onReportPostButtonClicked_upvr (readonly)
		[40]: loadProfileFromFloatingBanner_upvr (readonly)
		[41]: getSerializedCharacters_upvr (readonly)
		[42]: getDeserializedCharacters_upvr (readonly)
		[43]: renderExplorePage_upvr (readonly)
		[44]: module_upvr (readonly)
		[45]: calculateCanvasOffset_upvr (readonly)
		[46]: onCanvasPositionChanged_upvr (readonly)
		[47]: BindableEvent_upvw_2 (read and write)
		[48]: ConfigReader_upvr (readonly)
		[49]: setupTopbarButton_upvr (readonly)
		[50]: var22_upvw (read and write)
		[51]: var30_upvw (read and write)
		[52]: CurrentCamera_upvr (readonly)
		[53]: any_read_result1_upvr (readonly)
		[54]: GuiLoader_upvr (readonly)
		[55]: Windows_upvr (readonly)
		[56]: Players_upvr (readonly)
		[57]: BindableEvent_upvw (read and write)
		[58]: renderFeed_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var21_upvw = LocalPlayer_upvr:WaitForChild("PlayerGui")
	var10_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnLikePost")
	var11_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnBoostPost")
	var9_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnReportPost")
	var12_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnDeletePost")
	var13_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnFollowUser")
	var14_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnPostContent")
	var18_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnSearchDecals")
	var17_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnSearchImages")
	var262_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnRequestConfig")
	var19_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnRequestContent")
	var263_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnNewNotifications")
	var264_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnSearchTermUpdate")
	var15_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnGetFollowersList")
	var16_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnGetFollowingList")
	var265_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnSendPostImpressions")
	var8_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedOnRequestDonationItems")
	var20_upvw = BloxbizRemotes_upvr:WaitForChild("PopfeedAnalyticsOpen")
	tbl_5_upvr.ChangeOutfit = BloxbizRemotes_upvr:WaitForChild("PopfeedChangeOutfit")
	tbl_5_upvr.ToggleCamera = toggleCamera_upvr
	tbl_5_upvr.OnScreenshotTaken = onScreenshotTaken_upvr
	tbl_5_upvr.OnSwitchFeedClicked = onSwitchFeedClicked_upvr
	tbl_5_upvr.OnLikeButtonClicked = onLikeButtonClicked_upvr
	tbl_5_upvr.OnPostButtonClicked = onPostButtonClicked_upvr
	tbl_5_upvr.OnBackButtonClicked = onBackButtonClicked_upvr
	tbl_5_upvr.RequestDonationItems = requestDonationItems_upvr
	tbl_5_upvr.OnBoostButtonClicked = onBoostButtonClicked_upvr
	tbl_5_upvr.GetUserProfilePicture = getUserProfilePicture_upvr
	tbl_5_upvr.OnFollowButtonClicked = onFollowButtonClicked_upvr
	tbl_5_upvr.OnImagesButtonClicked = onImagesButtonClicked_upvr
	tbl_5_upvr.OnDecalsButtonClicked = onDecalsButtonClicked_upvr
	tbl_5_upvr.OnCommentButtonClicked = onCommentButtonClicked_upvr
	tbl_5_upvr.TogglePopfeedVisibility = togglePopfeedVisibility_upvr
	tbl_5_upvr.OnFollowersButtonClicked = onFollowersButtonClicked_upvr
	tbl_5_upvr.OnFollowingButtonClicked = onFollowingButtonClicked_upvr
	tbl_5_upvr.OnDeletePostButtonClicked = onDeletePostButtonClicked_upvr
	tbl_5_upvr.OnReportPostButtonClicked = onReportPostButtonClicked_upvr
	tbl_5_upvr.LoadProfileFromFloatingBanner = loadProfileFromFloatingBanner_upvr
	tbl_5_upvr.GetSerializedCharacters = getSerializedCharacters_upvr
	tbl_5_upvr.GetDeserializedCharacters = getDeserializedCharacters_upvr
	tbl_5_upvr.RenderExplorePage = renderExplorePage_upvr
	tbl_5_upvr.closePopfeed = module_upvr.ClosePopfeed
	tbl_5_upvr.CalculateCanvasOffset = calculateCanvasOffset_upvr
	tbl_5_upvr.OnCanvasPositionChanged = onCanvasPositionChanged_upvr
	tbl_5_upvr.Config = var262_upvw:InvokeServer()
	BindableEvent_upvw_2:Fire()
	BindableEvent_upvw_2:Destroy()
	BindableEvent_upvw_2 = nil
	if ConfigReader_upvr:read("PopfeedShowToolbarButton") then
		setupTopbarButton_upvr()
	end
	var263_upvw.OnClientEvent:Connect(function(arg1) -- Line 1367
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: var22_upvw (copied, read and write)
		]]
		tbl_5_upvr.NotificationCount:set(arg1)
		if var22_upvw then
			var22_upvw:clearNotices()
			for _ = 1, arg1 do
				var22_upvw:notify()
			end
		end
	end)
	var11_upvw.OnClientEvent:Connect(function(arg1) -- Line 1378
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: var30_upvw (copied, read and write)
		]]
		if arg1 then
			local BoostingPostBoostValue_2 = tbl_5_upvr.BoostingPostBoostValue
			if BoostingPostBoostValue_2 then
				BoostingPostBoostValue_2:set(BoostingPostBoostValue_2:get() + 1)
			end
		end
		tbl_5_upvr.IsBoosting:set(false)
		var30_upvw = nil
	end)
	var264_upvw.OnClientEvent:Connect(function(arg1) -- Line 1390
		--[[ Upvalues[1]:
			[1]: tbl_5_upvr (copied, readonly)
		]]
		local var282
		if type(arg1) ~= "table" then
			var282 = {}
		end
		tbl_5_upvr.ImageSearchTerms:set(var282)
	end)
	var264_upvw:FireServer()
	CurrentCamera_upvr:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 1400, Named "setVertical"
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: tbl_5_upvr (copied, readonly)
		]]
		if CurrentCamera_upvr.ViewportSize.X < CurrentCamera_upvr.ViewportSize.Y then
			tbl_5_upvr.IsVertical:set(true)
		else
			tbl_5_upvr.IsVertical:set(false)
		end
	end)
	if CurrentCamera_upvr.ViewportSize.X < CurrentCamera_upvr.ViewportSize.Y then
		tbl_5_upvr.IsVertical:set(true)
	else
		tbl_5_upvr.IsVertical:set(false)
	end
	if any_read_result1_upvr then
		local function onCharacterAdded_upvr(arg1, arg2) -- Line 1412, Named "onCharacterAdded"
			--[[ Upvalues[5]:
				[1]: tbl_5_upvr (copied, readonly)
				[2]: loadProfileFromFloatingBanner_upvr (copied, readonly)
				[3]: GuiLoader_upvr (copied, readonly)
				[4]: Windows_upvr (copied, readonly)
				[5]: var21_upvw (copied, read and write)
			]]
			local HumanoidRootPart = arg1:WaitForChild("HumanoidRootPart")
			local tbl_14_upvr = {}
			tbl_14_upvr.Player = arg2
			tbl_14_upvr.RootPart = HumanoidRootPart
			tbl_14_upvr.FeedProps = tbl_5_upvr
			arg1:WaitForChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local ProximityPrompt = Instance.new("ProximityPrompt")
			ProximityPrompt.Name = "OpenProfile"
			ProximityPrompt.ObjectText = "Popfeed"
			ProximityPrompt.ActionText = "Open Profile"
			ProximityPrompt.HoldDuration = 0.3
			ProximityPrompt.MaxActivationDistance = 5
			ProximityPrompt.RequiresLineOfSight = false
			ProximityPrompt.Triggered:Connect(function() -- Line 1432
				--[[ Upvalues[2]:
					[1]: loadProfileFromFloatingBanner_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				loadProfileFromFloatingBanner_upvr(arg2)
			end)
			ProximityPrompt.Parent = HumanoidRootPart
			local any_Load_result1_upvr = GuiLoader_upvr.Load(function() -- Line 1438
				--[[ Upvalues[2]:
					[1]: Windows_upvr (copied, readonly)
					[2]: tbl_14_upvr (readonly)
				]]
				return require(Windows_upvr.FloatingProfile)(tbl_14_upvr)
			end, var21_upvw, tbl_14_upvr)
			arg1.Destroying:Connect(function() -- Line 1442
				--[[ Upvalues[1]:
					[1]: any_Load_result1_upvr (readonly)
				]]
				any_Load_result1_upvr:Destroy()
			end)
		end
		local function onPlayerAdded(arg1) -- Line 1447
			--[[ Upvalues[2]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: onCharacterAdded_upvr (readonly)
			]]
			if arg1 == LocalPlayer_upvr then
			else
				arg1.CharacterRemoving:Connect(function(arg1_2) -- Line 1452
					arg1_2:Destroy()
				end)
				arg1.CharacterAdded:Connect(function(arg1_3) -- Line 1456
					--[[ Upvalues[2]:
						[1]: onCharacterAdded_upvr (copied, readonly)
						[2]: arg1 (readonly)
					]]
					onCharacterAdded_upvr(arg1_3, arg1)
				end)
				if arg1.Character then
					onCharacterAdded_upvr(arg1.Character, arg1)
				end
			end
		end
		Players_upvr.PlayerAdded:Connect(onPlayerAdded)
		for _, v_20 in Players_upvr:GetPlayers() do
			onPlayerAdded(v_20)
			local _
		end
	end
	onCharacterAdded_upvr = task.spawn
	onCharacterAdded_upvr(function() -- Line 1472
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: var265_upvw (copied, read and write)
		]]
		while task.wait(60) do
			local PostImpressions = tbl_5_upvr.PostImpressions
			if #PostImpressions ~= 0 then
				var265_upvw:FireServer(PostImpressions)
				tbl_5_upvr.PostImpressions = {}
			end
		end
	end)
	onCharacterAdded_upvr = task.defer
	onCharacterAdded_upvr(function() -- Line 1484
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvw (copied, read and write)
		]]
		BindableEvent_upvw:Fire()
		BindableEvent_upvw:Destroy()
		BindableEvent_upvw = nil
	end)
	onCharacterAdded_upvr = GuiLoader_upvr.Load
	onCharacterAdded_upvr(renderFeed_upvr, var21_upvw, tbl_5_upvr)
end
return module_upvr