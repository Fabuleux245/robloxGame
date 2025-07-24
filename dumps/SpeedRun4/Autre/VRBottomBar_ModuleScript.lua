-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:31
-- Luau version 6, Types version 3
-- Time taken: 0.037239 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local StarterGui_upvr = game:GetService("StarterGui")
local VRService_upvr = game:GetService("VRService")
local Otter_upvr = require(CorePackages.Packages.Otter)
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local VRHub_upvr = require(RobloxGui_upvr.Modules.VR.VRHub)
local default_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
local var13_upvw
local var14_upvw
local var15_upvw
local var16_upvw
if require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUIManagerPackgify then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	var16_upvw = VrSpatialUi.Constants
	var13_upvw = var16_upvw.PanelType
	var14_upvw = VrSpatialUi.registerRoactPanel
	var15_upvw = VrSpatialUi.UIManager
else
	local UIManager = RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("UIManager")
	var13_upvw = require(UIManager.Constants).PanelType
	var14_upvw = require(UIManager.registerRoactPanel)
	var15_upvw = require(UIManager.UIManager)
	var16_upvw = require(UIManager.Constants)
end
local InGameMenuConstants_upvr = require(RobloxGui_upvr.Modules.InGameMenuConstants)
local InGameMenuInit_upvr = require(RobloxGui_upvr.Modules.InGameMenuInit)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TopBarApp")
local VRBottomBarAnalytics_upvr = require(script.Parent.VRBottomBarAnalytics)
local VRBottomBarType_upvr = require(script.Parent.VRBottomBarType)
local EmotesMenuMaster_upvr = require(RobloxGui_upvr.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackScript_upvr = require(RobloxGui_upvr.Modules.BackpackScript)
local FFlagVRMoveVoiceIndicatorToBottomBar_upvr = require(RobloxGui_upvr.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)
local FFlagVRBottomBarDebugPositionConfig_upvr = require(RobloxGui_upvr.Modules.Flags.FFlagVRBottomBarDebugPositionConfig)
local FFlagVRBottomBarHighlightedLeaveGameIcon_upvr = require(RobloxGui_upvr.Modules.Flags.FFlagVRBottomBarHighlightedLeaveGameIcon)
local IsSpatialRobloxGuiEnabled_upvr = require(RobloxGui_upvr.Modules.VR.IsSpatialRobloxGuiEnabled)
local var30_upvr = (require(RobloxGui_upvr.Modules.Flags.GetFIntVRScaleGuiDistance) or 100)() * 0.01
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixVRBottomBarAnalytics", false)
local function _(arg1) -- Line 102, Named "safeRequire"
	local pcall_result1_2, pcall_result2 = pcall(require, arg1)
	if pcall_result1_2 then
		return pcall_result2
	end
	warn("Failure to Start CoreScript module "..arg1.Name..".\n"..pcall_result2)
end
local tbl_12_upvr = {
	Y = require(RobloxGui_upvr.Modules.Flags.FIntVRBottomBarPositionOffsetVerticalNumber) / 100;
	Z = require(RobloxGui_upvr.Modules.Flags.FIntVRBottomBarPositionOffsetDepthNumber) / 100;
}
local tbl_11_upvr = {
	Default = {
		dampingRatio = 1;
		frequency = 4.5;
	};
	Slower = {
		dampingRatio = 1;
		frequency = 0.66;
	};
}
local tbl_38_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_menu.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_menu.png";
}
local function onActivated() -- Line 137
	--[[ Upvalues[7]:
		[1]: VRHub_upvr (readonly)
		[2]: InGameMenuInit_upvr (readonly)
		[3]: InGameMenuConstants_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: VRBottomBarAnalytics_upvr (readonly)
		[6]: VRBottomBarType_upvr (readonly)
		[7]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:SetShowTopBar(true)
	if not InGameMenuInit_upvr.getOpen() then
		InGameMenuInit_upvr.openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
		VRHub_upvr:SetShowMoreMenu(false)
	else
		InGameMenuInit_upvr.closeInGameMenu()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.MainMenu;
			isToggleOn = InGameMenuInit_upvr.getOpen();
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-MainMenu")
end
tbl_38_upvr.onActivated = onActivated
local tbl_39_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_maximize.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_minimize.png";
}
local function onActivated() -- Line 161
	--[[ Upvalues[6]:
		[1]: VRHub_upvr (readonly)
		[2]: InGameMenuInit_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: VRBottomBarAnalytics_upvr (readonly)
		[5]: VRBottomBarType_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
	]]
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(false)
		VRHub_upvr:SetShowTopBar(true)
	else
		VRHub_upvr:SetShowTopBar(false)
		InGameMenuInit_upvr.closeInGameMenu()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.ToggleGui;
			isToggleOn = VRHub_upvr.ShowTopBar;
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-ToggleGui")
end
tbl_39_upvr.onActivated = onActivated
local tbl_17_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon__backpack.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon__backpack.png";
}
local function onActivated() -- Line 186
	--[[ Upvalues[6]:
		[1]: VRHub_upvr (readonly)
		[2]: BackpackScript_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: VRBottomBarAnalytics_upvr (readonly)
		[5]: VRBottomBarType_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
	]]
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(true)
		if not BackpackScript_upvr.IsOpen then
			BackpackScript_upvr.OpenClose()
			-- KONSTANTWARNING: GOTO [22] #18
		end
	else
		BackpackScript_upvr.OpenClose()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Inventory;
			isToggleOn = BackpackScript_upvr.IsOpen;
			source = VRBottomBarType_upvr.Source.MoreSubMenu;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Backpack")
end
tbl_17_upvr.onActivated = onActivated
local tbl_3_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png";
}
local PlayerListManager_upvr = require(RobloxGui_upvr.Modules.PlayerList.PlayerListManager)
local function onActivated() -- Line 211
	--[[ Upvalues[6]:
		[1]: VRHub_upvr (readonly)
		[2]: PlayerListManager_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: VRBottomBarAnalytics_upvr (readonly)
		[5]: VRBottomBarType_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
	]]
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(true)
		if not PlayerListManager_upvr:GetSetVisible() then
			PlayerListManager_upvr:SetVisibility(true)
			-- KONSTANTWARNING: GOTO [29] #24
		end
	else
		PlayerListManager_upvr:SetVisibility(not PlayerListManager_upvr:GetSetVisible())
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Leaderboard;
			isToggleOn = PlayerListManager_upvr:GetSetVisible();
			source = VRBottomBarType_upvr.Source.MoreSubMenu;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-PlayerList")
end
tbl_3_upvr.onActivated = onActivated
local tbl_9_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_emote.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_emote.png";
}
local function onActivated() -- Line 237
	--[[ Upvalues[6]:
		[1]: VRHub_upvr (readonly)
		[2]: EmotesMenuMaster_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: VRBottomBarAnalytics_upvr (readonly)
		[5]: VRBottomBarType_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(true)
		if not EmotesMenuMaster_upvr:isOpen() then
			EmotesMenuMaster_upvr:open()
			-- KONSTANTWARNING: GOTO [33] #27
		end
		-- KONSTANTWARNING: GOTO [33] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 19 start (CF ANALYSIS FAILED)
	if EmotesMenuMaster_upvr:isOpen() then
		EmotesMenuMaster_upvr:close()
	else
		EmotesMenuMaster_upvr:open()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Emotes;
			isToggleOn = EmotesMenuMaster_upvr:isOpen();
			source = VRBottomBarType_upvr.Source.MoreSubMenu;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Emotes")
	-- KONSTANTERROR: [19] 16. Error Block 19 end (CF ANALYSIS FAILED)
end
tbl_9_upvr.onActivated = onActivated
local tbl_20_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_chat.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_chat.png";
}
local ChatSelector_upvr = require(RobloxGui_upvr.Modules.ChatSelector)
local GameSettings_upvr = UserSettings().GameSettings
local function onActivated() -- Line 267
	--[[ Upvalues[7]:
		[1]: VRHub_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: GameSettings_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: VRBottomBarAnalytics_upvr (readonly)
		[6]: VRBottomBarType_upvr (readonly)
		[7]: RbxAnalyticsService_upvr (readonly)
	]]
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(true)
		if not ChatSelector_upvr:GetVisibility() then
			ChatSelector_upvr:ToggleVisibility()
			GameSettings_upvr.ChatVisible = ChatSelector_upvr:GetVisibility()
			-- KONSTANTWARNING: GOTO [37] #29
		end
	else
		ChatSelector_upvr:ToggleVisibility()
		GameSettings_upvr.ChatVisible = ChatSelector_upvr:GetVisibility()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Chat;
			isToggleOn = GameSettings_upvr.ChatVisible;
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Chat")
end
tbl_20_upvr.onActivated = onActivated
local tbl_35_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_on.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_on.png";
}
local function onActivated() -- Line 295
	--[[ Upvalues[5]:
		[1]: VRHub_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: VRBottomBarAnalytics_upvr (readonly)
		[4]: VRBottomBarType_upvr (readonly)
		[5]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:ToggleSafetyBubble()
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Safety;
			isToggleOn = VRHub_upvr.SafetyBubble.enabled;
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Safety")
end
tbl_35_upvr.onActivated = onActivated
local tbl_41_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_off.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_off.png";
}
local function onActivated() -- Line 313
	--[[ Upvalues[5]:
		[1]: VRHub_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: VRBottomBarAnalytics_upvr (readonly)
		[4]: VRBottomBarType_upvr (readonly)
		[5]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:ToggleSafetyBubble()
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Safety;
			isToggleOn = VRHub_upvr.SafetyBubble.enabled;
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Safety")
end
tbl_41_upvr.onActivated = onActivated
local tbl_46_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leave.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leave.png";
}
local function onActivated() -- Line 331
	--[[ Upvalues[7]:
		[1]: VRHub_upvr (readonly)
		[2]: InGameMenuInit_upvr (readonly)
		[3]: InGameMenuConstants_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: VRBottomBarAnalytics_upvr (readonly)
		[6]: VRBottomBarType_upvr (readonly)
		[7]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:SetShowTopBar(true)
	VRHub_upvr:SetShowMoreMenu(false)
	if InGameMenuInit_upvr then
		if not InGameMenuInit_upvr.getOpen() then
			InGameMenuInit_upvr.openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
		end
		InGameMenuInit_upvr.openGameLeavePage()
	end
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.Leave;
			isToggleOn = InGameMenuInit_upvr.getOpen();
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-LeaveGame")
end
tbl_46_upvr.onActivated = onActivated
local tbl_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leave_highlighted.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leave_highlighted.png";
	onActivated = tbl_46_upvr.onActivated;
}
local tbl_21_upvr = {
	iconOn = "rbxasset://textures/ui/MenuBar/icon_more.png";
	iconOff = "rbxasset://textures/ui/MenuBar/icon_more.png";
}
local function onActivated() -- Line 363
	--[[ Upvalues[5]:
		[1]: VRHub_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: VRBottomBarAnalytics_upvr (readonly)
		[4]: VRBottomBarType_upvr (readonly)
		[5]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:SetShowTopBar(true)
	VRHub_upvr:SetShowMoreMenu(not VRHub_upvr.ShowMoreMenu)
	if game_DefineFastFlag_result1_upvr then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.MoreSubMenu;
			isToggleOn = VRHub_upvr.ShowMoreMenu;
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-More")
end
tbl_21_upvr.onActivated = onActivated
local tbl_18_upvr = {
	iconComponent = require(script.Parent.VRBarSeparator);
	itemSize = UDim2.new(0, 28, 0, 44);
}
local tbl_10_upvr = {
	icon = "rbxasset://textures/ui/MenuBar/icon_emote.png";
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Emotes");
}
local function onActivated() -- Line 387
	--[[ Upvalues[2]:
		[1]: tbl_9_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	tbl_9_upvr.onActivated()
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-MoreMenu-Emotes")
end
tbl_10_upvr.onActivated = onActivated
local tbl_29_upvr = {
	icon = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png";
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Leaderboard");
}
local function onActivated() -- Line 396
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	tbl_3_upvr.onActivated()
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-MoreMenu-PlayerList")
end
tbl_29_upvr.onActivated = onActivated
local tbl_22_upvr = {
	icon = "rbxasset://textures/ui/MenuBar/icon__backpack.png";
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Inventory");
}
local function onActivated() -- Line 405
	--[[ Upvalues[2]:
		[1]: tbl_17_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	tbl_17_upvr.onActivated()
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-MoreMenu-Backpack")
end
tbl_22_upvr.onActivated = onActivated
local tbl_36_upvr = {
	iconOn = Images["icons/controls/publicAudioJoin"];
	iconOff = Images["icons/controls/publicAudioJoin"];
	text = "Join Voice";
}
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableJoinVoiceVrTelemetry", false)
local function onActivated() -- Line 415
	--[[ Upvalues[4]:
		[1]: default_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: VRBottomBarAnalytics_upvr (readonly)
		[4]: VRBottomBarType_upvr (readonly)
	]]
	default_upvr:JoinVoice()
	if game_DefineFastFlag_result1_upvr_2 then
		VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
			integrationId = VRBottomBarType_upvr.ButtomName.JoinVoice;
			isToggleOn = default_upvr:ShouldShowJoinVoice();
			source = VRBottomBarType_upvr.Source.VRBottomBar;
		})
	end
end
tbl_36_upvr.onActivated = onActivated
local function _(arg1) -- Line 429, Named "roundOffset"
	local var69
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var69 = math.floor(arg1 * 10 + 0.5) / 10
		return var69
	end
	if 0 > arg1 or not INLINED() then
		var69 = math.ceil(arg1 * 10 - 0.5) / 10
	end
	return var69
end
local SplashScreenManager_upvr = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager
local React_upvr = require(CorePackages.Packages.React)
local VRBarVoiceIcon_upvr = require(script.Parent.VRBarVoiceIcon)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Players_upvr = game:GetService("Players")
local VRUtil_upvr = require(CorePackages.Workspace.Packages.VrCommon).VRUtil
function any_extend_result1.init(arg1) -- Line 434
	--[[ Upvalues[24]:
		[1]: tbl_12_upvr (readonly)
		[2]: var30_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: RobloxGui_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: SplashScreenManager_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: VRBarVoiceIcon_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: Players_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: VRBottomBarAnalytics_upvr (readonly)
		[13]: VRBottomBarType_upvr (readonly)
		[14]: RbxAnalyticsService_upvr (readonly)
		[15]: tbl_38_upvr (readonly)
		[16]: tbl_18_upvr (readonly)
		[17]: tbl_39_upvr (readonly)
		[18]: tbl_46_upvr (readonly)
		[19]: IsSpatialRobloxGuiEnabled_upvr (readonly)
		[20]: VRHub_upvr (readonly)
		[21]: VRUtil_upvr (readonly)
		[22]: Otter_upvr (readonly)
		[23]: tbl_11_upvr (readonly)
		[24]: FFlagVRBottomBarDebugPositionConfig_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl_33 = {
		yOffset = tbl_12_upvr.Y * var30_upvr;
		zOffset = tbl_12_upvr.Z * var30_upvr;
		moreMenuOpen = false;
		vrMenuOpen = true;
		lookAway = false;
	}
	local var77
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 15 start (CF ANALYSIS FAILED)
	local UserGui = RobloxGui_upvr.Modules.VR.UserGui
	local pcall_result1, pcall_result2_3 = pcall(require, UserGui)
	if pcall_result1 then
		var77 = pcall_result2_3
	else
		warn("Failure to Start CoreScript module "..UserGui.Name..".\n"..pcall_result2_3)
		var77 = nil
	end
	if not var77 then
		-- KONSTANTERROR: [55] 41. Error Block 10 start (CF ANALYSIS FAILED)
		var77 = Roact_upvr.None
		-- KONSTANTERROR: [55] 41. Error Block 10 end (CF ANALYSIS FAILED)
	end
	tbl_33.userGui = var77
	var77 = not SplashScreenManager_upvr.isFPSAtTarget()
	tbl_33.hidden = var77
	arg1:setState(tbl_33)
	arg1.backpackHasItems = false
	arg1.emotesLoaded = false
	function arg1.onTargetFPSSTateChange(arg1_2) -- Line 448
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hidden = not arg1_2;
		})
	end
	SplashScreenManager_upvr.addStatusChangeListener(arg1.onTargetFPSSTateChange)
	function arg1.getVoiceIcon() -- Line 453
		--[[ Upvalues[9]:
			[1]: React_upvr (copied, readonly)
			[2]: VRBarVoiceIcon_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: VRBottomBarAnalytics_upvr (copied, readonly)
			[8]: VRBottomBarType_upvr (copied, readonly)
			[9]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		local module = {
			iconImageComponent = function(arg1_3) -- Line 455, Named "iconImageComponent"
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: VRBarVoiceIcon_upvr (copied, readonly)
					[3]: Cryo_upvr (copied, readonly)
					[4]: Players_upvr (copied, readonly)
				]]
				return React_upvr.createElement(VRBarVoiceIcon_upvr, Cryo_upvr.Dictionary.join(arg1_3, {
					userId = tostring(Players_upvr.LocalPlayer.UserId);
					iconStyle = "MicLight";
				}))
			end;
		}
		local function onActivated() -- Line 464
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: VRBottomBarAnalytics_upvr (copied, readonly)
				[4]: VRBottomBarType_upvr (copied, readonly)
				[5]: RbxAnalyticsService_upvr (copied, readonly)
			]]
			if arg1.props.voiceState == Enum.VoiceChatState.Failed then
				arg1.props.voiceChatServiceManager:RejoinPreviousChannel()
			else
				arg1.props.voiceChatServiceManager:ToggleMic("VRBottomBar")
			end
			if game_DefineFastFlag_result1_upvr then
				local var86 = false
				if arg1.props.voiceState == Enum.VoiceChatState.Joined then
					var86 = true
				end
				VRBottomBarAnalytics_upvr.sendEventToTelemetryV2({
					integrationId = VRBottomBarType_upvr.ButtomName.Voice;
					isToggleOn = var86;
					source = VRBottomBarType_upvr.Source.VRBottomBar;
				})
			end
			RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Voice")
		end
		module.onActivated = onActivated
		return module
	end
	function arg1.getDebugYOffsetUp() -- Line 489
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module_5 = {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_up.png";
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_up.png";
		}
		local function onActivated() -- Line 493
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				yOffset = arg1.state.yOffset + 0.1;
			})
		end
		module_5.onActivated = onActivated
		return module_5
	end
	function arg1.getDebugYOffsetDown() -- Line 502
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module_2 = {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_down.png";
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_down.png";
		}
		local function onActivated() -- Line 506
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				yOffset = arg1.state.yOffset - 0.1;
			})
		end
		module_2.onActivated = onActivated
		return module_2
	end
	function arg1.getDebugZOffsetUp() -- Line 515
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module_3 = {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_left.png";
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_left.png";
		}
		local function onActivated() -- Line 519
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				zOffset = arg1.state.zOffset + 0.1;
			})
		end
		module_3.onActivated = onActivated
		return module_3
	end
	function arg1.getDebugZOffsetDown() -- Line 528
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_right.png";
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_right.png";
			onActivated = function() -- Line 532, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					zOffset = arg1.state.zOffset - 0.1;
				})
			end;
		}
	end
	function arg1.getDebugTextLabel() -- Line 541
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		return {
			iconComponent = function(arg1_4) -- Line 543, Named "iconComponent"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Roact_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local yOffset = arg1.state.yOffset
				local var103
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var103 = math.floor(yOffset * 10 + 0.5) / 10
					return var103
				end
				if 0 > yOffset or not INLINED_2() then
					var103 = math.ceil(yOffset * 10 - 0.5) / 10
				end
				local zOffset = arg1.state.zOffset
				if 0 > zOffset or not (math.floor(zOffset * 10 + 0.5) / 10) then
				end
				return Roact_upvr.createElement("TextLabel", {
					BackgroundTransparency = 1;
					Text = "Y "..var103..", Z "..(math.ceil(zOffset * 10 - 0.5) / 10);
					TextColor3 = Color3.new(1, 1, 1);
					TextWrapped = true;
					TextScaled = true;
					Size = UDim2.fromScale(1, 1);
					[Roact_upvr.Children] = arg1_4[Roact_upvr.Children];
				})
			end;
			itemSize = UDim2.new(0, 44, 0, 44);
		}
	end
	local tbl_34 = {}
	var77 = {}
	var77[1] = tbl_38_upvr
	var77[2] = tbl_18_upvr
	var77[3] = tbl_39_upvr
	var77[4] = tbl_18_upvr
	var77[5] = tbl_46_upvr
	tbl_34.itemList = var77
	var77 = {}
	tbl_34.moreItemList = var77
	arg1:setState(tbl_34)
	function arg1.onShowTopBarChanged() -- Line 566
		--[[ Upvalues[3]:
			[1]: IsSpatialRobloxGuiEnabled_upvr (copied, readonly)
			[2]: VRHub_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if IsSpatialRobloxGuiEnabled_upvr then
		else
			if not VRHub_upvr.ShowTopBar then
				VRHub_upvr:SetShowMoreMenu(false)
			end
			arg1:setState({
				vrMenuOpen = VRHub_upvr.ShowTopBar;
			})
		end
	end
	function arg1.onShowMoreMenuChanged() -- Line 578
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: VRHub_upvr (copied, readonly)
		]]
		arg1:setState({
			moreMenuOpen = VRHub_upvr.ShowMoreMenu;
		})
	end
	function arg1.updateItemListState() -- Line 584
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_updateItems_result1, any_updateItems_result2 = arg1:updateItems()
		arg1:setState({
			itemList = any_updateItems_result1;
			moreItemList = any_updateItems_result2;
		})
	end
	function arg1.onBackpackItemAdded() -- Line 592
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.backpackHasItems then
			arg1.backpackHasItems = true
			arg1.updateItemListState()
		end
	end
	function arg1.onBackpackEmpty() -- Line 599
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.backpackHasItems then
			arg1.backpackHasItems = false
			arg1.updateItemListState()
		end
	end
	function arg1.onEmotesLoaded(arg1_5) -- Line 606
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_5 ~= arg1.emotesLoaded then
			arg1.emotesLoaded = arg1_5
			arg1.updateItemListState()
		end
	end
	function arg1.onVREnabledChanged() -- Line 613
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: VRService_upvr (copied, readonly)
			[3]: RobloxGui_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local tbl_47 = {}
		local var120
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 15 start (CF ANALYSIS FAILED)
		local UserGui_2 = RobloxGui_upvr.Modules.VR.UserGui
		local pcall_result1_3, pcall_result2_2 = pcall(require, UserGui_2)
		if pcall_result1_3 then
			var120 = pcall_result2_2
		else
			warn("Failure to Start CoreScript module "..UserGui_2.Name..".\n"..pcall_result2_2)
			var120 = nil
		end
		if not var120 then
			-- KONSTANTERROR: [33] 26. Error Block 10 start (CF ANALYSIS FAILED)
			var120 = Roact_upvr.None
			-- KONSTANTERROR: [33] 26. Error Block 10 end (CF ANALYSIS FAILED)
		end
		tbl_47.userGui = var120
		arg1:setState(tbl_47)
		-- KONSTANTERROR: [6] 6. Error Block 15 end (CF ANALYSIS FAILED)
	end
	function arg1.onRenderStepped() -- Line 619
		--[[ Upvalues[2]:
			[1]: VRUtil_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local Head = Enum.UserCFrame.Head
		if -0.2 >= VRUtil_upvr.GetUserCFrameWorldSpace(Head).LookVector.Y then
			Head = false
		else
			Head = true
		end
		if arg1.state.lookAway ~= Head then
			arg1:setState({
				lookAway = Head;
			})
		end
	end
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.fadeTransparency = any_createBinding_result1
	arg1.setFadeTransparency = any_createBinding_result2
	arg1.fadeTransparencyMotor = Otter_upvr.createSingleMotor(arg1.fadeTransparency:getValue())
	arg1.fadeTransparencyMotor:onStep(arg1.setFadeTransparency)
	var77 = Otter_upvr
	var77 = 0
	arg1.fadeTransparencyMotor:setGoal(var77.spring(var77, tbl_11_upvr.Default))
	function arg1.getAlignedPanelPart() -- Line 634
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var130
		if arg1.state.userGui then
			var130 = arg1.state.userGui:getPanel()
		else
			var130 = nil
		end
		if var130 then
		end
		local var132
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var132 = var130:IsUIManagerManagedType()
			return var132
		end
		if var132 and (var130:IsPositionLockedType() or INLINED_3()) then
			var132 = var130:IsVisible()
			if not var132 then
				var132 = var130.alwaysUpdatePosition
			end
		end
		if var132 then
			return var130:GetPart()
		end
	end
	function arg1.bottomBarPanelOffsetCallback(arg1_6) -- Line 645
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: VRUtil_upvr (copied, readonly)
		]]
		local finalPosition = arg1_6.finalPosition
		local cameraHeadScale_2 = arg1_6.cameraHeadScale
		local any_getAlignedPanelPart_result1 = arg1.getAlignedPanelPart()
		if any_getAlignedPanelPart_result1 then
			local any_ToWorldSpace_result1 = any_getAlignedPanelPart_result1.CFrame:ToWorldSpace(CFrame.new(0, 0, arg1.state.zOffset * cameraHeadScale_2 - any_getAlignedPanelPart_result1.Size.Z * 0.5))
			finalPosition = Vector3.new(any_ToWorldSpace_result1.Position.X, VRUtil_upvr.GetUserCFrameWorldSpace(Enum.UserCFrame.Head).Position.Y + arg1.state.yOffset * cameraHeadScale_2, any_ToWorldSpace_result1.Position.Z)
		end
		return finalPosition
	end
	function arg1.moreMenuPanelOffsetCallback(arg1_7) -- Line 668
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: VRUtil_upvr (copied, readonly)
			[3]: var30_upvr (copied, readonly)
			[4]: FFlagVRBottomBarDebugPositionConfig_upvr (copied, readonly)
		]]
		local finalPosition_2 = arg1_7.finalPosition
		local cameraHeadScale = arg1_7.cameraHeadScale
		local any_getAlignedPanelPart_result1_2 = arg1.getAlignedPanelPart()
		local var142
		if any_getAlignedPanelPart_result1_2 then
			var142 = VRUtil_upvr.GetUserCFrameWorldSpace(Enum.UserCFrame.Head).Position
			var142 = 0.2
			var142 = var30_upvr
			local var143 = (var142 + arg1.state.zOffset / 10) * var142
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var142 = (#arg1.state.itemList - 3) / 2 * var143
				return var142
			end
			if not FFlagVRBottomBarDebugPositionConfig_upvr or not INLINED_4() then
				var142 = (#arg1.state.itemList - 2.5) / 2 * var143
			end
			finalPosition_2 = CFrame.new(CFrame.new(arg1.bottomBarPanelOffsetCallback(arg1_7), var142):ToWorldSpace(CFrame.new(-var142 * cameraHeadScale, var143 / 2 * cameraHeadScale, -0.025)).Position) * any_getAlignedPanelPart_result1_2.CFrame.Rotation:ToWorldSpace(CFrame.new(0, #arg1.state.moreItemList * var143 / 2 * cameraHeadScale, 0.025)).Position
		end
		return finalPosition_2
	end
	function arg1.moreMenuPanelTiltCallback(arg1_8) -- Line 697
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local panelCFrame = arg1_8.panelCFrame
		local any_getAlignedPanelPart_result1_3 = arg1.getAlignedPanelPart()
		if any_getAlignedPanelPart_result1_3 then
			panelCFrame = CFrame.new(panelCFrame.Position) * any_getAlignedPanelPart_result1_3.CFrame.Rotation
		end
		return panelCFrame
	end
	-- KONSTANTERROR: [28] 21. Error Block 15 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 708
	--[[ Upvalues[2]:
		[1]: EmotesMenuMaster_upvr (readonly)
		[2]: BackpackScript_upvr (readonly)
	]]
	arg1.emotesLoaded = EmotesMenuMaster_upvr:isEmotesLoaded()
	arg1.backpackHasItems = BackpackScript_upvr.IsInventoryEmpty()
	arg1.updateItemListState()
end
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local GetFFlagEnableVrVoiceParity_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableVrVoiceParity
function any_extend_result1.updateItems(arg1) -- Line 715
	--[[ Upvalues[22]:
		[1]: StarterGui_upvr (readonly)
		[2]: IsSpatialRobloxGuiEnabled_upvr (readonly)
		[3]: tbl_38_upvr (readonly)
		[4]: tbl_18_upvr (readonly)
		[5]: FFlagVRBottomBarDebugPositionConfig_upvr (readonly)
		[6]: tbl_39_upvr (readonly)
		[7]: StarterPlayer_upvr (readonly)
		[8]: tbl_20_upvr (readonly)
		[9]: GetFFlagEnableVrVoiceParity_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: tbl_36_upvr (readonly)
		[12]: FFlagVRMoveVoiceIndicatorToBottomBar_upvr (readonly)
		[13]: VRHub_upvr (readonly)
		[14]: tbl_35_upvr (readonly)
		[15]: tbl_41_upvr (readonly)
		[16]: FFlagVRBottomBarHighlightedLeaveGameIcon_upvr (readonly)
		[17]: tbl_upvr (readonly)
		[18]: tbl_46_upvr (readonly)
		[19]: tbl_10_upvr (readonly)
		[20]: tbl_29_upvr (readonly)
		[21]: tbl_22_upvr (readonly)
		[22]: tbl_21_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var149
	if IsSpatialRobloxGuiEnabled_upvr then
		var149 = {tbl_38_upvr, tbl_18_upvr}
		if FFlagVRBottomBarDebugPositionConfig_upvr then
			var149 = {arg1.getDebugYOffsetUp(), arg1.getDebugYOffsetDown(), arg1.getDebugZOffsetUp(), arg1.getDebugZOffsetDown(), arg1.getDebugTextLabel(), tbl_18_upvr, tbl_38_upvr, tbl_18_upvr}
			-- KONSTANTWARNING: GOTO [94] #69
		end
	else
		var149 = {tbl_38_upvr, tbl_18_upvr, tbl_39_upvr}
		if FFlagVRBottomBarDebugPositionConfig_upvr then
			local tbl_4 = {arg1.getDebugYOffsetUp(), arg1.getDebugYOffsetDown(), arg1.getDebugZOffsetUp(), arg1.getDebugZOffsetDown(), arg1.getDebugTextLabel(), tbl_18_upvr, tbl_38_upvr, tbl_18_upvr, tbl_39_upvr}
			var149 = tbl_4
		end
	end
	tbl_4 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)
	local var154 = tbl_4
	if var154 then
		local UserEmotesEnabled = StarterPlayer_upvr.UserEmotesEnabled
		if UserEmotesEnabled then
			if arg1.emotesLoaded ~= false then
				UserEmotesEnabled = false
			else
				UserEmotesEnabled = true
			end
		end
		var154 = not UserEmotesEnabled
	end
	UserEmotesEnabled = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack)
	local var156 = UserEmotesEnabled
	if var156 then
	end
	if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) then
		table.insert(var149, tbl_20_upvr)
	end
	if GetFFlagEnableVrVoiceParity_upvr() and default_upvr:ShouldShowJoinVoice() then
		table.insert(var149, tbl_36_upvr)
	end
	if FFlagVRMoveVoiceIndicatorToBottomBar_upvr and arg1.props.voiceEnabled then
		table.insert(var149, arg1.getVoiceIcon())
	end
	table.insert(var149, tbl_18_upvr)
	if VRHub_upvr.SafetyBubble and VRHub_upvr.SafetyBubble.enabled then
		table.insert(var149, tbl_35_upvr)
	else
		table.insert(var149, tbl_41_upvr)
	end
	if FFlagVRBottomBarHighlightedLeaveGameIcon_upvr then
		if VRHub_upvr.ShowHighlightedLeaveGameIcon then
			table.insert(var149, tbl_upvr)
		else
			table.insert(var149, tbl_46_upvr)
		end
	else
		table.insert(var149, tbl_46_upvr)
	end
	local module_4 = {}
	if var154 then
		table.insert(module_4, tbl_10_upvr)
	end
	if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
		table.insert(module_4, tbl_29_upvr)
	end
	if arg1.backpackHasItems then
		table.insert(module_4, tbl_22_upvr)
	end
	if 0 < #module_4 then
		table.insert(var149, tbl_21_upvr)
	end
	return var149, module_4
end
local Panel3D_upvr = UIBlox.Core.VR.Panel3D
local Constants_upvr = UIBlox.Core.VR.Constants
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnableVRBottomBarWorksBehindObjects")
local GuiService_upvr = game:GetService("GuiService")
local SystemBar_upvr = UIBlox.App.Navigation.SystemBar
local Placement_upvr = UIBlox.App.Navigation.Enum.Placement
local BaseMenu_upvr = UIBlox.App.Menu.BaseMenu
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.renderWithStyle(arg1, arg2) -- Line 807
	--[[ Upvalues[24]:
		[1]: var30_upvr (readonly)
		[2]: FFlagVRBottomBarDebugPositionConfig_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Panel3D_upvr (readonly)
		[5]: IsSpatialRobloxGuiEnabled_upvr (readonly)
		[6]: var16_upvw (read and write)
		[7]: Constants_upvr (readonly)
		[8]: game_GetEngineFeature_result1_upvr (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: var14_upvw (read and write)
		[11]: var13_upvw (read and write)
		[12]: var15_upvw (read and write)
		[13]: SystemBar_upvr (readonly)
		[14]: Placement_upvr (readonly)
		[15]: BaseMenu_upvr (readonly)
		[16]: ImageSetLabel_upvr (readonly)
		[17]: FFlagVRBottomBarHighlightedLeaveGameIcon_upvr (readonly)
		[18]: ExternalEventConnection_upvr (readonly)
		[19]: VRHub_upvr (readonly)
		[20]: StarterGui_upvr (readonly)
		[21]: BackpackScript_upvr (readonly)
		[22]: EmotesMenuMaster_upvr (readonly)
		[23]: RunService_upvr (readonly)
		[24]: VRService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var205 = (0.2 + arg1.state.zOffset / 10) * var30_upvr
	local itemList_2 = arg1.state.itemList
	local state_2 = arg1.state
	local moreItemList_2 = state_2.moreItemList
	local var209
	if var209 then
		state_2 = 7
	else
		state_2 = 1
	end
	var209 = arg1.state.vrMenuOpen
	if not var209 then
		if FFlagVRBottomBarDebugPositionConfig_upvr then
			var209 = 9
		else
			var209 = 3
		end
		state_2 = var209
	else
		var209 = arg1.state.moreMenuOpen
		if var209 then
			var209 = #moreItemList_2
			if 0 < var209 then
				state_2 = #itemList_2
			end
		end
	end
	var209 = Roact_upvr.createFragment
	local tbl_28 = {}
	local tbl_6 = {
		panelName = "BottomBar";
	}
	local var212
	if IsSpatialRobloxGuiEnabled_upvr then
		var212 = Vector2.new((#itemList_2 - 1) * var16_upvw.BOTTOM_BAR_BASE_PART_SIZE * workspace.CurrentCamera.HeadScale, var16_upvw.BOTTOM_BAR_BASE_PART_SIZE * workspace.CurrentCamera.HeadScale)
	else
		var212 = Vector2.new((#itemList_2 - 1) * var205, var205)
	end
	tbl_6.partSize = var212
	tbl_6.virtualScreenSize = Vector2.new((#itemList_2 - 1) * 50, 50)
	if not arg1.state.vrMenuOpen or not CFrame.new(0, 0, 0) then
	end
	tbl_6.offset = CFrame.new(0, -0.5, 0)
	tbl_6.offsetCallback = arg1.bottomBarPanelOffsetCallback
	tbl_6.lerp = true
	local var213 = 0
	tbl_6.tilt = var213
	if IsSpatialRobloxGuiEnabled_upvr then
		var213 = Constants_upvr.AnchoringTypes.PanelManaged
	else
		var213 = Constants_upvr.AnchoringTypes.Head
	end
	tbl_6.anchoring = var213
	tbl_6.faceCamera = true
	local var214 = 0
	tbl_6.curvature = var214
	if game_GetEngineFeature_result1_upvr then
		var214 = true
	else
		var214 = nil
	end
	tbl_6.alwaysOnTop = var214
	if not game_GetEngineFeature_result1_upvr or not GuiService_upvr.CoreGuiFolder then
	end
	tbl_6.parent = nil
	tbl_6.zOffset = 1
	if IsSpatialRobloxGuiEnabled_upvr then
		local function _(arg1_11) -- Line 844
			--[[ Upvalues[3]:
				[1]: var14_upvw (copied, read and write)
				[2]: var13_upvw (copied, read and write)
				[3]: var15_upvw (copied, read and write)
			]]
			if arg1_11 then
				var14_upvw(arg1_11, var13_upvw.BottomBar)
			else
				var15_upvw.getInstance():removeRoactPanel(var13_upvw.BottomBar)
			end
		end
	else
	end
	tbl_6.connectPanelManagerFunction = nil
	local tbl_16 = {
		CanvasGroup = Roact_upvr.createElement("CanvasGroup", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			GroupTransparency = arg1.fadeTransparency;
			Size = UDim2.new(1, 0, 1, 0);
		}, {
			SystemBar = Roact_upvr.createElement(SystemBar_upvr, {
				itemList = itemList_2;
				selection = state_2;
				placement = Placement_upvr.Bottom;
				hidden = arg1.state.hidden;
				onSafeAreaChanged = function() -- Line 864, Named "onSafeAreaChanged"
				end;
				size = UDim2.new(1, 0, 1, 0);
				position = UDim2.new();
				layoutOrder = 1;
				roundCorners = true;
				buttonStroke = true;
				bgTransparency = 0;
				sortOrder = Enum.SortOrder.LayoutOrder;
			});
		});
	}
	tbl_28.BottomBarPanel3D = Roact_upvr.createElement(Panel3D_upvr, tbl_6, tbl_16)
	if arg1.state.moreMenuOpen then
		local tbl_15 = {}
		tbl_16 = "MoreMenu"
		local var221 = tbl_16
		tbl_15.panelName = var221
		if IsSpatialRobloxGuiEnabled_upvr then
			var221 = Vector2.new(5 * var16_upvw.BOTTOM_BAR_BASE_PART_SIZE * workspace.CurrentCamera.HeadScale, #moreItemList_2 * var16_upvw.BOTTOM_BAR_BASE_PART_SIZE * workspace.CurrentCamera.HeadScale)
		else
			var221 = Vector2.new(5 * var205, #moreItemList_2 * var205)
		end
		tbl_15.partSize = var221
		tbl_15.virtualScreenSize = Vector2.new(250, #moreItemList_2 * 56 + 8)
		if not arg1.state.vrMenuOpen or not CFrame.new(0, 0, 0) then
		end
		tbl_15.offset = CFrame.new(0, -0.5, 0)
		tbl_15.offsetCallback = arg1.moreMenuPanelOffsetCallback
		tbl_15.lerp = true
		tbl_15.tilt = 0
		local moreMenuPanelTiltCallback_2 = arg1.moreMenuPanelTiltCallback
		tbl_15.tiltCallback = moreMenuPanelTiltCallback_2
		if IsSpatialRobloxGuiEnabled_upvr then
			moreMenuPanelTiltCallback_2 = Constants_upvr.AnchoringTypes.PanelManaged
		else
			moreMenuPanelTiltCallback_2 = Constants_upvr.AnchoringTypes.Head
		end
		tbl_15.anchoring = moreMenuPanelTiltCallback_2
		moreMenuPanelTiltCallback_2 = true
		local var223 = moreMenuPanelTiltCallback_2
		tbl_15.faceCamera = var223
		if game_GetEngineFeature_result1_upvr then
			var223 = true
		else
			var223 = nil
		end
		tbl_15.alwaysOnTop = var223
		if not game_GetEngineFeature_result1_upvr or not GuiService_upvr.CoreGuiFolder then
		end
		tbl_15.parent = nil
		if IsSpatialRobloxGuiEnabled_upvr then
			local function _(arg1_12) -- Line 896
				--[[ Upvalues[3]:
					[1]: var14_upvw (copied, read and write)
					[2]: var13_upvw (copied, read and write)
					[3]: var15_upvw (copied, read and write)
				]]
				if arg1_12 then
					var14_upvw(arg1_12, var13_upvw.MoreMenu)
				else
					var15_upvw.getInstance():removeRoactPanel(var13_upvw.MoreMenu)
				end
			end
		else
		end
		tbl_15.connectPanelManagerFunction = nil
		tbl_15.zOffset = 2
	end
	tbl_28.MoreMenuPanel3D = Roact_upvr.createElement(Panel3D_upvr, tbl_15, {
		Content = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
		}, {
			MoreMenu = Roact_upvr.createElement(BaseMenu_upvr, {
				anchorPoint = Vector2.new(0.5, 1);
				buttonProps = moreItemList_2;
				position = UDim2.new(0.5, 0, 1, -8);
				background = arg2.Theme.BackgroundContrast;
			});
			Caret = Roact_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0.5, 1);
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/MenuBar/dropdown-arrow.png";
				ImageColor3 = Color3.fromRGB(25, 27, 29);
				Position = UDim2.new(0.5, 0, 1, 0);
				Size = UDim2.new(0, 24, 0, 10);
			});
		});
	})
	local var230 = FFlagVRBottomBarHighlightedLeaveGameIcon_upvr
	if var230 then
		var230 = Roact_upvr.createElement
		var230 = var230(ExternalEventConnection_upvr, {
			event = VRHub_upvr.ShowHighlightedLeaveGameIconToggled.Event;
			callback = arg1.updateItemListState;
		})
	end
	tbl_28.ShowHighlightedLeaveGameIconToggled = var230
	tbl_28.ShowTopBarChanged = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = VRHub_upvr.ShowTopBarChanged.Event;
		callback = arg1.onShowTopBarChanged;
	})
	tbl_28.ShowMoreMenuChanged = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = VRHub_upvr.ShowMoreMenuChanged.Event;
		callback = arg1.onShowMoreMenuChanged;
	})
	tbl_28.CoreGuiChanged = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = StarterGui_upvr.CoreGuiChangedSignal;
		callback = arg1.updateItemListState;
	})
	local SafetyBubble = VRHub_upvr.SafetyBubble
	if SafetyBubble then
		SafetyBubble = Roact_upvr.createElement
		SafetyBubble = SafetyBubble(ExternalEventConnection_upvr, {
			event = VRHub_upvr.SafetyBubble.Toggled.Event;
			callback = arg1.updateItemListState;
		})
	end
	tbl_28.SafetyBubbleToggled = SafetyBubble
	tbl_28.BackpackItemAdded = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = BackpackScript_upvr.BackpackItemAdded.Event;
		callback = arg1.onBackpackItemAdded;
	})
	tbl_28.BackpackEmpty = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = BackpackScript_upvr.BackpackEmpty.Event;
		callback = arg1.onBackpackEmpty;
	})
	tbl_28.EmotesLoaded = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = EmotesMenuMaster_upvr.EmotesLoaded.Event;
		callback = arg1.onEmotesLoaded;
	})
	tbl_28.RenderStepped = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = RunService_upvr.RenderStepped;
		callback = arg1.onRenderStepped;
	})
	tbl_28.VREnabled = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = VRService_upvr:GetPropertyChangedSignal("VREnabled");
		callback = arg1.onVREnabledChanged;
	})
	var209 = var209(tbl_28)
	return var209
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
function any_extend_result1.render(arg1) -- Line 971
	--[[ Upvalues[1]:
		[1]: withStyle_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_13) -- Line 972
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithStyle(arg1_13)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 977
	--[[ Upvalues[4]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: VRHub_upvr (readonly)
		[4]: FFlagVRMoveVoiceIndicatorToBottomBar_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var244
	if var244 ~= arg1.state.lookAway or arg3.vrMenuOpen ~= arg1.state.vrMenuOpen then
		if not arg1.state.vrMenuOpen then
		end
		if arg1.state.lookAway then
			arg1.fadeTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_11_upvr.Slower))
		else
			arg1.fadeTransparencyMotor:setGoal(Otter_upvr.spring(0, tbl_11_upvr.Default))
		end
	end
	if arg1.state.moreMenuOpen and #arg1.state.moreItemList == 0 then
		VRHub_upvr:SetShowMoreMenu(false)
	end
	if FFlagVRMoveVoiceIndicatorToBottomBar_upvr and arg2.voiceEnabled ~= arg1.props.voiceEnabled then
		arg1.updateItemListState()
	elseif arg3.yOffset ~= arg1.state.yOffset or arg3.zOffset ~= arg1.state.zOffset then
		arg1.updateItemListState()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 999
	arg1.fadeTransparencyMotor:stop()
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, nil)(any_extend_result1)