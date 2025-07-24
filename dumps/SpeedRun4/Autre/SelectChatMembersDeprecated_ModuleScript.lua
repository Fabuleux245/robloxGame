-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:15
-- Luau version 6, Types version 3
-- Time taken: 0.007679 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local List_upvr = require(Parent.Cryo).List
local UIBlox = require(Parent.UIBlox)
local UserProfiles_upvr = require(Parent.UserProfiles)
local LuauPolyfill = require(Parent.LuauPolyfill)
local FFlagAppChatSelectChatMembersSearchSpacing_upvr = require(AppChat.Flags.FFlagAppChatSelectChatMembersSearchSpacing)
local Flags_upvr = AppChat.Flags
local function _(arg1, arg2) -- Line 38, Named "isUserSelected"
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	local var11
	if List_upvr.findWhere(arg1, function(arg1_2) -- Line 39
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var10
		if arg1_2.id ~= arg2 then
			var10 = false
		else
			var10 = true
		end
		return var10
	end) == nil then
		var11 = false
	else
		var11 = true
	end
	return var11
end
if FFlagAppChatSelectChatMembersSearchSpacing_upvr then
	Flags_upvr = 63
else
	Flags_upvr = 88
end
if FFlagAppChatSelectChatMembersSearchSpacing_upvr then
else
end
if FFlagAppChatSelectChatMembersSearchSpacing_upvr then
else
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local FFlagFixConversationListLargeText_upvr = require(Flags_upvr.FFlagFixConversationListLargeText)
local useTextSizeOffset_upvr = require(Parent.UIBlox).Core.Style.useTextSizeOffset
local createNextOrder_upvr = require(Parent.ReactUtils).createNextOrder
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local setTimeout_upvr = LuauPolyfill.setTimeout
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatSelectChatMembersDebounceTime", 250)
local useUserProfilesFetch_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
local NetworkingFriends_upvr = require(AppChat.Http.NetworkingFriends)
local Cryo_upvr = require(Parent.Cryo)
local isUserInConversation_upvr = require(script.Parent.Utils.isUserInConversation)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local UIListLayout_upvr = require(AppChat.Components.Common.UIListLayout)
local AvatarCircle_upvr = require(AppChat.Components.Cells.AvatarCircle)
local UserCellWithCheckboxDeprecated_upvr = require(script.Parent.UserCellWithCheckboxDeprecated)
local const_number_upvr = 0
local const_number_upvr_2 = 60
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local Frame_upvr = require(AppChat.Components.Common.Frame)
local SelectedMembersBarDeprecated_upvr = require(script.Parent.SelectedMembersBarDeprecated)
local TextField_upvr = UIBlox.App.Input.TextField
local Images_upvr = UIBlox.App.ImageSet.Images
local PaginatedChatMembersDeprecated_upvr = require(script.Parent.PaginatedChatMembersDeprecated)
return function(arg1) -- Line 79, Named "SelectChatMembers"
	--[[ Upvalues[31]:
		[1]: useLocalization_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: FFlagFixConversationListLargeText_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: createNextOrder_upvr (readonly)
		[6]: useDispatch_upvr (readonly)
		[7]: useLocalUserId_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: setTimeout_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr (readonly)
		[11]: useUserProfilesFetch_upvr (readonly)
		[12]: UserProfiles_upvr (readonly)
		[13]: NetworkingFriends_upvr (readonly)
		[14]: List_upvr (readonly)
		[15]: Cryo_upvr (readonly)
		[16]: isUserInConversation_upvr (readonly)
		[17]: dependencyArray_upvr (readonly)
		[18]: clearTimeout_upvr (readonly)
		[19]: UIListLayout_upvr (readonly)
		[20]: AvatarCircle_upvr (readonly)
		[21]: UserCellWithCheckboxDeprecated_upvr (readonly)
		[22]: Flags_upvr (readonly)
		[23]: const_number_upvr (readonly)
		[24]: FFlagAppChatSelectChatMembersSearchSpacing_upvr (readonly)
		[25]: const_number_upvr_2 (readonly)
		[26]: UserModel_upvr (readonly)
		[27]: Frame_upvr (readonly)
		[28]: SelectedMembersBarDeprecated_upvr (readonly)
		[29]: TextField_upvr (readonly)
		[30]: Images_upvr (readonly)
		[31]: PaginatedChatMembersDeprecated_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
	local var40 = "Feature.Friends.Label.Suggested"
	;({}).suggested = var40
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	if FFlagFixConversationListLargeText_upvr then
		var40 = useTextSizeOffset_upvr()
	else
		var40 = nil
	end
	if FFlagFixConversationListLargeText_upvr then
		-- KONSTANTWARNING: GOTO [22] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 21. Error Block 69 start (CF ANALYSIS FAILED)
	local var42_upvr = 48
	local Theme_upvr = useStyle_upvr_result1_upvr.Theme
	local Font_upvr = useStyle_upvr_result1_upvr.Font
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({})
	local _ = {
		userIds = any_useState_result1;
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	}
	local any_useRef_result1_upvr_2 = React_upvr.useRef(setTimeout_upvr(function() -- Line 95
	end, game_DefineFastInt_result1_upvr))
	local any_useRef_result1_upvr = React_upvr.useRef("")
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 104
		--[[ Upvalues[8]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: NetworkingFriends_upvr (copied, readonly)
			[3]: useLocalUserId_upvr_result1_upvr (readonly)
			[4]: List_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: isUserInConversation_upvr (copied, readonly)
		]]
		local tbl_5 = {}
		tbl_5.query = arg1_3
		tbl_5.limit = 20
		useDispatch_upvr_result1_upvr(NetworkingFriends_upvr.SearchFriendsByQuery.API(useLocalUserId_upvr_result1_upvr, tbl_5)):andThen(function(arg1_4) -- Line 109
			--[[ Upvalues[5]:
				[1]: List_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: isUserInConversation_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(Cryo_upvr.List.filter(List_upvr.map(arg1_4.responseBody.PageItems, function(arg1_5) -- Line 110
				return tostring(arg1_5.id)
			end), function(arg1_6) -- Line 113
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: isUserInConversation_upvr (copied, readonly)
				]]
				local conversation = arg1.conversation
				if not conversation then
					conversation = {}
					conversation.participants = {}
				end
				return not isUserInConversation_upvr(arg1_6, conversation)
			end))
		end):catch(function(arg1_7) -- Line 120
			print("error", arg1_7)
		end)
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr, useLocalUserId_upvr_result1_upvr, arg1.conversation))
	local function _(arg1_8) -- Line 125
		--[[ Upvalues[7]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: setTimeout_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		clearTimeout_upvr(any_useRef_result1_upvr_2.current)
		any_useRef_result1_upvr.current = arg1_8
		any_useRef_result1_upvr_2.current = setTimeout_upvr(function() -- Line 128
			--[[ Upvalues[3]:
				[1]: arg1_8 (readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1_8 ~= "" then
				any_useCallback_result1_upvr(arg1_8)
			else
				any_useState_result2_upvr({})
			end
		end, game_DefineFastInt_result1_upvr)
	end
	local function _(arg1_9) -- Line 137
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: UIListLayout_upvr (copied, readonly)
			[3]: AvatarCircle_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Theme_upvr (readonly)
			[6]: Font_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			layout = React_upvr.createElement(UIListLayout_upvr, {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			avatarCircle = React_upvr.createElement(AvatarCircle_upvr, {
				thumbnails = {arg1_9.thumbnail};
				onActivated = function() -- Line 149, Named "onActivated"
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_9 (readonly)
					]]
					arg1.onEntryActivated(arg1_9)
				end;
				circleColor3 = Theme_upvr.BackgroundDefault.Color;
				circleInteriorBackgroundColor3 = Theme_upvr.PlaceHolder.Color;
				circleInteriorBackgroundTransparency = Theme_upvr.PlaceHolder.Transparency;
				presenceImage = arg1_9.presenceImage or "";
				showNewPresenceImage = true;
				presenceImageColor3 = Theme_upvr.OnlineStatus.Color;
				presenceImageTransparency = Theme_upvr.OnlineStatus.Transparency;
			});
			displayName = React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 15);
				TextSize = Font_upvr.Footer.RelativeSize * Font_upvr.BaseSize;
				TextColor3 = Theme_upvr.TextEmphasis.Color;
				TextTransparency = Theme_upvr.TextEmphasis.Transparency;
				Font = Font_upvr.Footer.Font;
				Text = arg1_9.displayName;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextTruncate = Enum.TextTruncate.AtEnd;
			});
		})
	end
	local function _(arg1_10) -- Line 174
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var42_upvr (readonly)
			[4]: UserCellWithCheckboxDeprecated_upvr (copied, readonly)
			[5]: useStyle_upvr_result1_upvr (readonly)
			[6]: List_upvr (copied, readonly)
		]]
		local item_2 = arg1_10.item
		local module = {}
		local isDebugEnabled = arg1.isDebugEnabled
		if isDebugEnabled then
			isDebugEnabled = React_upvr.createElement
			isDebugEnabled = isDebugEnabled("StringValue", {
				Value = item_2.id;
			})
		end
		module.userIdValue = isDebugEnabled
		local tbl_3 = {}
		local tbl = {
			style = useStyle_upvr_result1_upvr;
			user = item_2;
		}
		local var78 = '@'..(item_2.username or "")
		tbl.subTitleText = var78
		local id_upvr = item_2.id
		if List_upvr.findWhere(arg1.selectedUsers, function(arg1_11) -- Line 39
			--[[ Upvalues[1]:
				[1]: id_upvr (readonly)
			]]
			local var81
			if arg1_11.id ~= id_upvr then
				var81 = false
			else
				var81 = true
			end
			return var81
		end) == nil then
			var78 = false
		else
			var78 = true
		end
		tbl.isCheckboxActivated = var78
		tbl.onActivated = arg1.onEntryActivated
		tbl_3.cellContent = React_upvr.createElement(UserCellWithCheckboxDeprecated_upvr, tbl)
		module.userCell = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var42_upvr);
			BackgroundTransparency = 1;
		}, tbl_3)
		return React_upvr.createElement("Folder", nil, module)
	end
	local function _(arg1_12) -- Line 197
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var42_upvr (readonly)
			[4]: UserCellWithCheckboxDeprecated_upvr (copied, readonly)
			[5]: useStyle_upvr_result1_upvr (readonly)
			[6]: List_upvr (copied, readonly)
		]]
		local item = arg1_12.item
		local module_2 = {}
		local isDebugEnabled_2 = arg1.isDebugEnabled
		if isDebugEnabled_2 then
			isDebugEnabled_2 = React_upvr.createElement
			isDebugEnabled_2 = isDebugEnabled_2("StringValue", {
				Value = item.id;
			})
		end
		module_2.userIdValue = isDebugEnabled_2
		local tbl_4 = {}
		local tbl_2 = {
			style = useStyle_upvr_result1_upvr;
			user = item;
			secondaryTitleText = item.alias;
		}
		local presenceText = item.presenceText
		tbl_2.subTitleText = presenceText
		local id_upvr_2 = item.id
		if List_upvr.findWhere(arg1.selectedUsers, function(arg1_13) -- Line 39
			--[[ Upvalues[1]:
				[1]: id_upvr_2 (readonly)
			]]
			local var93
			if arg1_13.id ~= id_upvr_2 then
				var93 = false
			else
				var93 = true
			end
			return var93
		end) == nil then
			presenceText = false
		else
			presenceText = true
		end
		tbl_2.isCheckboxActivated = presenceText
		tbl_2.onActivated = arg1.onEntryActivated
		tbl_4.cellContent = React_upvr.createElement(UserCellWithCheckboxDeprecated_upvr, tbl_2)
		module_2.userCell = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var42_upvr);
			BackgroundTransparency = 1;
		}, tbl_4)
		return React_upvr.createElement("Folder", nil, module_2)
	end
	local _ = {arg1.selectedUsers, arg1.onEntryActivated, arg1.isDebugEnabled, useStyle_upvr_result1_upvr, var40}
	if arg1.shouldShowSelectChatMembersBar then
		-- KONSTANTWARNING: GOTO [161] #135
	end
	-- KONSTANTERROR: [21] 21. Error Block 69 end (CF ANALYSIS FAILED)
end