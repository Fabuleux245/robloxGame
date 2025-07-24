-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:13
-- Luau version 6, Types version 3
-- Time taken: 0.007881 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(CorePackages.Packages.React)
local GetPresencesFromUserIds_upvr = dependencies.NetworkingPresence.GetPresencesFromUserIds
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useSelector_upvr = dependencies.Hooks.useSelector
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local random_state_upvr = Random.new()
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local getStandardSizeAvatarHeadShotRbxthumb_upvr = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local useStartCallCallback_upvr = require(ContactList.Hooks.useStartCallCallback)
local Images_upvr = UIBlox.App.ImageSet.Images
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local PlayerContext_upvr = UIBlox.App.Indicator.PlayerContext
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Pages_upvr = require(ContactList.Enums.Pages)
local OpenOrUpdateCFM_upvr = require(ContactList.Actions.OpenOrUpdateCFM)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local vector2_upvr = Vector2.new(24, 12)
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 62, Named "FriendListItem"
	--[[ Upvalues[25]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: GetPresencesFromUserIds_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: ControlState_upvr (readonly)
		[10]: SoundManager_upvr (readonly)
		[11]: Sounds_upvr (readonly)
		[12]: random_state_upvr (readonly)
		[13]: SoundGroups_upvr (readonly)
		[14]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[15]: useStartCallCallback_upvr (readonly)
		[16]: Images_upvr (readonly)
		[17]: PresenceType_upvr (readonly)
		[18]: PlayerContext_upvr (readonly)
		[19]: EventNamesEnum_upvr (readonly)
		[20]: Pages_upvr (readonly)
		[21]: OpenOrUpdateCFM_upvr (readonly)
		[22]: Interactable_upvr (readonly)
		[23]: vector2_upvr (readonly)
		[24]: UserProfiles_upvr (readonly)
		[25]: ImageSetLabel_upvr (readonly)
	]]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local Theme_upvr = useStyle_upvr_result1_upvr.Theme
	local Font = useStyle_upvr_result1_upvr.Font
	local var7_result1_upvr = useDispatch_upvr()
	local tbl_upvr = {
		userId = arg1.userId;
		userName = arg1.userName;
		combinedName = arg1.combinedName;
	}
	local var8_result1_upvr = useLocalization_upvr({
		offlineStatusLabel = "InGame.Presence.Label.Offline";
		onlineStatusLabel = "InGame.Presence.Label.Online";
		studioStatusLabel = "InGame.Presence.Label.RobloxStudio";
	})
	React_upvr.useEffect(function() -- Line 82
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: GetPresencesFromUserIds_upvr (copied, readonly)
		]]
		if arg1.userPresenceType == nil then
			var7_result1_upvr(GetPresencesFromUserIds_upvr.API({arg1.userId}))
		end
	end, dependencyArray_upvr(arg1.userId, arg1.userPresenceType))
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_2) -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2.Presence.byUserId[tostring(arg1.userId)]
	end, {arg1.userId}))
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("BackgroundDefault")
	local var19_result1_upvr = useStartCallCallback_upvr(useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 93
		return arg1_3.Navigation.currentTag
	end, {})), arg1.userId, arg1.combinedName, arg1.dismissCallback, {
		searchQueryString = arg1.searchQueryString;
		itemListIndex = arg1.itemListIndex;
		isSuggestedUser = arg1.isSuggestedUser;
		page = useSelector_upvr(React_upvr.useCallback(function(arg1_4) -- Line 98
			return arg1_4.Navigation.currentPage
		end, {}));
	})
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 185
		--[[ Upvalues[7]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNamesEnum_upvr (copied, readonly)
			[3]: tbl_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: Pages_upvr (copied, readonly)
			[6]: var7_result1_upvr (readonly)
			[7]: OpenOrUpdateCFM_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuOpened, {
			eventTimestampMs = os.time() * 1000;
			friendUserId = tbl_upvr.userId;
			searchQueryString = arg1.searchQueryString;
			itemListIndex = arg1.itemListIndex;
			isSuggestedUser = arg1.isSuggestedUser;
			page = Pages_upvr.FriendList;
		})
		var7_result1_upvr(OpenOrUpdateCFM_upvr(tbl_upvr))
	end, dependencyArray_upvr(tbl_upvr.userId, arg1.searchQueryString, arg1.itemListIndex, arg1.isSuggestedUser))
	local module = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, vector2_upvr.X);
			PaddingTop = UDim.new(0, vector2_upvr.Y);
		});
		ProfileImage = React_upvr.createElement("ImageButton", {
			Size = UDim2.fromOffset(68, 68);
			Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(arg1.userId));
			[React_upvr.Event.MouseButton2Up] = any_useCallback_result1;
			[React_upvr.Event.TouchTap] = any_useCallback_result1;
			AutoButtonColor = false;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
		});
		Content = React_upvr.createElement("Frame", {
			Position = UDim2.new(0, 80, 0, 0);
			Size = UDim2.new(1, -(116 + vector2_upvr.X), 1, -vector2_upvr.Y);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			NameContent = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				LayoutOrder = 1;
			}, {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					Padding = UDim.new(0, 4);
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 6);
				});
				CombinedName = React_upvr.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 20);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = Font.Header2.Font;
					LayoutOrder = 1;
					Text = arg1.combinedName;
					TextColor3 = Theme_upvr.TextEmphasis.Color;
					TextSize = Font.BaseSize * Font.Header2.RelativeSize;
					TextTransparency = Theme_upvr.TextEmphasis.Transparency;
					TextTruncate = Enum.TextTruncate.AtEnd;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
				Username = React_upvr.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 14);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = Font.CaptionBody.Font;
					LayoutOrder = 2;
					Text = UserProfiles_upvr.Formatters.formatUsername(arg1.userName);
					TextColor3 = Theme_upvr.TextDefault.Color;
					TextSize = Font.BaseSize * Font.CaptionBody.RelativeSize;
					TextTransparency = Theme_upvr.TextDefault.Transparency;
					TextTruncate = Enum.TextTruncate.AtEnd;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
			});
			PlayerContext = React_upvr.useMemo(function() -- Line 128
				--[[ Upvalues[10]:
					[1]: Images_upvr (copied, readonly)
					[2]: useStyle_upvr_result1_upvr (readonly)
					[3]: var8_result1_upvr (readonly)
					[4]: useSelector_upvr_result1_upvr (readonly)
					[5]: arg1 (readonly)
					[6]: PresenceType_upvr (copied, readonly)
					[7]: Theme_upvr (readonly)
					[8]: React_upvr (copied, readonly)
					[9]: PlayerContext_upvr (copied, readonly)
					[10]: var19_result1_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
				local var51
				if useSelector_upvr_result1_upvr then
					var51 = useSelector_upvr_result1_upvr.userPresenceType
					-- KONSTANTWARNING: GOTO [54] #39
				end
				-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [37] 26. Error Block 28 start (CF ANALYSIS FAILED)
				if arg1.userPresenceType then
					var51 = PresenceType_upvr[arg1.userPresenceType]
				else
					var51 = PresenceType_upvr.Offline
				end
				if var51 == PresenceType_upvr.Online then
					local const_number = 12
				elseif var51 == PresenceType_upvr.InGame then
				elseif var51 == PresenceType_upvr.InStudio then
				end
				local module_2 = {
					fontStyle = useStyle_upvr_result1_upvr.Font.CaptionBody;
					icon = Images_upvr["icons/logo/studiologo_small"];
					iconColor = useStyle_upvr_result1_upvr.Theme.TextDefault.Color;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_2.iconSize = UDim2.fromOffset(16, 16)
				module_2.iconTransparency = useStyle_upvr_result1_upvr.Theme.TextDefault.Transparency
				module_2.layoutOrder = 2
				module_2.onActivated = var19_result1_upvr
				module_2.text = var8_result1_upvr.studioStatusLabel
				module_2.textColorStyle = useStyle_upvr_result1_upvr.Theme.TextMuted
				module_2.textHeight = 24
				do
					return React_upvr.createElement(PlayerContext_upvr, module_2)
				end
				-- KONSTANTERROR: [37] 26. Error Block 28 end (CF ANALYSIS FAILED)
			end, {useSelector_upvr_result1_upvr, useStyle_upvr_result1_upvr, var8_result1_upvr.offlineStatusLabel, var8_result1_upvr.onlineStatusLabel, var8_result1_upvr.studioStatusLabel});
		});
		CallIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			Position = UDim2.new(1, -vector2_upvr.X - 4, 0.5, -vector2_upvr.Y / 2);
			Size = UDim2.fromOffset(24, 24);
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundTransparency = 1;
			Image = "rbxassetid://15239343417";
			ImageColor3 = Theme_upvr.ContextualPrimaryDefault.Color;
			ImageTransparency = Theme_upvr.ContextualPrimaryDefault.Transparency;
		});
	}
	local var75
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var75 = var75("Frame", tbl)
		tbl.BorderSizePixel = 0
		tbl.BackgroundTransparency = Theme_upvr.Divider.Transparency
		tbl.BackgroundColor3 = Theme_upvr.Divider.Color
		tbl.Size = UDim2.new(1, 0, 0, 1)
		tbl.Position = UDim2.new(0, 0, 1, -1)
		local tbl = {}
		var75 = React_upvr.createElement
		return var75
	end
	if not arg1.showDivider or not INLINED() then
		var75 = nil
	end
	module.Divider = var75
	return React_upvr.createElement(Interactable_upvr, {
		Position = UDim2.fromOffset(0, 0);
		Size = UDim2.new(1, 0, 0, 68 + vector2_upvr.Y * 2);
		BackgroundColor3 = Theme_upvr[any_useState_result1].Color;
		BackgroundTransparency = Theme_upvr[any_useState_result1].Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.layoutOrder;
		onStateChanged = React_upvr.useCallback(function(arg1_5, arg2) -- Line 104
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
		[React_upvr.Event.Activated] = var19_result1_upvr;
	}, module)
end