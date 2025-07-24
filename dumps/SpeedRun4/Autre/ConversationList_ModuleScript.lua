-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:20
-- Luau version 6, Types version 3
-- Time taken: 0.010104 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = CoreGui:WaitForChild("RobloxGui").Modules.Settings.Pages.ShareGame
local Theme = require(Modules.Settings.Theme)
local Constants_upvr = require(ShareGame.Constants)
local NewInviteMenuExperimentManager_upvr = require(ShareGame.NewInviteMenuExperimentManager)
local GetFFlagEnableNewInviteMenu_upvr = require(Modules.Flags.GetFFlagEnableNewInviteMenu)
local GetFFlagEnableNewInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local UserModel = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local memoize = require(CorePackages.Workspace.Packages.AppCommonLib).memoize
local tbl_2_upvr = {
	[UserModel.PresenceType.ONLINE] = 3;
	[UserModel.PresenceType.IN_GAME] = 2;
	[UserModel.PresenceType.IN_STUDIO] = 1;
	[UserModel.PresenceType.OFFLINE] = 0;
}
local tbl_3_upvr = {
	SORT_BY_FREQUENCY = 1;
	SORT_BY_PRESENCE_AND_FREQUENCY = 2;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationList")
any_extend_result1.defaultProps = {
	entryHeight = 62;
	entryPadding = 16;
}
function any_extend_result1.init(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.scrollingRef = Roact_upvr.createRef()
	function arg1.inviteUser(arg1_2) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.inviteUser(arg1_2, arg1.props.analytics, arg1.props.trigger, arg1.props.inviteMessageId, arg1.props.launchData)
	end
end
local PlayerSearchPredicate_upvr = require(CoreGui.RobloxGui.Modules.InGameMenu.Utility.PlayerSearchPredicate)
local InviteListEntry_upvr = require(ShareGame.Components.InviteListEntry)
local ConversationEntry_upvr = require(ShareGame.Components.ConversationEntry)
local RetrievalStatus_upvr = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local LoadingFriendsPage_upvr = require(ShareGame.Components.LoadingFriendsPage)
local NoFriendsPage_upvr = require(ShareGame.Components.NoFriendsPage)
local FriendsErrorPage_upvr = require(ShareGame.Components.FriendsErrorPage)
local any_font_result1_upvr = Theme.font(Enum.Font.SourceSans)
local var27_upvr = require(ShareGame.getTranslator)()
local GRAY3_upvr = Constants_upvr.Color.GRAY3
local any_textSize_result1_upvr = Theme.textSize(19)
function any_extend_result1.render(arg1) -- Line 89
	--[[ Upvalues[15]:
		[1]: Roact_upvr (readonly)
		[2]: GetFFlagEnableNewInviteSendEndpoint_upvr (readonly)
		[3]: GetFFlagEnableNewInviteMenu_upvr (readonly)
		[4]: PlayerSearchPredicate_upvr (readonly)
		[5]: InviteListEntry_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
		[7]: ConversationEntry_upvr (readonly)
		[8]: RetrievalStatus_upvr (readonly)
		[9]: LoadingFriendsPage_upvr (readonly)
		[10]: NoFriendsPage_upvr (readonly)
		[11]: FriendsErrorPage_upvr (readonly)
		[12]: any_font_result1_upvr (readonly)
		[13]: var27_upvr (readonly)
		[14]: GRAY3_upvr (readonly)
		[15]: any_textSize_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38 = arg1.props[Roact_upvr.Children]
	if not var38 then
		var38 = {}
	end
	local entryHeight = arg1.props.entryHeight
	local entryPadding = arg1.props.entryPadding
	local friends = arg1.props.friends
	local friendsRetrievalStatus = arg1.props.friendsRetrievalStatus
	local layoutOrder = arg1.props.layoutOrder
	local zIndex = arg1.props.zIndex
	local topPadding = arg1.props.topPadding
	if GetFFlagEnableNewInviteSendEndpoint_upvr() then
	end
	local GetFFlagEnableNewInviteMenu_upvr_result1 = GetFFlagEnableNewInviteMenu_upvr()
	var38.RowListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, entryPadding);
	})
	for i, v in ipairs(friends) do
		local var19_result1 = PlayerSearchPredicate_upvr(arg1.props.searchText, v.name, v.displayName)
		if GetFFlagEnableNewInviteMenu_upvr_result1 then
			var38["User-"..tostring(i)] = Roact_upvr.createElement(InviteListEntry_upvr, {
				analytics = arg1.props.analytics;
				user = v;
				visible = var19_result1;
				layoutOrder = i;
				inviteUser = arg1.inviteUser;
				inviteStatus = arg1.props.invites[v.id];
				isFullRowActivatable = UserInputService_upvr.GamepadEnabled;
				trigger = arg1.props.trigger;
				inviteMessageId = arg1.props.inviteMessageId;
				launchData = arg1.props.launchData;
			})
		else
			local tbl = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.analytics = arg1.props.analytics
			tbl.visible = var19_result1
			tbl.size = UDim2.new(1, 0, 0, entryHeight)
			tbl.layoutOrder = i
			tbl.zIndex = zIndex
			tbl.title = v.displayName
			tbl.subtitle = '@'..v.name
			tbl.presence = v.presence
			tbl.users = {v}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.inviteUser = arg1.inviteUser
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.inviteStatus = arg1.props.invites[v.id]
			var38["User-"..tostring(i)] = Roact_upvr.createElement(ConversationEntry_upvr, tbl)
		end
		if var19_result1 then
			local var55 = 0 + 1
		end
	end
	if #friends == 0 or friendsRetrievalStatus == RetrievalStatus_upvr.Fetching then
		local var56 = LoadingFriendsPage_upvr
		if friendsRetrievalStatus == RetrievalStatus_upvr.Done then
			var56 = NoFriendsPage_upvr
		elseif friendsRetrievalStatus == RetrievalStatus_upvr.Failed then
			var56 = FriendsErrorPage_upvr
		end
		i = {}
		v = 0
		i.BorderSizePixel = v
		i.LayoutOrder = layoutOrder
		v = UDim2.new(0, 0, 0, topPadding)
		i.Position = v
		i.ZIndex = zIndex
		return Roact_upvr.createElement(var56, i)
	end
	if var55 == 0 then
		local module_4 = {}
		i = 1
		module_4.BackgroundTransparency = i
		module_4.LayoutOrder = layoutOrder
		i = any_font_result1_upvr
		module_4.Font = i
		i = UDim2.new
		v = 1
		i = i(v, 0, 0, entryHeight)
		module_4.Size = i
		i = var27_upvr:FormatByKey("Feature.SettingsHub.Label.InviteSearchNoResults")
		module_4.Text = i
		i = GRAY3_upvr
		module_4.TextColor3 = i
		i = any_textSize_result1_upvr
		module_4.TextSize = i
		i = 0.22
		module_4.TextTransparency = i
		module_4.ZIndex = zIndex
		i = UDim2.new
		v = 0
		i = i(v, 0, 0, topPadding)
		module_4.Position = i
		return Roact_upvr.createElement("TextLabel", module_4)
	end
	local module = {
		BackgroundTransparency = 1;
		LayoutOrder = layoutOrder;
		Size = arg1.props.size;
		BorderSizePixel = 0;
	}
	local udim2 = UDim2.new(0, 0, 0, topPadding)
	module.Position = udim2
	if GetFFlagEnableNewInviteMenu_upvr_result1 then
		udim2 = UDim2.new()
	else
		udim2 = UDim2.new(0, 0, 0, var55 * (entryHeight + entryPadding))
	end
	module.CanvasSize = udim2
	if GetFFlagEnableNewInviteMenu_upvr_result1 then
	else
	end
	module.AutomaticCanvasSize = nil
	module.ScrollBarThickness = 0
	module.ZIndex = zIndex
	module.Selectable = false
	module[Roact_upvr.Ref] = arg1.scrollingRef
	return Roact_upvr.createElement("ScrollingFrame", module, var38)
end
local GuiService_upvr = game:GetService("GuiService")
local function handleBinding_upvr(arg1) -- Line 211, Named "handleBinding"
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableNewInviteMenu_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if GetFFlagEnableNewInviteMenu_upvr() and not UserInputService_upvr.GamepadEnabled then
	else
		local any_getValue_result1 = arg1.scrollingRef:getValue()
		if any_getValue_result1 and any_getValue_result1:FindFirstAncestorOfClass("ScreenGui").Enabled and GuiService_upvr.SelectedCoreObject == nil then
			GuiService_upvr:AddSelectionParent("invitePrompt", any_getValue_result1)
			for _, v_5 in ipairs(any_getValue_result1:GetChildren()) do
				if v_5:IsA("GuiObject") and v_5.LayoutOrder == 1 then
					GuiService_upvr.SelectedCoreObject = v_5
					return
				end
			end
		end
	end
end
any_extend_result1.didUpdate = handleBinding_upvr
if GetFFlagEnableNewInviteSendEndpoint_upvr() then
	local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
	local GetFFlagAbuseReportAnalyticsHasLaunchData_upvr = require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
	function any_extend_result1.didMount(arg1) -- Line 237
		--[[ Upvalues[4]:
			[1]: Constants_upvr (readonly)
			[2]: GameInviteEvents_upvr (readonly)
			[3]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (readonly)
			[4]: handleBinding_upvr (readonly)
		]]
		if arg1.props.analytics then
			local var71
			if arg1.props.trigger == Constants_upvr.Triggers.GameMenu then
				local var72 = false
				if arg1.props.launchData ~= nil then
					if arg1.props.launchData == "" then
						var72 = false
					else
						var72 = true
					end
				end
				var71 = GameInviteEvents_upvr
				if GetFFlagAbuseReportAnalyticsHasLaunchData_upvr() then
					var71 = {}
					var71.isLaunchDataProvided = var72
				else
					var71 = nil
				end
				arg1.props.analytics:sendEvent(arg1.props.trigger, var71.ModalOpened, var71)
			end
		end
		handleBinding_upvr(arg1)
	end
else
	any_extend_result1.didMount = handleBinding_upvr
end
local memoize_result1_upvr = memoize(function(arg1) -- Line 256
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local module_5 = {}
	local function friendPreference(arg1_3, arg2) -- Line 258
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (copied, readonly)
		]]
		local var77 = tbl_2_upvr[arg1_3.presence]
		local var78 = tbl_2_upvr
		local var79 = var78[arg2.presence]
		if var77 == var79 then
			if arg1_3.name:lower() >= arg2.name:lower() then
				var78 = false
			else
				var78 = true
			end
			return var78
		end
		if var79 >= var77 then
			var78 = false
		else
			var78 = true
		end
		return var78
	end
	for _, v_2 in pairs(arg1) do
		if v_2.isFriend then
			module_5[#module_5 + 1] = v_2
		end
	end
	table.sort(module_5, friendPreference)
	return module_5
end)
local sortFriendsByCorrectedPresenceAndRank_upvr = require(CorePackages.Packages.LuaSocialLibrariesDeps).SocialLibraries.config({}).User.sortFriendsByCorrectedPresenceAndRank
local var13_result1_upvr_2 = memoize(function(arg1) -- Line 280
	--[[ Upvalues[1]:
		[1]: sortFriendsByCorrectedPresenceAndRank_upvr (readonly)
	]]
	local module_2 = {}
	for _, v_3 in pairs(arg1) do
		if v_3.isFriend then
			module_2[#module_2 + 1] = v_3
		end
	end
	table.sort(module_2, sortFriendsByCorrectedPresenceAndRank_upvr)
	return module_2
end)
local var13_result1_upvr = memoize(function(arg1) -- Line 293
	local module_3 = {}
	for _, v_4 in pairs(arg1) do
		if v_4.isFriend then
			module_3[#module_3 + 1] = v_4
		end
	end
	table.sort(module_3, function(arg1_4, arg2) -- Line 295, Named "friendPreference"
		local var97 = tonumber(arg1_4.friendFrequentRank) or 0
		local tonumber_result1 = tonumber(arg2.friendFrequentRank)
		local var99 = tonumber_result1 or 0
		if var97 == var99 then
			if arg1_4.name:lower() >= arg2.name:lower() then
				tonumber_result1 = false
			else
				tonumber_result1 = true
			end
			return tonumber_result1
		end
		if var97 >= var99 then
			tonumber_result1 = false
		else
			tonumber_result1 = true
		end
		return tonumber_result1
	end)
	return module_3
end)
local function _() -- Line 317
	--[[ Upvalues[5]:
		[1]: NewInviteMenuExperimentManager_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var13_result1_upvr (readonly)
		[4]: var13_result1_upvr_2 (readonly)
		[5]: memoize_result1_upvr (readonly)
	]]
	local var105 = NewInviteMenuExperimentManager_upvr.default:getInviteListSortOrder() or 0
	if var105 == tbl_3_upvr.SORT_BY_FREQUENCY then
		return var13_result1_upvr
	end
	if var105 == tbl_3_upvr.SORT_BY_PRESENCE_AND_FREQUENCY then
		return var13_result1_upvr_2
	end
	return memoize_result1_upvr
end
local GetFFlagInviteListRerank_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank
local Players_upvr = game:GetService("Players")
local httpRequest_upvr = require(Modules.Common.httpRequest)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local InviteUserIdToPlaceIdCustomized_upvr = require(ShareGame.Thunks.InviteUserIdToPlaceIdCustomized)
local InviteUserIdToPlaceId_upvr = require(ShareGame.Thunks.InviteUserIdToPlaceId)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 329
	--[[ Upvalues[7]:
		[1]: memoize_result1_upvr (readonly)
		[2]: GetFFlagInviteListRerank_upvr (readonly)
		[3]: NewInviteMenuExperimentManager_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: var13_result1_upvr (readonly)
		[6]: var13_result1_upvr_2 (readonly)
		[7]: Players_upvr (readonly)
	]]
	local var109 = memoize_result1_upvr
	if GetFFlagInviteListRerank_upvr() then
		local var110 = NewInviteMenuExperimentManager_upvr.default:getInviteListSortOrder() or 0
		if var110 == tbl_3_upvr.SORT_BY_FREQUENCY then
			var109 = var13_result1_upvr
		elseif var110 == tbl_3_upvr.SORT_BY_PRESENCE_AND_FREQUENCY then
			var109 = var13_result1_upvr_2
		else
			var109 = memoize_result1_upvr
		end
	end
	return {
		friends = var109(arg1.Users);
		friendsRetrievalStatus = arg1.Friends.retrievalStatus[tostring(Players_upvr.LocalPlayer.UserId)];
		invites = arg1.Invites;
	}
end, function(arg1) -- Line 341
	--[[ Upvalues[5]:
		[1]: httpRequest_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: GetFFlagEnableNewInviteSendEndpoint_upvr (readonly)
		[4]: InviteUserIdToPlaceIdCustomized_upvr (readonly)
		[5]: InviteUserIdToPlaceId_upvr (readonly)
	]]
	return {
		inviteUser = function(arg1_5, arg2, arg3, arg4, arg5) -- Line 343, Named "inviteUser"
			--[[ Upvalues[6]:
				[1]: httpRequest_upvr (copied, readonly)
				[2]: HttpRbxApiService_upvr (copied, readonly)
				[3]: GetFFlagEnableNewInviteSendEndpoint_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: InviteUserIdToPlaceIdCustomized_upvr (copied, readonly)
				[6]: InviteUserIdToPlaceId_upvr (copied, readonly)
			]]
			local var113_result1 = httpRequest_upvr(HttpRbxApiService_upvr)
			local tostring_result1 = tostring(game.PlaceId)
			if GetFFlagEnableNewInviteSendEndpoint_upvr() then
				return arg1(InviteUserIdToPlaceIdCustomized_upvr(var113_result1, arg1_5, tostring_result1, arg2, arg3, arg4, arg5))
			end
			return arg1(InviteUserIdToPlaceId_upvr(var113_result1, arg1_5, tostring_result1))
		end;
	}
end)(any_extend_result1)