-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:14
-- Luau version 6, Types version 3
-- Time taken: 0.004837 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local LocalPlayer = game:GetService("Players").LocalPlayer
local var8_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var8_upvr = LocalPlayer.UserId
	return var8_upvr
end
if not LocalPlayer or not INLINED() then
	var8_upvr = 0
end
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useSelector_upvr = dependencies.Hooks.useSelector
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(CorePackages.Packages.React)
local FriendAction_upvr = require(ContactList.Enums.FriendAction)
local BlockPlayer_upvr = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local UpdateLastFriend_upvr = require(ContactList.Actions.UpdateLastFriend)
local UnfriendTargetUserId_upvr = dependencies.NetworkingFriends.UnfriendTargetUserId
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local ConfigureFriendMenu_upvr = require(ContactList.Components.ContactListCommon.ConfigureFriendMenu)
local withStyle_upvr = UIBlox.Style.withStyle
local Roact_upvr = require(CorePackages.Packages.Roact)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local CloseCFM_upvr = require(ContactList.Actions.CloseCFM)
return function() -- Line 43, Named "PlayerMenuContainer"
	--[[ Upvalues[19]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: FriendAction_upvr (readonly)
		[8]: BlockPlayer_upvr (readonly)
		[9]: UpdateLastFriend_upvr (readonly)
		[10]: UnfriendTargetUserId_upvr (readonly)
		[11]: var8_upvr (readonly)
		[12]: EventNamesEnum_upvr (readonly)
		[13]: ConfigureFriendMenu_upvr (readonly)
		[14]: withStyle_upvr (readonly)
		[15]: Roact_upvr (readonly)
		[16]: InteractiveAlert_upvr (readonly)
		[17]: ButtonType_upvr (readonly)
		[18]: CloseCFM_upvr (readonly)
		[19]: CoreGui_upvr (readonly)
	]]
	local Theme = useStyle_upvr().Theme
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1) -- Line 54
		return arg1.PlayerMenu.friend
	end)
	local var13_result1_upvr = useLocalization_upvr({
		blockTitle = {
			combinedName = useSelector_upvr_result1_upvr.combinedName;
			"Feature.Call.Label.Block"
		};
		blockAction = "Feature.Friends.Action.Block";
		unfriendTitle = {
			combinedName = useSelector_upvr_result1_upvr.combinedName;
			"Feature.Call.Label.Unfriend"
		};
		unfriendAction = "Feature.Friends.Action.Unfriend";
		cancelAction = "Feature.Friends.Label.Cancel";
		confirmationDescription = {
			DISPLAY_NAME = useSelector_upvr_result1_upvr.combinedName;
			RBX_NAME = useSelector_upvr_result1_upvr.userName;
			"Feature.SettingsHub.Message.BlockConfirmation"
		};
	})
	local any_useState_result1_upvr_4, any_useState_result2_upvr = React_upvr.useState(FriendAction_upvr.NoAction)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_4 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState("")
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState("")
	local var9_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 102
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr_4 (readonly)
			[2]: FriendAction_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: var13_result1_upvr (readonly)
			[5]: any_useState_result2_upvr_3 (readonly)
		]]
		if any_useState_result1_upvr_4 == FriendAction_upvr.Block then
			any_useState_result2_upvr_2(var13_result1_upvr.blockTitle)
			any_useState_result2_upvr_3(var13_result1_upvr.blockAction)
		elseif any_useState_result1_upvr_4 == FriendAction_upvr.Unfriend then
			any_useState_result2_upvr_2(var13_result1_upvr.unfriendTitle)
			any_useState_result2_upvr_3(var13_result1_upvr.unfriendAction)
		end
	end, {any_useState_result1_upvr_4, useSelector_upvr_result1_upvr.combinedName, var13_result1_upvr.blockAction, var13_result1_upvr.blockTitle, var13_result1_upvr.unfriendAction, var13_result1_upvr.unfriendTitle})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1) -- Line 119
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1)
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 72
		--[[ Upvalues[10]:
			[1]: any_useState_result1_upvr_4 (readonly)
			[2]: FriendAction_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: BlockPlayer_upvr (copied, readonly)
			[5]: useSelector_upvr_result1_upvr (readonly)
			[6]: UpdateLastFriend_upvr (copied, readonly)
			[7]: UnfriendTargetUserId_upvr (copied, readonly)
			[8]: var8_upvr (copied, readonly)
			[9]: var9_result1_upvr (readonly)
			[10]: EventNamesEnum_upvr (copied, readonly)
		]]
		if any_useState_result1_upvr_4 == FriendAction_upvr.Block then
			useDispatch_upvr_result1_upvr(BlockPlayer_upvr({
				UserId = useSelector_upvr_result1_upvr.userId;
			}))
			useDispatch_upvr_result1_upvr(UpdateLastFriend_upvr(useSelector_upvr_result1_upvr.userId))
		elseif any_useState_result1_upvr_4 == FriendAction_upvr.Unfriend then
			useDispatch_upvr_result1_upvr(UnfriendTargetUserId_upvr.API({
				currentUserId = var8_upvr;
				targetUserId = useSelector_upvr_result1_upvr.userId;
			})):andThen(function(arg1) -- Line 84
				--[[ Upvalues[5]:
					[1]: var9_result1_upvr (copied, readonly)
					[2]: EventNamesEnum_upvr (copied, readonly)
					[3]: useSelector_upvr_result1_upvr (copied, readonly)
					[4]: useDispatch_upvr_result1_upvr (copied, readonly)
					[5]: UpdateLastFriend_upvr (copied, readonly)
				]]
				var9_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuUnfriendFinished, {
					eventTimestampMs = os.time() * 1000;
					friendUserId = useSelector_upvr_result1_upvr.userId;
					success = true;
				})
				useDispatch_upvr_result1_upvr(UpdateLastFriend_upvr(useSelector_upvr_result1_upvr.userId))
			end):catch(function(arg1) -- Line 92
				--[[ Upvalues[3]:
					[1]: var9_result1_upvr (copied, readonly)
					[2]: EventNamesEnum_upvr (copied, readonly)
					[3]: useSelector_upvr_result1_upvr (copied, readonly)
				]]
				var9_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuUnfriendFinished, {
					eventTimestampMs = os.time() * 1000;
					friendUserId = useSelector_upvr_result1_upvr.userId;
					success = false;
				})
			end)
		end
	end, {any_useState_result1_upvr_4, useSelector_upvr_result1_upvr.userId})
	local module = {}
	local tbl_5 = {}
	local any_createElement_result1 = React_upvr.createElement("TextButton", {
		AutoButtonColor = false;
		BackgroundColor3 = Theme.Overlay.Color;
		BackgroundTransparency = Theme.Overlay.Transparency;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		Text = "";
		[React_upvr.Event.Activated] = function() -- Line 191
			--[[ Upvalues[4]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: CloseCFM_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (readonly)
				[4]: FriendAction_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(CloseCFM_upvr())
			any_useState_result2_upvr(FriendAction_upvr.NoAction)
		end;
	})
	tbl_5.Overlay = any_createElement_result1
	if any_useState_result1_upvr_4 == FriendAction_upvr.NoAction then
		any_createElement_result1 = React_upvr.useMemo(function() -- Line 123
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: ConfigureFriendMenu_upvr (copied, readonly)
				[3]: any_useCallback_result1_upvr_2 (readonly)
			]]
			return React_upvr.createElement(ConfigureFriendMenu_upvr, {
				initiateConfirmation = any_useCallback_result1_upvr_2;
			})
		end, {})
	else
		any_createElement_result1 = React_upvr.useMemo(function() -- Line 129
			--[[ Upvalues[13]:
				[1]: withStyle_upvr (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: InteractiveAlert_upvr (copied, readonly)
				[4]: any_useState_result1_upvr_3 (readonly)
				[5]: var13_result1_upvr (readonly)
				[6]: ButtonType_upvr (copied, readonly)
				[7]: useDispatch_upvr_result1_upvr (readonly)
				[8]: CloseCFM_upvr (copied, readonly)
				[9]: any_useState_result2_upvr (readonly)
				[10]: FriendAction_upvr (copied, readonly)
				[11]: any_useState_result1_upvr (readonly)
				[12]: any_useCallback_result1_upvr (readonly)
				[13]: any_useState_result1_upvr_2 (readonly)
			]]
			return withStyle_upvr(function(arg1) -- Line 130
				--[[ Upvalues[12]:
					[1]: Roact_upvr (copied, readonly)
					[2]: InteractiveAlert_upvr (copied, readonly)
					[3]: any_useState_result1_upvr_3 (copied, readonly)
					[4]: var13_result1_upvr (copied, readonly)
					[5]: ButtonType_upvr (copied, readonly)
					[6]: useDispatch_upvr_result1_upvr (copied, readonly)
					[7]: CloseCFM_upvr (copied, readonly)
					[8]: any_useState_result2_upvr (copied, readonly)
					[9]: FriendAction_upvr (copied, readonly)
					[10]: any_useState_result1_upvr (copied, readonly)
					[11]: any_useCallback_result1_upvr (copied, readonly)
					[12]: any_useState_result1_upvr_2 (copied, readonly)
				]]
				local module_2 = {
					title = any_useState_result1_upvr_3;
					bodyText = var13_result1_upvr.confirmationDescription;
				}
				local tbl = {}
				local tbl_7 = {}
				local tbl_2 = {
					buttonType = ButtonType_upvr.Secondary;
				}
				local tbl_4 = {
					text = var13_result1_upvr.cancelAction;
				}
				local function onActivated() -- Line 140
					--[[ Upvalues[4]:
						[1]: useDispatch_upvr_result1_upvr (copied, readonly)
						[2]: CloseCFM_upvr (copied, readonly)
						[3]: any_useState_result2_upvr (copied, readonly)
						[4]: FriendAction_upvr (copied, readonly)
					]]
					useDispatch_upvr_result1_upvr(CloseCFM_upvr())
					any_useState_result2_upvr(FriendAction_upvr.NoAction)
				end
				tbl_4.onActivated = onActivated
				tbl_2.props = tbl_4
				local tbl_3 = {
					buttonType = ButtonType_upvr.Alert;
				}
				local tbl_6 = {
					text = any_useState_result1_upvr;
				}
				tbl_6.onActivated = function() -- Line 150, Named "onActivated"
					--[[ Upvalues[5]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: useDispatch_upvr_result1_upvr (copied, readonly)
						[3]: CloseCFM_upvr (copied, readonly)
						[4]: any_useState_result2_upvr (copied, readonly)
						[5]: FriendAction_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr()
					useDispatch_upvr_result1_upvr(CloseCFM_upvr())
					any_useState_result2_upvr(FriendAction_upvr.NoAction)
				end
				tbl_3.props = tbl_6
				tbl_7[1] = tbl_2
				tbl_7[2] = tbl_3
				tbl.buttons = tbl_7
				module_2.buttonStackInfo = tbl
				module_2.screenSize = any_useState_result1_upvr_2
				return Roact_upvr.createElement(InteractiveAlert_upvr, module_2)
			end)
		end, {any_useState_result1_upvr_3, any_useState_result1_upvr, any_useState_result1_upvr_4, useSelector_upvr_result1_upvr.combinedName, useSelector_upvr_result1_upvr.userName, var13_result1_upvr.cancelAction, var13_result1_upvr.confirmationDescription})
	end
	tbl_5.PlayerMenu = any_createElement_result1
	module.PlayerMenuScreen = React_upvr.createElement("ScreenGui", {
		Enabled = useSelector_upvr(function(arg1) -- Line 50
			return arg1.PlayerMenu.isOpen
		end);
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		DisplayOrder = 8;
		[React_upvr.Change.AbsoluteSize] = function(arg1) -- Line 180
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_4 (readonly)
			]]
			any_useState_result2_upvr_4(arg1.AbsoluteSize)
		end;
	}, tbl_5)
	return React_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, module)
end