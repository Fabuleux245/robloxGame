-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:56
-- Luau version 6, Types version 3
-- Time taken: 0.016936 seconds

local StarterGui_upvr = game:GetService("StarterGui")
local GuiService_upvr = game:GetService("GuiService")
local Players = game:GetService("Players")
local TextChatService_upvr = game:GetService("TextChatService")
local var5_upvw
if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
	var5_upvw = false
else
	var5_upvw = true
end
local ClassicChat_upvw = Players.ClassicChat
local BubbleChat_upvw = Players.BubbleChat
local ChatUtil = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ChatUtil)
local CorePackages = game:GetService("CorePackages")
local ExpChat_upvr = require(CorePackages.Workspace.Packages.ExpChat)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local getFFlagExpChatAlwaysRunTCS_upvr = SharedFlags.getFFlagExpChatAlwaysRunTCS
local getFFlagFireSignalForLegacyWindow_upvr = SharedFlags.getFFlagFireSignalForLegacyWindow
local GetFFlagUnreduxChatTransparency_upvr = SharedFlags.GetFFlagUnreduxChatTransparency
local TenFootInterfaceExpChatExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
local any_GetTransparencyStore_result1_upvr = ExpChat_upvr.Stores.GetTransparencyStore(false)
local function _() -- Line 40, Named "shouldForceLegacyChatToBeHidden"
	--[[ Upvalues[4]:
		[1]: getFFlagFireSignalForLegacyWindow_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: TextChatService_upvr (readonly)
		[4]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
	]]
	local getFFlagFireSignalForLegacyWindow_upvr_result1_2 = getFFlagFireSignalForLegacyWindow_upvr()
	if getFFlagFireSignalForLegacyWindow_upvr_result1_2 then
		if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
			getFFlagFireSignalForLegacyWindow_upvr_result1_2 = false
		else
			getFFlagFireSignalForLegacyWindow_upvr_result1_2 = true
		end
		var5_upvw = getFFlagFireSignalForLegacyWindow_upvr_result1_2
	end
	if getFFlagExpChatAlwaysRunTCS_upvr() then
		return var5_upvw
	end
	return false
end
local module_upvr = {}
local tbl_upvr = {
	Visible = true;
	MessageCount = 0;
	TopbarEnabled = true;
	CoreGuiEnabled = true;
}
local tbl_upvr_3 = {
	ChatWindow = nil;
	GetCore = nil;
	SetCore = nil;
}
local tbl_upvr_2 = {}
local function _(arg1, arg2, arg3) -- Line 69, Named "FindInCollectionByKeyAndType"
	if arg1 and arg1[arg2] and arg1[arg2]:IsA(arg3) then
		return arg1[arg2]
	end
	return nil
end
local function DispatchEvent_upvr(arg1, ...) -- Line 76, Named "DispatchEvent"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local ChatWindow = tbl_upvr_3.ChatWindow
	local var23
	if ChatWindow and ChatWindow[arg1] and ChatWindow[arg1]:IsA("BindableEvent") then
		var23 = ChatWindow[arg1]
	else
		var23 = nil
	end
	if var23 then
		var23:Fire(...)
		return true
	end
	return false
end
local function AttemptInvokeFunction_upvr(arg1, ...) -- Line 85, Named "AttemptInvokeFunction"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local ChatWindow_4 = tbl_upvr_3.ChatWindow
	local var25
	if ChatWindow_4 and ChatWindow_4[arg1] and ChatWindow_4[arg1]:IsA("BindableFunction") then
		var25 = ChatWindow_4[arg1]
	else
		var25 = nil
	end
	if var25 then
		return true, var25:Invoke()
	end
	return false, nil
end
local function _(arg1) -- Line 94, Named "DoConnectGetCore"
	--[[ Upvalues[2]:
		[1]: StarterGui_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	StarterGui_upvr:RegisterGetCore(arg1, function(arg1_2) -- Line 95
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local GetCore_6 = tbl_upvr_3.GetCore
		local var28 = arg1
		local var29
		if GetCore_6 and GetCore_6[var28] and GetCore_6[var28]:IsA("BindableFunction") then
			var29 = GetCore_6[var28]
		else
			var29 = nil
		end
		if var29 then
		end
		return var29:Invoke(arg1_2)
	end)
end
function module_upvr.ToggleVisibility(arg1) -- Line 106
	--[[ Upvalues[10]:
		[1]: tbl_upvr (readonly)
		[2]: getFFlagFireSignalForLegacyWindow_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: TextChatService_upvr (readonly)
		[5]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: DispatchEvent_upvr (readonly)
		[8]: ExpChat_upvr (readonly)
		[9]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[10]: any_GetTransparencyStore_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	tbl_upvr.Visible = not tbl_upvr.Visible
	local getFFlagFireSignalForLegacyWindow_upvr_result1 = getFFlagFireSignalForLegacyWindow_upvr()
	if getFFlagFireSignalForLegacyWindow_upvr_result1 then
		if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
			getFFlagFireSignalForLegacyWindow_upvr_result1 = false
		else
			getFFlagFireSignalForLegacyWindow_upvr_result1 = true
		end
		var5_upvw = getFFlagFireSignalForLegacyWindow_upvr_result1
	end
	if getFFlagExpChatAlwaysRunTCS_upvr() then
		-- KONSTANTWARNING: GOTO [26] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 29 start (CF ANALYSIS FAILED)
	if false then
		module_upvr.VisibilityStateChanged:fire(tbl_upvr.Visible)
	elseif not DispatchEvent_upvr("ToggleVisibility") then
		module_upvr.VisibilityStateChanged:fire(tbl_upvr.Visible)
	end
	ExpChat_upvr.Events.ChatTopBarButtonActivated(tbl_upvr.Visible)
	if GetFFlagUnreduxChatTransparency_upvr() and tbl_upvr.Visible then
		any_GetTransparencyStore_result1_upvr.resetAllTransparency()
	end
	module_upvr.ChatWindowToggled:fire(tbl_upvr.Visible)
	-- KONSTANTERROR: [25] 21. Error Block 29 end (CF ANALYSIS FAILED)
end
function module_upvr.SetVisible(arg1, arg2) -- Line 125
	--[[ Upvalues[10]:
		[1]: tbl_upvr (readonly)
		[2]: ExpChat_upvr (readonly)
		[3]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[4]: any_GetTransparencyStore_result1_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: getFFlagFireSignalForLegacyWindow_upvr (readonly)
		[7]: var5_upvw (read and write)
		[8]: TextChatService_upvr (readonly)
		[9]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
		[10]: DispatchEvent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	tbl_upvr.Visible = arg2
	ExpChat_upvr.Events.ChatTopBarButtonActivated(tbl_upvr.Visible)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 3 start (CF ANALYSIS FAILED)
	any_GetTransparencyStore_result1_upvr.resetAllTransparency()
	-- KONSTANTERROR: [19] 15. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 4 start (CF ANALYSIS FAILED)
	module_upvr.ChatWindowToggled:fire(tbl_upvr.Visible)
	-- KONSTANTERROR: [23] 18. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr.FocusChatBar(arg1) -- Line 148
	--[[ Upvalues[3]:
		[1]: DispatchEvent_upvr (readonly)
		[2]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[3]: ExpChat_upvr (readonly)
	]]
	DispatchEvent_upvr("FocusChatBar")
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		ExpChat_upvr.Events.ChatTopBarFocusActivated()
	end
end
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagChromeChatGamepadSupportFix_upvr = SharedFlags.FFlagChromeChatGamepadSupportFix
function module_upvr.FocusSelectChatBar(arg1, arg2, arg3) -- Line 156
	--[[ Upvalues[4]:
		[1]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[2]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[3]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[4]: ExpChat_upvr (readonly)
	]]
	if FFlagConsoleChatOnExpControls_upvr and (FFlagChromeChatGamepadSupportFix_upvr or TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled()) then
		ExpChat_upvr.Events.ChatTopBarFocusSelect(arg2, arg3)
	end
end
function module_upvr.EnterWhisperState(arg1, arg2) -- Line 162
	--[[ Upvalues[1]:
		[1]: DispatchEvent_upvr (readonly)
	]]
	return DispatchEvent_upvr("EnterWhisperState", arg2)
end
function module_upvr.GetVisibility(arg1) -- Line 166
	--[[ Upvalues[2]:
		[1]: AttemptInvokeFunction_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local AttemptInvokeFunction_upvr_result1, AttemptInvokeFunction_upvr_result2_2 = AttemptInvokeFunction_upvr("GetVisibility")
	if AttemptInvokeFunction_upvr_result1 then
		return AttemptInvokeFunction_upvr_result2_2
	end
	return tbl_upvr.Visible
end
function module_upvr.GetMessageCount(arg1) -- Line 175
	--[[ Upvalues[2]:
		[1]: AttemptInvokeFunction_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local AttemptInvokeFunction_upvr_result1_3, AttemptInvokeFunction_upvr_result2 = AttemptInvokeFunction_upvr("GetMessageCount")
	if AttemptInvokeFunction_upvr_result1_3 then
		return AttemptInvokeFunction_upvr_result2
	end
	return tbl_upvr.MessageCount
end
function module_upvr.TopbarEnabledChanged(arg1, arg2) -- Line 184
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: DispatchEvent_upvr (readonly)
	]]
	tbl_upvr.TopbarEnabled = arg2
	DispatchEvent_upvr("TopbarEnabledChanged", tbl_upvr.TopbarEnabled)
end
function module_upvr.IsFocused(arg1, arg2) -- Line 189
	--[[ Upvalues[1]:
		[1]: AttemptInvokeFunction_upvr (readonly)
	]]
	local AttemptInvokeFunction_upvr_result1_2, AttemptInvokeFunction_upvr_result2_3 = AttemptInvokeFunction_upvr("IsFocused", arg2)
	if AttemptInvokeFunction_upvr_result1_2 then
		return AttemptInvokeFunction_upvr_result2_3
	end
	return false
end
function module_upvr.ClassicChatEnabled(arg1) -- Line 198
	--[[ Upvalues[1]:
		[1]: ClassicChat_upvw (read and write)
	]]
	return ClassicChat_upvw
end
function module_upvr.IsBubbleChatOnly(arg1) -- Line 202
	--[[ Upvalues[2]:
		[1]: BubbleChat_upvw (read and write)
		[2]: ClassicChat_upvw (read and write)
	]]
	local var39 = BubbleChat_upvw
	if var39 then
		var39 = not ClassicChat_upvw
	end
	return var39
end
function module_upvr.IsDisabled(arg1) -- Line 206
	--[[ Upvalues[2]:
		[1]: BubbleChat_upvw (read and write)
		[2]: ClassicChat_upvw (read and write)
	]]
	local var40 = BubbleChat_upvw
	if not var40 then
		var40 = ClassicChat_upvw
	end
	return not var40
end
local var41_upvw = false
function SetInitialChatTypes(arg1) -- Line 210
	--[[ Upvalues[4]:
		[1]: var41_upvw (read and write)
		[2]: BubbleChat_upvw (read and write)
		[3]: ClassicChat_upvw (read and write)
		[4]: module_upvr (readonly)
	]]
	if var41_upvw then
	else
		var41_upvw = true
		local BubbleChatEnabled = arg1.BubbleChatEnabled
		local ClassicChatEnabled_2 = arg1.ClassicChatEnabled
		if type(BubbleChatEnabled) == "boolean" then
			BubbleChat_upvw = BubbleChatEnabled
		end
		if type(ClassicChatEnabled_2) == "boolean" then
			ClassicChat_upvw = ClassicChatEnabled_2
		end
		if not ClassicChat_upvw and not BubbleChat_upvw then
			module_upvr.ChatDisabled:fire()
		end
		if BubbleChat_upvw and not ClassicChat_upvw then
			module_upvr.BubbleChatOnlySet:fire()
		end
	end
end
module_upvr.ChatBarFocusChanged = ChatUtil.Signal()
module_upvr.VisibilityStateChanged = ChatUtil.Signal()
module_upvr.ChatWindowToggled = ChatUtil.Signal()
module_upvr.MessagesChanged = ChatUtil.Signal()
module_upvr.BubbleChatOnlySet = ChatUtil.Signal()
module_upvr.ChatDisabled = ChatUtil.Signal()
if SharedFlags.getFFlagExpChatMigrationSetup() then
	local Chat_upvr = game:GetService("Chat")
	Chat_upvr:GetPropertyChangedSignal("IsAutoMigrated"):Connect(function() -- Line 244
		--[[ Upvalues[3]:
			[1]: Chat_upvr (readonly)
			[2]: DispatchEvent_upvr (readonly)
			[3]: module_upvr (readonly)
		]]
		if Chat_upvr.IsAutoMigrated and not DispatchEvent_upvr("SetVisible", false) then
			module_upvr.VisibilityStateChanged:fire(false)
		end
	end)
end
Chat_upvr = StarterGui_upvr.CoreGuiChangedSignal
Chat_upvr = Chat_upvr:connect
Chat_upvr(function(arg1, arg2) -- Line 254
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: DispatchEvent_upvr (readonly)
	]]
	if arg1 == Enum.CoreGuiType.All or arg1 == Enum.CoreGuiType.Chat then
		tbl_upvr.CoreGuiEnabled = arg2
		DispatchEvent_upvr("CoreGuiEnabled", tbl_upvr.CoreGuiEnabled)
	end
end)
Chat_upvr = GuiService_upvr:AddSpecialKey
Chat_upvr(Enum.SpecialKey.ChatHotkey)
Chat_upvr = GuiService_upvr.SpecialKeyPressed
Chat_upvr = Chat_upvr:connect
Chat_upvr(function(arg1, arg2) -- Line 262
	--[[ Upvalues[6]:
		[1]: GuiService_upvr (readonly)
		[2]: getFFlagFireSignalForLegacyWindow_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: TextChatService_upvr (readonly)
		[5]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
		[6]: DispatchEvent_upvr (readonly)
	]]
	local var48
	if var48 then
	else
		local var13_result1 = getFFlagFireSignalForLegacyWindow_upvr()
		if var13_result1 then
			if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
				var13_result1 = false
			else
				var13_result1 = true
			end
			var5_upvw = var13_result1
		end
		if getFFlagExpChatAlwaysRunTCS_upvr() then
			var48 = var5_upvw
		else
			var48 = false
		end
		if not var48 then
			var48 = DispatchEvent_upvr
			var48("SpecialKeyPressed", arg1, arg2)
		end
	end
end)
function Chat_upvr(arg1) -- Line 272, Named "DoConnectSetCore"
	--[[ Upvalues[3]:
		[1]: StarterGui_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	StarterGui_upvr:RegisterSetCore(arg1, function(arg1_3) -- Line 273
		--[[ Upvalues[3]:
			[1]: tbl_upvr_3 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvr_2 (copied, readonly)
		]]
		local SetCore = tbl_upvr_3.SetCore
		local var52 = arg1
		local var53
		if SetCore and SetCore[var52] and SetCore[var52]:IsA("BindableEvent") then
			var53 = SetCore[var52]
		else
			var53 = nil
		end
		if var53 then
			var53:Fire(arg1_3)
		else
			if tbl_upvr_2[arg1] == nil then
				tbl_upvr_2[arg1] = {}
			end
			table.insert(tbl_upvr_2[arg1], arg1_3)
		end
	end)
end
DoConnectSetCore = Chat_upvr -- Setting global
Chat_upvr = DoConnectSetCore
Chat_upvr("ChatMakeSystemMessage")
Chat_upvr = DoConnectSetCore
Chat_upvr("ChatWindowPosition")
Chat_upvr = DoConnectSetCore
Chat_upvr("ChatWindowSize")
Chat_upvr = DoConnectSetCore
Chat_upvr("ChatBarDisabled")
local var55_upvr = "ChatWindowPosition"
Chat_upvr = StarterGui_upvr:RegisterGetCore
Chat_upvr("ChatWindowPosition", function(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: var55_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local GetCore_3 = tbl_upvr_3.GetCore
	local var57 = var55_upvr
	local var58
	if GetCore_3 and GetCore_3[var57] and GetCore_3[var57]:IsA("BindableFunction") then
		var58 = GetCore_3[var57]
	else
		var58 = nil
	end
	if var58 then
	end
	return var58:Invoke(arg1)
end)
var55_upvr = "ChatWindowSize"
Chat_upvr = StarterGui_upvr:RegisterGetCore
Chat_upvr("ChatWindowSize", function(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: var55_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local GetCore = tbl_upvr_3.GetCore
	local var61 = var55_upvr
	local var62
	if GetCore and GetCore[var61] and GetCore[var61]:IsA("BindableFunction") then
		var62 = GetCore[var61]
	else
		var62 = nil
	end
	if var62 then
	end
	return var62:Invoke(arg1)
end)
var55_upvr = "ChatBarDisabled"
Chat_upvr = StarterGui_upvr:RegisterGetCore
Chat_upvr("ChatBarDisabled", function(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: var55_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local GetCore_2 = tbl_upvr_3.GetCore
	local var65 = var55_upvr
	local var66
	if GetCore_2 and GetCore_2[var65] and GetCore_2[var65]:IsA("BindableFunction") then
		var66 = GetCore_2[var65]
	else
		var66 = nil
	end
	if var66 then
	end
	return var66:Invoke(arg1)
end)
local tbl_upvw = {}
function Chat_upvr(arg1) -- Line 295, Named "RegisterCoreGuiConnections"
	--[[ Upvalues[5]:
		[1]: tbl_upvw (read and write)
		[2]: tbl_upvr_3 (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
	]]
	if type(arg1) == "table" then
		local ChatWindow_3_upvr = arg1.ChatWindow
		local SetCore_3_upvr = arg1.SetCore
		local GetCore_4 = arg1.GetCore
		if type(ChatWindow_3_upvr) == "table" then
			for i, v in pairs(tbl_upvw) do
				v:disconnect()
			end
			if type(ChatWindow_3_upvr.ChatTypes) == "table" then
				SetInitialChatTypes(ChatWindow_3_upvr.ChatTypes)
			end
			tbl_upvw = {}
			tbl_upvr_3.ChatWindow = {}
			if ChatWindow_3_upvr and ChatWindow_3_upvr.ToggleVisibility then
				v = "BindableEvent"
				if ChatWindow_3_upvr.ToggleVisibility:IsA(v) then
					-- KONSTANTWARNING: GOTO [69] #47
				end
			end
			tbl_upvr_3.ChatWindow.ToggleVisibility = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.SetVisible then
				v = "BindableEvent"
				if ChatWindow_3_upvr.SetVisible:IsA(v) then
					-- KONSTANTWARNING: GOTO [89] #61
				end
			end
			tbl_upvr_3.ChatWindow.SetVisible = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.FocusChatBar then
				v = "BindableEvent"
				if ChatWindow_3_upvr.FocusChatBar:IsA(v) then
					-- KONSTANTWARNING: GOTO [109] #75
				end
			end
			tbl_upvr_3.ChatWindow.FocusChatBar = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.EnterWhisperState then
				v = "BindableEvent"
				if ChatWindow_3_upvr.EnterWhisperState:IsA(v) then
					-- KONSTANTWARNING: GOTO [129] #89
				end
			end
			tbl_upvr_3.ChatWindow.EnterWhisperState = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.TopbarEnabledChanged then
				v = "BindableEvent"
				if ChatWindow_3_upvr.TopbarEnabledChanged:IsA(v) then
					-- KONSTANTWARNING: GOTO [149] #103
				end
			end
			tbl_upvr_3.ChatWindow.TopbarEnabledChanged = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.IsFocused then
				v = "BindableFunction"
				if ChatWindow_3_upvr.IsFocused:IsA(v) then
					-- KONSTANTWARNING: GOTO [169] #117
				end
			end
			tbl_upvr_3.ChatWindow.IsFocused = nil
			if ChatWindow_3_upvr and ChatWindow_3_upvr.SpecialKeyPressed then
				v = "BindableEvent"
				if ChatWindow_3_upvr.SpecialKeyPressed:IsA(v) then
					-- KONSTANTWARNING: GOTO [189] #131
				end
			end
			tbl_upvr_3.ChatWindow.SpecialKeyPressed = nil
			local function DoConnect(arg1_7) -- Line 328
				--[[ Upvalues[4]:
					[1]: tbl_upvr_3 (copied, readonly)
					[2]: ChatWindow_3_upvr (readonly)
					[3]: module_upvr (copied, readonly)
					[4]: tbl_upvw (copied, read and write)
				]]
				local var111 = tbl_upvr_3
				local var112 = ChatWindow_3_upvr
				if var112 and var112[arg1_7] and var112[arg1_7]:IsA("BindableEvent") then
					var111 = var112[arg1_7]
				else
					var111 = nil
				end
				var111.ChatWindow[arg1_7] = var111
				var111 = tbl_upvr_3.ChatWindow
				if var111[arg1_7] then
					var111 = tbl_upvr_3.ChatWindow[arg1_7]
					var111 = table.insert
					var111(tbl_upvw, var111.Event:connect(function(...) -- Line 332
						--[[ Upvalues[2]:
							[1]: module_upvr (copied, readonly)
							[2]: arg1_7 (readonly)
						]]
						module_upvr[arg1_7]:fire(...)
					end))
				end
			end
			DoConnect("ChatBarFocusChanged")
			DoConnect("VisibilityStateChanged")
			DoConnect("ChatWindowToggled")
			DoConnect("MessagesChanged")
			if ChatWindow_3_upvr then
				i = ChatWindow_3_upvr.MessagePosted
				if i then
					i = ChatWindow_3_upvr.MessagePosted:IsA("BindableEvent")
					if i then
						-- KONSTANTWARNING: GOTO [226] #162
					end
				end
			end
			tbl_upvr_3.ChatWindow.MessagePosted = nil
			if tbl_upvr_3.ChatWindow.MessagePosted then
				table.insert(tbl_upvw, tbl_upvr_3.ChatWindow.MessagePosted.Event:connect(function(arg1_8) -- Line 348
					game:GetService("Players"):Chat(arg1_8)
				end))
			end
			module_upvr:SetVisible(tbl_upvr.Visible)
			module_upvr:TopbarEnabledChanged(tbl_upvr.TopbarEnabled)
			if ChatWindow_3_upvr and ChatWindow_3_upvr.CoreGuiEnabled then
				if ChatWindow_3_upvr.CoreGuiEnabled:IsA("BindableEvent") then
					-- KONSTANTWARNING: GOTO [281] #200
				end
			end
			local var115
			if var115 then
				tbl_upvr_3.ChatWindow.CoreGuiEnabled = var115
				var115:Fire(tbl_upvr.CoreGuiEnabled)
				-- KONSTANTWARNING: GOTO [298] #212
			end
		else
			error("Table 'ChatWindow' must be provided!")
		end
		if type(SetCore_3_upvr) == "table" and type(GetCore_4) == "table" then
			tbl_upvr_3.SetCore = {}
			tbl_upvr_3.GetCore = {}
			local function addSetCore(arg1_9) -- Line 370
				--[[ Upvalues[3]:
					[1]: SetCore_3_upvr (readonly)
					[2]: tbl_upvr_3 (copied, readonly)
					[3]: tbl_upvr_2 (copied, readonly)
				]]
				local var120 = SetCore_3_upvr
				local var121
				if var120 and var120[arg1_9] and var120[arg1_9]:IsA("BindableEvent") then
					var121 = var120[arg1_9]
				else
					var121 = nil
				end
				if var121 then
					tbl_upvr_3.SetCore[arg1_9] = var121
					if tbl_upvr_2[arg1_9] then
						for _, v_2 in pairs(tbl_upvr_2[arg1_9]) do
							var121:Fire(v_2)
						end
						tbl_upvr_2[arg1_9] = nil
					end
				end
			end
			addSetCore("ChatMakeSystemMessage")
			addSetCore("ChatWindowPosition")
			addSetCore("ChatWindowSize")
			addSetCore("ChatBarDisabled")
			if GetCore_4 then
				if GetCore_4.ChatWindowPosition then
					if GetCore_4.ChatWindowPosition:IsA("BindableFunction") then
						-- KONSTANTWARNING: GOTO [356] #257
					end
				end
			end
			tbl_upvr_3.GetCore.ChatWindowPosition = nil
			if GetCore_4 then
				if GetCore_4.ChatWindowSize then
					if GetCore_4.ChatWindowSize:IsA("BindableFunction") then
						-- KONSTANTWARNING: GOTO [376] #271
					end
				end
			end
			tbl_upvr_3.GetCore.ChatWindowSize = nil
			if GetCore_4 then
				if GetCore_4.ChatBarDisabled then
					if GetCore_4.ChatBarDisabled:IsA("BindableFunction") then
						-- KONSTANTWARNING: GOTO [396] #285
					end
				end
			end
			tbl_upvr_3.GetCore.ChatBarDisabled = nil
			return
		end
		if type(SetCore_3_upvr) ~= "nil" or type(GetCore_4) ~= "nil" then
			error("Both 'SetCore' and 'GetCore' must be tables if provided!")
		end
	end
end
ExpChat_upvr.listenToDispatch(function(arg1) -- Line 400
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.type == "FocusChatHotKeyActivated" then
		module_upvr:SetVisible(true)
	end
end)
var55_upvr = Chat_upvr
StarterGui_upvr:RegisterSetCore("CoreGuiChatConnections", var55_upvr)
return module_upvr