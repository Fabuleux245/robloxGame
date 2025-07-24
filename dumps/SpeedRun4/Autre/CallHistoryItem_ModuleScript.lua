-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:08
-- Luau version 6, Types version 3
-- Time taken: 0.014496 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local CallState_upvr = require(ContactList.Enums.CallState)
local function _(arg1, arg2) -- Line 68, Named "getIsMissedCall"
	--[[ Upvalues[1]:
		[1]: CallState_upvr (readonly)
	]]
	local var6 = false
	if arg1.callerId ~= arg2 then
		if arg1.status == CallState_upvr.Finished then
			var6 = false
		else
			var6 = true
		end
	end
	return var6
end
local function _(arg1, arg2) -- Line 72, Named "getCallStatusText"
	--[[ Upvalues[1]:
		[1]: CallState_upvr (readonly)
	]]
	local var7 = false
	if arg1.callerId ~= arg2 then
		if arg1.status == CallState_upvr.Finished then
			var7 = false
		else
			var7 = true
		end
	end
	if var7 then
		return "Feature.Call.Label.Missed"
	end
	if arg1.callerId == arg2 then
		return "Feature.Call.Label.Outgoing"
	end
	return "Feature.Call.Label.Incoming"
end
local function _(arg1, arg2) -- Line 82, Named "getCallContextImage"
	--[[ Upvalues[1]:
		[1]: CallState_upvr (readonly)
	]]
	local var8 = false
	if arg1.callerId ~= arg2 then
		if arg1.status == CallState_upvr.Finished then
			var8 = false
		else
			var8 = true
		end
	end
	if var8 then
		return "rbxassetid://15239344406"
	end
	if arg1.callerId == arg2 then
		return "rbxassetid://15239341275"
	end
	return "rbxassetid://15239341959"
end
local function getAbsoluteDiffDays_upvr(arg1, arg2, arg3) -- Line 93, Named "getAbsoluteDiffDays"
	local var11
	for i = tonumber(arg2:FormatLocalTime("YYYY", arg3)), tonumber(arg1:FormatLocalTime("YYYY", arg3)) - 1 do
		local var12 = 365
		if i % 4 == 0 and (i % 100 ~= 0 or i % 400 == 0) then
			var12 = 366
		end
		var11 += var12
	end
	var11 = var11 + tonumber(arg1:FormatLocalTime("DDD", arg3)) - tonumber(arg2:FormatLocalTime("DDD", arg3))
	return var11
end
local LocalizationService_upvr = game:GetService("LocalizationService")
local function getTimestampText_upvr(arg1, arg2) -- Line 114, Named "getTimestampText"
	--[[ Upvalues[2]:
		[1]: LocalizationService_upvr (readonly)
		[2]: getAbsoluteDiffDays_upvr (readonly)
	]]
	local DateTime_fromUnixTimestampMillis_result1 = DateTime.fromUnixTimestampMillis(arg1)
	local RobloxLocaleId = LocalizationService_upvr.RobloxLocaleId
	local getAbsoluteDiffDays_result1 = getAbsoluteDiffDays_upvr(DateTime.now(), DateTime_fromUnixTimestampMillis_result1, RobloxLocaleId)
	if getAbsoluteDiffDays_result1 == 0 then
		return DateTime_fromUnixTimestampMillis_result1:FormatLocalTime("LT", RobloxLocaleId)
	end
	if getAbsoluteDiffDays_result1 == 1 then
		return arg2
	end
	if getAbsoluteDiffDays_result1 < 7 then
		return DateTime_fromUnixTimestampMillis_result1:FormatLocalTime("dddd", RobloxLocaleId)
	end
	return DateTime_fromUnixTimestampMillis_result1:FormatLocalTime('L', RobloxLocaleId)
end
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local React_upvr = require(CorePackages.Packages.React)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local random_state_upvr = Random.new()
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local useSelector_upvr = dependencies.Hooks.useSelector
local useStartCallCallback_upvr = require(ContactList.Hooks.useStartCallCallback)
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Pages_upvr = require(ContactList.Enums.Pages)
local OpenOrUpdateCFM_upvr = require(ContactList.Actions.OpenOrUpdateCFM)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local getStandardSizeAvatarHeadShotRbxthumb_upvr = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local Interactable_upvr = UIBlox.Core.Control.Interactable
local vector2_upvr = Vector2.new(24, 12)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 132, Named "CallHistoryItem"
	--[[ Upvalues[23]:
		[1]: UserProfiles_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: CallState_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useDispatch_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: ControlState_upvr (readonly)
		[9]: SoundManager_upvr (readonly)
		[10]: Sounds_upvr (readonly)
		[11]: random_state_upvr (readonly)
		[12]: SoundGroups_upvr (readonly)
		[13]: useSelector_upvr (readonly)
		[14]: useStartCallCallback_upvr (readonly)
		[15]: EventNamesEnum_upvr (readonly)
		[16]: Pages_upvr (readonly)
		[17]: OpenOrUpdateCFM_upvr (readonly)
		[18]: dependencyArray_upvr (readonly)
		[19]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[20]: Interactable_upvr (readonly)
		[21]: vector2_upvr (readonly)
		[22]: ImageSetLabel_upvr (readonly)
		[23]: getTimestampText_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local callRecord = arg1.callRecord
	local localUserId = arg1.localUserId
	local var40
	if #callRecord.participants ~= 2 then
		var40 = false
	else
		var40 = true
	end
	assert(var40, "Expect a local user and single other participant in call.")
	var40 = callRecord.participants[1]
	if var40.userId == localUserId then
		var40 = callRecord.participants[2]
		local userId_upvw = var40.userId
	end
	var40 = ""
	local var42 = ""
	local var43_upvw
	local any_useUserProfilesFetch_result1 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = {tostring(userId_upvw)};
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	if any_useUserProfilesFetch_result1.data then
		var40 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1.data, userId_upvw)
		var42 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1.data, userId_upvw)
		var43_upvw = {
			userId = userId_upvw;
			userName = var42;
			combinedName = var40;
		}
		var42 = UserProfiles_upvr.Formatters.formatUsername(var42)
	end
	local tbl = {}
	local var49 = false
	if callRecord.callerId ~= localUserId then
		if callRecord.status == CallState_upvr.Finished then
			var49 = false
		else
			var49 = true
		end
	end
	if var49 then
	elseif callRecord.callerId == localUserId then
	else
	end
	tbl.callStatusLabel = "Feature.Call.Label.Incoming"
	tbl.yesterdayLabel = "Feature.Call.Label.Yesterday"
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl)
	local var20_result1 = useStyle_upvr()
	local Theme = var20_result1.Theme
	local Font = var20_result1.Font
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("BackgroundDefault")
	local var19_result1_upvr = useAnalytics_upvr()
	local var21_result1_upvr = useDispatch_upvr()
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 211
		--[[ Upvalues[8]:
			[1]: var19_result1_upvr (readonly)
			[2]: EventNamesEnum_upvr (copied, readonly)
			[3]: userId_upvw (read and write)
			[4]: arg1 (readonly)
			[5]: Pages_upvr (copied, readonly)
			[6]: var21_result1_upvr (readonly)
			[7]: OpenOrUpdateCFM_upvr (copied, readonly)
			[8]: var43_upvw (read and write)
		]]
		var19_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuOpened, {
			eventTimestampMs = os.time() * 1000;
			friendUserId = userId_upvw;
			searchQueryString = nil;
			itemListIndex = arg1.layoutOrder;
			isSuggestedUser = false;
			page = Pages_upvr.CallHistory;
		})
		var21_result1_upvr(OpenOrUpdateCFM_upvr(var43_upvw))
	end, dependencyArray_upvr(userId_upvw, arg1.layoutOrder))
	if callRecord.callerId ~= localUserId then
		if callRecord.status == CallState_upvr.Finished then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local module = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, vector2_upvr.X);
			PaddingTop = UDim.new(0, vector2_upvr.Y);
		});
		ProfileImage = React_upvr.createElement("ImageButton", {
			Size = UDim2.fromOffset(68, 68);
			Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(userId_upvw));
			[React_upvr.Event.MouseButton2Up] = any_useCallback_result1;
			[React_upvr.Event.TouchTap] = any_useCallback_result1;
			AutoButtonColor = false;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
		});
	}
	local tbl_5 = {}
	local tbl_2 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, 4);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_7 = {
		Size = UDim2.new(1, 0, 0, 20);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = Font.Header2.Font;
		LayoutOrder = 1;
		Text = var40;
	}
	if true then
		-- KONSTANTWARNING: GOTO [502] #357
	end
	tbl_7.TextColor3 = Theme.TextEmphasis.Color
	local var79 = Font.BaseSize * Font.Header2.RelativeSize
	tbl_7.TextSize = var79
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		var79 = Theme.Alert.Transparency
	else
		var79 = Theme.TextEmphasis.Transparency
	end
	tbl_7.TextTransparency = var79
	tbl_7.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_7.TextXAlignment = Enum.TextXAlignment.Left
	tbl_2.DisplayName = React_upvr.createElement("TextLabel", tbl_7)
	tbl_2.Username = React_upvr.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = Font.CaptionBody.Font;
		LayoutOrder = 2;
		Text = var42;
		TextColor3 = Theme.TextDefault.Color;
		TextSize = Font.BaseSize * Font.CaptionBody.RelativeSize;
		TextTransparency = Theme.TextDefault.Transparency;
		TextTruncate = Enum.TextTruncate.AtEnd;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	tbl_5.NameContent = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = 1;
	}, tbl_2)
	local tbl_4 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 4);
		});
	}
	local tbl_3 = {
		Size = UDim2.fromOffset(16, 16);
		BackgroundTransparency = 1;
		ImageColor3 = Theme.TextDefault.Color;
		ImageTransparency = Theme.TextDefault.Transparency;
	}
	if callRecord.callerId ~= localUserId then
		if callRecord.status == CallState_upvr.Finished then
		else
		end
	end
	if true then
		-- KONSTANTWARNING: GOTO [710] #491
	end
	if callRecord.callerId == localUserId then
	else
	end
	tbl_3.Image = "rbxassetid://15239341959"
	tbl_4.CallContextImage = React_upvr.createElement(ImageSetLabel_upvr, tbl_3)
	tbl_4.DetailsText = React_upvr.createElement("TextLabel", {
		Size = UDim2.fromOffset(0, 14);
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = Font.CaptionBody.Font;
		Text = useLocalization_upvr_result1.callStatusLabel.." • "..getTimestampText_upvr(callRecord.endUtc, useLocalization_upvr_result1.yesterdayLabel);
		TextColor3 = Theme.TextDefault.Color;
		TextSize = Font.BaseSize * Font.CaptionBody.RelativeSize;
		TextTransparency = Theme.TextDefault.Transparency;
		TextTruncate = Enum.TextTruncate.AtEnd;
		TextYAlignment = Enum.TextYAlignment.Center;
	})
	tbl_5.Details = React_upvr.createElement("Frame", {
		Position = UDim2.new(0, 0, 1, -16);
		Size = UDim2.new(1, 0, 0, 16);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = 2;
	}, tbl_4)
	module.Content = React_upvr.createElement("Frame", {
		Position = UDim2.new(0, 80, 0, 0);
		Size = UDim2.new(1, -(104 + vector2_upvr.X), 1, -vector2_upvr.Y);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, tbl_5)
	module.CallIcon = React_upvr.createElement(ImageSetLabel_upvr, {
		Position = UDim2.new(1, -vector2_upvr.X - 4, 0.5, -vector2_upvr.Y / 2);
		Size = UDim2.fromOffset(24, 24);
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundTransparency = 1;
		Image = "rbxassetid://15239343417";
		ImageColor3 = Theme.ContextualPrimaryDefault.Color;
		ImageTransparency = Theme.ContextualPrimaryDefault.Transparency;
	})
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_6.BorderSizePixel = 0
		tbl_6.BackgroundTransparency = Theme.Divider.Transparency
		tbl_6.BackgroundColor3 = Theme.Divider.Color
		tbl_6.Size = UDim2.new(1, 0, 0, 1)
		tbl_6.Position = UDim2.new(0, 0, 1, -1)
		local tbl_6 = {}
		return React_upvr.createElement("Frame", tbl_6)
	end
	if not arg1.showDivider or not INLINED() then
	end
	module.Divider = nil
	return React_upvr.createElement(Interactable_upvr, {
		Position = UDim2.fromOffset(0, 0);
		Size = UDim2.new(1, 0, 0, 68 + vector2_upvr.Y * 2);
		BackgroundColor3 = Theme[any_useState_result1].Color;
		BackgroundTransparency = Theme[any_useState_result1].Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.layoutOrder;
		onStateChanged = React_upvr.useCallback(function(arg1_2, arg2) -- Line 179
			--[[ Upvalues[6]:
				[1]: ControlState_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: SoundManager_upvr (copied, readonly)
				[4]: Sounds_upvr (copied, readonly)
				[5]: random_state_upvr (copied, readonly)
				[6]: SoundGroups_upvr (copied, readonly)
			]]
			if arg2 == ControlState_upvr.Pressed then
				any_useState_result2_upvr("BackgroundOnPress")
			else
				if arg2 == ControlState_upvr.Hover then
					any_useState_result2_upvr("BackgroundOnHover")
					SoundManager_upvr:PlaySound(Sounds_upvr.Hover.Name, {
						Volume = 0.5 + random_state_upvr:NextNumber(-0.25, 0.25);
						PlaybackSpeed = 1 + random_state_upvr:NextNumber(-0.5, 0.5);
					}, SoundGroups_upvr.Iris)
					return
				end
				any_useState_result2_upvr("BackgroundDefault")
			end
		end, {});
		AutoButtonColor = false;
		[React_upvr.Event.Activated] = useStartCallCallback_upvr(useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 193
			return arg1_3.Navigation.currentTag
		end, {})), userId_upvw, var40, arg1.dismissCallback, {
			searchQueryString = "";
			itemListIndex = arg1.layoutOrder;
			isSuggestedUser = false;
			page = useSelector_upvr(React_upvr.useCallback(function(arg1_4) -- Line 198
				return arg1_4.Navigation.currentPage
			end, {}));
		});
	}, module)
end