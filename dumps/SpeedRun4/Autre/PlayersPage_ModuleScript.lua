-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:48
-- Luau version 6, Types version 3
-- Time taken: 0.026288 seconds

local Players_upvr = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagEnableVoiceChatSpeakerIcons_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatSpeakerIcons)
local Constants_upvr_2 = require(RobloxGui.Modules.VoiceChat.Constants)
local FFlagLuaMenuPerfImprovements_upvr = require(Parent.Flags.FFlagLuaMenuPerfImprovements)
local Constants_upvr = require(Parent.Resources.Constants)
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local FFlagNavigateToBlockingModal_upvr = require(RobloxGui.Modules.Common.Flags.FFlagNavigateToBlockingModal)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayersPage")
local tbl_10 = {
	isMenuOpen = t.boolean;
	voiceEnabled = t.optional(t.boolean);
	inspectMenuEnabled = t.boolean;
	friends = t.map(t.integer, t.enum(Enum.FriendStatus));
}
local callback = t.callback
tbl_10.closeMenu = callback
if FFlagNavigateToBlockingModal_upvr then
	callback = nil
else
	callback = t.callback
end
tbl_10.blockPlayer = callback
tbl_10.unblockPlayer = t.callback
tbl_10.pageTitle = t.string
tbl_10.screenSize = t.Vector2
tbl_10.currentPage = t.optional(t.string)
tbl_10.isRespawnDialogOpen = t.optional(t.boolean)
tbl_10.isReportDialogOpen = t.optional(t.boolean)
tbl_10.isGamepadLastInput = t.optional(t.boolean)
tbl_10.isCurrentZoneActive = t.optional(t.boolean)
any_extend_result1.validateProps = t.strictInterface(tbl_10)
function any_extend_result1.init(arg1) -- Line 94
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FFlagLuaMenuPerfImprovements_upvr (readonly)
	]]
	arg1:setState({
		players = Players_upvr:GetPlayers();
		selectedPlayer = nil;
		selectedPlayerPosition = Vector2.new(0, 0);
		pageSizeY = 0;
		voiceChatEnabled = false;
		allMuted = false;
		selectedPlayerRef = nil;
		firstPlayerRef = nil;
	})
	function arg1.setSelectedPlayerRef(arg1_2) -- Line 106
		--[[ Upvalues[3]:
			[1]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
		]]
		if GetFFlagIGMGamepadSelectionHistory_upvr() then
			local tbl_12 = {}
			tbl_12.selectedPlayerRef = arg1_2
			arg1:setState(tbl_12)
		else
			local tbl = {}
			tbl.selectedPlayerRef = arg1_2
			tbl.firstPlayerRef = Roact_upvr.None
			arg1:setState(tbl)
		end
	end
	function arg1.setFirstPlayerRef(arg1_3) -- Line 119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.firstPlayerRef = arg1_3
		arg1:setState(tbl_4)
	end
	if FFlagLuaMenuPerfImprovements_upvr then
		function arg1.positionChanged(arg1_4) -- Line 126
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				selectedPlayerPosition = arg1_4.AbsolutePosition;
			})
		end
		function arg1.toggleMoreActions(arg1_5) -- Line 131
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Roact_upvr (copied, readonly)
			]]
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1_5)
			if arg1.state.selectedPlayer == any_GetPlayerByUserId_result1 then
				arg1:setState({
					selectedPlayer = Roact_upvr.None;
				})
			else
				arg1:setState({
					selectedPlayer = any_GetPlayerByUserId_result1;
				})
			end
		end
	end
end
local function sortPlayers_upvr(arg1, arg2) -- Line 146, Named "sortPlayers"
	local var32
	if arg1.Name:lower() >= arg2.Name:lower() then
		var32 = false
	else
		var32 = true
	end
	return var32
end
local Cryo_upvr = InGameMenuDependencies.Cryo
local PlayerLabelV2_upvr = require(Parent.Components.PlayerLabelV2)
local VoiceIndicator_upvr = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local Divider_upvr = require(Parent.Components.Divider)
function any_extend_result1.renderListEntries(arg1, arg2) -- Line 150
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: sortPlayers_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FFlagLuaMenuPerfImprovements_upvr (readonly)
		[5]: GetFFlagEnableVoiceChatSpeakerIcons_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: PlayerLabelV2_upvr (readonly)
		[8]: VoiceIndicator_upvr (readonly)
		[9]: Divider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_sort_result1 = Cryo_upvr.List.sort(arg2, sortPlayers_upvr)
	local var46 = 0
	local module_7 = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		});
	}
	for i, v_upvr in pairs(any_sort_result1) do
		local var52
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var52 = v_upvr.UserId
			return var52
		end
		if not FFlagLuaMenuPerfImprovements_upvr or not INLINED() then
			var52 = i
		end
		if not FFlagLuaMenuPerfImprovements_upvr or not arg1.positionChanged then
		end
		if not FFlagLuaMenuPerfImprovements_upvr or not arg1.toggleMoreActions then
			local function var55() -- Line 172
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: v_upvr (readonly)
					[3]: Roact_upvr (copied, readonly)
				]]
				if arg1.state.selectedPlayer == v_upvr then
					arg1:setState({
						selectedPlayer = Roact_upvr.None;
					})
				else
					arg1:setState({
						selectedPlayer = v_upvr;
					})
				end
			end
		end
		local var58
		if i == 1 and not arg1.state.selectedPlayer then
		elseif arg1.state.selectedPlayer == v_upvr then
		end
		local var11_result1 = GetFFlagEnableVoiceChatSpeakerIcons_upvr()
		if var11_result1 then
			if v_upvr ~= Players_upvr.LocalPlayer then
				var11_result1 = "SpeakerLight"
			else
				var11_result1 = "MicLight"
			end
		end
		local tbl_3 = {}
		var58 = v_upvr.Name
		tbl_3.username = var58
		var58 = v_upvr.DisplayName
		tbl_3.displayName = var58
		var58 = v_upvr.UserId
		tbl_3.userId = var58
		var58 = true
		tbl_3.isOnline = var58
		if arg1.state.selectedPlayer ~= v_upvr then
			var58 = false
		else
			var58 = true
		end
		tbl_3.isSelected = var58
		tbl_3.LayoutOrder = var46
		tbl_3.onActivated = var55
		var58 = Roact_upvr.Change.AbsolutePosition
		if arg1.state.selectedPlayer ~= v_upvr or not function(arg1_6) -- Line 165
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				selectedPlayerPosition = arg1_6.AbsolutePosition;
			})
		end then
		end
		tbl_3[var58] = nil
		var58 = Roact_upvr.Ref
		tbl_3[var58] = arg1.setSelectedPlayerRef
		var58 = {}
		if arg1.props.voiceEnabled and v_upvr ~= Players_upvr.LocalPlayer then
		end
		var58.Icon = Roact_upvr.createElement(VoiceIndicator_upvr, {
			userId = tostring(v_upvr.UserId);
			hideOnError = true;
			iconStyle = var11_result1;
			onClicked = var55;
		})
		module_7["player_"..var52] = Roact_upvr.createElement(PlayerLabelV2_upvr, tbl_3, var58)
		if i < #any_sort_result1 then
			local tbl_24 = {
				LayoutOrder = var46 + 1;
			}
			var58 = UDim2.new(1, -104, 0, 1)
			tbl_24.Size = var58
			module_7["divider_"..var52] = Roact_upvr.createElement(Divider_upvr, tbl_24)
		end
	end
	return module_7
end
local Images_upvr = UIBlox.App.ImageSet.Images
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Assets_upvr = require(Parent.Resources.Assets)
local TrustAndSafety_upvr = require(RobloxGui.Modules.TrustAndSafety)
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local onBlockButtonActivated_upvr = require(RobloxGui.Modules.Settings.onBlockButtonActivated)
function any_extend_result1.getMoreActions(arg1, arg2) -- Line 233
	--[[ Upvalues[16]:
		[1]: Players_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
		[4]: SendAnalytics_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: Assets_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: TrustAndSafety_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: GetFFlagEnableVoiceChatSpeakerIcons_upvr (readonly)
		[12]: any_new_result1_upvr (readonly)
		[13]: Constants_upvr_2 (readonly)
		[14]: BlockingUtility_upvr (readonly)
		[15]: FFlagNavigateToBlockingModal_upvr (readonly)
		[16]: onBlockButtonActivated_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local module_12 = {}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 59. Error Block 64 start (CF ANALYSIS FAILED)
	local tbl_29 = {
		text = arg2.viewAvatar;
		icon = Assets_upvr.Images.ViewAvatar;
	}
	local function onActivated() -- Line 280
		--[[ Upvalues[5]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: SendAnalytics_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
		]]
		GuiService_upvr:InspectPlayerFromUserIdWithCtx(arg1.state.selectedPlayer.UserId, "escapeMenu")
		arg1:setState({
			selectedPlayer = Roact_upvr.None;
		})
		arg1.props.closeMenu()
		SendAnalytics_upvr(Constants_upvr.AnalyticsMenuActionName, Constants_upvr.AnalyticsExamineAvatarName, {})
	end
	tbl_29.onActivated = onActivated
	table.insert(module_12, tbl_29)
	local onActivated
	if arg1.state.selectedPlayer ~= Players_upvr.LocalPlayer then
		local tbl_21 = {
			text = arg2.reportAbuse;
			icon = Images_upvr["icons/actions/feedback"];
		}
		local function onActivated() -- Line 294
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: TrustAndSafety_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			TrustAndSafety_upvr.openReportDialogForPlayer(arg1.state.selectedPlayer, Constants_upvr.AnalyticsMenuActionName)
			arg1:setState({
				selectedPlayer = Roact_upvr.None;
			})
		end
		tbl_21.onActivated = onActivated
		table.insert(module_12, tbl_21)
		if arg1.props.voiceEnabled then
			onActivated = arg1.state
			local var94 = default_upvr.participants[tostring(onActivated.selectedPlayer.UserId)]
			local var95
			if var94 then
				local isMutedLocally_2 = var94.isMutedLocally
				local tbl_6 = {}
				if isMutedLocally_2 then
					onActivated = "Unmute Player"
				else
					onActivated = "Mute Player"
				end
				tbl_6.text = onActivated
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					onActivated = onActivated:GetIcon(var95, "Misc")
					if isMutedLocally_2 then
						var95 = "Unmute"
					else
						var95 = "Mute"
					end
					onActivated = default_upvr
					return onActivated
				end
				if not GetFFlagEnableVoiceChatSpeakerIcons_upvr() or not INLINED_3() then
					onActivated = default_upvr
					if isMutedLocally_2 then
					else
					end
					onActivated = onActivated:GetIcon("Muted")
				end
				tbl_6.icon = onActivated
				function onActivated() -- Line 312
					--[[ Upvalues[5]:
						[1]: arg1 (readonly)
						[2]: any_new_result1_upvr (copied, readonly)
						[3]: default_upvr (copied, readonly)
						[4]: Constants_upvr_2 (copied, readonly)
						[5]: Roact_upvr (copied, readonly)
					]]
					local selectedPlayer = arg1.state.selectedPlayer
					any_new_result1_upvr:debug("Muting Player {}", selectedPlayer.UserId)
					default_upvr:ToggleMutePlayer(selectedPlayer.UserId, Constants_upvr_2.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
					arg1:setState({
						selectedPlayer = Roact_upvr.None;
					})
				end
				tbl_6.onActivated = onActivated
				table.insert(module_12, tbl_6)
			end
		end
		local selectedPlayer_2_upvr = arg1.state.selectedPlayer
		local any_IsPlayerBlockedByUserId_result1_upvr = BlockingUtility_upvr:IsPlayerBlockedByUserId(selectedPlayer_2_upvr.UserId)
		local tbl_19 = {}
		if not any_IsPlayerBlockedByUserId_result1_upvr or not arg2.unblockPlayer then
		end
		tbl_19.text = arg2.blockPlayer
		tbl_19.icon = Images_upvr["icons/actions/block"]
		function tbl_19.onActivated() -- Line 332
			--[[ Upvalues[6]:
				[1]: any_IsPlayerBlockedByUserId_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: selectedPlayer_2_upvr (readonly)
				[4]: FFlagNavigateToBlockingModal_upvr (copied, readonly)
				[5]: onBlockButtonActivated_upvr (copied, readonly)
				[6]: Roact_upvr (copied, readonly)
			]]
			if any_IsPlayerBlockedByUserId_result1_upvr then
				arg1.props.unblockPlayer(selectedPlayer_2_upvr)
			elseif FFlagNavigateToBlockingModal_upvr then
				onBlockButtonActivated_upvr(selectedPlayer_2_upvr, nil, arg1.__componentName)
			else
				arg1.props.blockPlayer(selectedPlayer_2_upvr)
			end
			arg1:setState({
				selectedPlayer = Roact_upvr.None;
			})
		end
		table.insert(module_12, tbl_19)
	end
	-- KONSTANTERROR: [95] 59. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [258] 176. Error Block 39 start (CF ANALYSIS FAILED)
	do
		return module_12
	end
	-- KONSTANTERROR: [258] 176. Error Block 39 end (CF ANALYSIS FAILED)
end
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
function any_extend_result1.renderFocusHandler(arg1, arg2) -- Line 354
	--[[ Upvalues[5]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FocusHandler_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	local var123
	local var124
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local var125 = true
		var124 = Constants_upvr
		if arg1.props.currentPage ~= var124.MainPagePageKey then
			var125 = not arg1.props.isCurrentZoneActive
		end
		var123 = var125
	end
	local module_6 = {}
	var124 = arg2
	if var124 then
		var124 = false
		if arg1.props.currentPage == "Players" then
			var124 = arg1.props.isMenuOpen
			if var124 then
				var124 = not arg1.props.isReportDialogOpen
				if var124 then
					var124 = not arg1.state.selectedPlayer
					if var124 then
						local selectedPlayerRef = arg1.state.selectedPlayerRef
						if not selectedPlayerRef then
							selectedPlayerRef = arg1.state.firstPlayerRef
						end
						if selectedPlayerRef == nil then
							var124 = false
						else
							var124 = true
						end
					end
				end
			end
		end
	end
	module_6.isFocused = var124
	module_6.shouldForgetPreviousSelection = var123
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		return function(arg1_9) -- Line 370
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local var129 = arg1_9
			if not var129 then
				var129 = arg1.state.firstPlayerRef
			end
			GuiService_upvr.SelectedCoreObject = var129
		end
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_6() then
	end
	function module_6.didFocus() -- Line 374
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local selectedPlayerRef_4 = arg1.state.selectedPlayerRef
		if not selectedPlayerRef_4 then
			selectedPlayerRef_4 = arg1.state.firstPlayerRef
		end
		GuiService_upvr.SelectedCoreObject = selectedPlayerRef_4
	end
	return Roact_upvr.createElement(FocusHandler_upvr, module_6)
end
local var132_upvr = settings():GetFVariable("InGameGlobalGuiInset") + 24
local PlayerContextualMenu_upvr = require(Parent.Components.PlayerContextualMenu)
local Page_upvr = require(Parent.Components.Page)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local withStyle_upvr = UIBlox.Core.Style.withStyle
local BarOnTopScrollingFrame_upvr = require(Parent.Components.BarOnTopScrollingFrame)
local PageNavigationWatcher_upvr = require(Parent.Components.PageNavigationWatcher)
function any_extend_result1.renderWithLocalizedAndSelectionCursor(arg1, arg2, arg3) -- Line 381
	--[[ Upvalues[11]:
		[1]: var132_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PlayerContextualMenu_upvr (readonly)
		[4]: Page_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: Constants_upvr_2 (readonly)
		[7]: CursorKind_upvr (readonly)
		[8]: withStyle_upvr (readonly)
		[9]: BarOnTopScrollingFrame_upvr (readonly)
		[10]: PageNavigationWatcher_upvr (readonly)
		[11]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var166 = 0
	local var167 = 0
	local tbl_8 = {}
	local var169_upvw
	if arg1.state.selectedPlayer ~= nil then
		var169_upvw = arg2
		tbl_8 = arg1:getMoreActions(var169_upvw)
		local var170 = #tbl_8 * 56
		var169_upvw = arg1.props.screenSize
		local X = var169_upvw.X
		var169_upvw = arg1.props.screenSize.Y
		if arg1.state.selectedPlayerPosition.Y + var170 + var132_upvr < var169_upvw then
			var166 = arg1.state.selectedPlayerPosition.Y
		else
			var166 = var169_upvw - var170 - var132_upvr
		end
		if arg1.state.selectedPlayerPosition.X + 400 + 20 + 352 + 24 <= X then
			var167 = arg1.state.selectedPlayerPosition.X + 400 + 20
		else
			var167 = X - 352 - 24
		end
	end
	var169_upvw = arg1.props
	X = var169_upvw.isGamepadLastInput
	local var172 = X
	if var172 then
		var169_upvw = arg1.props.isRespawnDialogOpen
		var172 = not var169_upvw
		if var172 then
			var169_upvw = arg1.props
			var172 = var169_upvw.isCurrentZoneActive
		end
	end
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var169_upvw = var169_upvw(PlayerContextualMenu_upvr, tbl_20)
		function tbl_20.onClose() -- Line 425
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
			]]
			arg1:setState({
				selectedPlayer = Roact_upvr.None;
			})
		end
		tbl_20.canCaptureFocus = var172
		tbl_20.yOffset = var166
		tbl_20.xOffset = var167
		tbl_20.actionWidth = 352
		tbl_20.moreActions = tbl_8
		local tbl_20 = {}
		var169_upvw = Roact_upvr.createElement
		return var169_upvw
	end
	if not arg1.state.selectedPlayer or not INLINED_8() then
		var169_upvw = nil
	end
	var169_upvw = Roact_upvr.createElement
	local tbl_23 = {
		pageTitle = arg1.props.pageTitle;
	}
	if arg1.props.voiceEnabled then
		local tbl_22 = {
			Size = UDim2.fromOffset(36, 36);
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(1, 0.5);
			BorderSizePixel = 0;
		}
		local var177 = 4
		tbl_22.Position = UDim2.new(1, var177, 0.5, 0)
		if arg1.state.allMuted then
			var177 = "UnmuteAll"
		else
			var177 = "MuteAll"
		end
		tbl_22.Image = default_upvr:GetIcon(var177, "Misc")
		tbl_22[Roact_upvr.Event.Activated] = function() -- Line 440
			--[[ Upvalues[3]:
				[1]: default_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Constants_upvr_2 (copied, readonly)
			]]
			default_upvr:MuteAll(not arg1.state.allMuted, Constants_upvr_2.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
			arg1:setState({
				allMuted = not arg1.state.allMuted;
			})
		end
		tbl_22.SelectionImageObject = arg3(CursorKind_upvr.RoundedRect)
	end
	tbl_23.titleChildren = Roact_upvr.createElement("ImageButton", tbl_22)
	var169_upvw = var169_upvw(Page_upvr, tbl_23, {
		PlayerListContent = withStyle_upvr(function(arg1_12) -- Line 449
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: BarOnTopScrollingFrame_upvr (copied, readonly)
				[4]: var169_upvw (read and write)
			]]
			local module_9 = {}
			local tbl_17 = {
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(1, 0, 1, 0);
			}
			local udim2 = UDim2.new(1, 0, 0, #arg1.state.players * 72)
			tbl_17.CanvasSize = udim2
			if arg1.state.selectedPlayer ~= nil then
				udim2 = false
			else
				udim2 = true
			end
			tbl_17.ScrollingEnabled = udim2
			module_9.PlayerList = Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, tbl_17, arg1:renderListEntries(arg1.state.players))
			module_9.MoreActionsMenu = var169_upvw
			return Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				[Roact_upvr.Change.AbsoluteSize] = function(arg1_13) -- Line 454
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						pageSizeY = arg1_13.AbsoluteSize.Y;
					})
				end;
			}, module_9)
		end);
		FocusHandler = arg1:renderFocusHandler(var172);
		Watcher = Roact_upvr.createElement(PageNavigationWatcher_upvr, {
			desiredPage = "Players";
			onNavigateTo = function() -- Line 473, Named "onNavigateTo"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: Players_upvr (copied, readonly)
				]]
				arg1:setState({
					players = Players_upvr:GetPlayers();
				})
			end;
			onNavigateAway = function() -- Line 478, Named "onNavigateAway"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: Roact_upvr (copied, readonly)
				]]
				arg1:setState({
					selectedPlayer = Roact_upvr.None;
				})
			end;
		});
	})
	return var169_upvw
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.renderWithLocalized(arg1, arg2) -- Line 487
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_14) -- Line 488
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1:renderWithLocalizedAndSelectionCursor(arg2, arg1_14)
	end)
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
function any_extend_result1.render(arg1) -- Line 493
	--[[ Upvalues[1]:
		[1]: withLocalization_upvr (readonly)
	]]
	return withLocalization_upvr({
		addFriend = "CoreScripts.InGameMenu.Actions.AddFriend";
		acceptFriend = "CoreScripts.InGameMenu.Actions.AcceptFriend";
		unfriend = "CoreScripts.InGameMenu.Actions.Unfriend";
		cancelFriend = "CoreScripts.InGameMenu.Actions.CancelFriend";
		viewAvatar = "CoreScripts.InGameMenu.Actions.ViewAvatar";
		reportAbuse = "CoreScripts.InGameMenu.Actions.ReportAbuse";
		blockPlayer = "CoreScripts.InGameMenu.Actions.BlockPlayer";
		unblockPlayer = "CoreScripts.InGameMenu.Actions.UnblockPlayer";
	})(function(arg1_15) -- Line 503
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithLocalized(arg1_15)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 508
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	if arg1.props.isMenuOpen and not arg2.isMenuOpen then
		arg1:setState({
			players = Players_upvr:GetPlayers();
			selectedPlayer = Roact_upvr.None;
		})
	end
	local selectedPlayerRef_6 = arg1.state.selectedPlayerRef
	if selectedPlayerRef_6 and arg1.state.selectedPlayerPosition ~= selectedPlayerRef_6.AbsolutePosition then
		arg1:setState({
			selectedPlayerPosition = selectedPlayerRef_6.AbsolutePosition;
		})
	end
end
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
local BlockPlayer_upvr = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local UnblockPlayer_upvr = require(RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 526
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local module_2 = {
		isMenuOpen = arg1.isMenuOpen;
		voiceEnabled = arg1.voiceState.voiceEnabled;
		friends = arg1.friends;
		inspectMenuEnabled = arg1.displayOptions.inspectMenuEnabled;
		screenSize = arg1.screenSize;
		currentPage = arg1.menuPage;
		isRespawnDialogOpen = arg1.respawn.dialogOpen;
	}
	local var201
	if not var201 then
		var201 = arg1.report.reportSentOpen
	end
	module_2.isReportDialogOpen = var201
	if arg1.displayOptions.inputType ~= Constants_upvr.InputType.Gamepad then
		var201 = false
	else
		var201 = true
	end
	module_2.isGamepadLastInput = var201
	if arg1.currentZone ~= 1 then
		var201 = false
	else
		var201 = true
	end
	module_2.isCurrentZoneActive = var201
	return module_2
end, function(arg1) -- Line 539
	--[[ Upvalues[4]:
		[1]: CloseMenu_upvr (readonly)
		[2]: FFlagNavigateToBlockingModal_upvr (readonly)
		[3]: BlockPlayer_upvr (readonly)
		[4]: UnblockPlayer_upvr (readonly)
	]]
	local module_5 = {}
	local function closeMenu() -- Line 541
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: CloseMenu_upvr (copied, readonly)
		]]
		arg1(CloseMenu_upvr)
	end
	module_5.closeMenu = closeMenu
	if FFlagNavigateToBlockingModal_upvr then
		closeMenu = nil
	else
		closeMenu = function(arg1_16) -- Line 545
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: BlockPlayer_upvr (copied, readonly)
			]]
			return arg1(BlockPlayer_upvr(arg1_16))
		end
	end
	module_5.blockPlayer = closeMenu
	function module_5.unblockPlayer(arg1_17) -- Line 549
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UnblockPlayer_upvr (copied, readonly)
		]]
		return arg1(UnblockPlayer_upvr(arg1_17))
	end
	return module_5
end)(any_extend_result1)