-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:32
-- Luau version 6, Types version 3
-- Time taken: 0.005497 seconds

-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local Chat_upvr = game:GetService("Chat")
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
local FocusSelectExpChat_upvr = require(Chrome.ChromeShared.Utility.FocusSelectExpChat)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local getFFlagAppChatCoreUIConflictFix_upvr = SharedFlags.getFFlagAppChatCoreUIConflictFix
local ChatSelector_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ChatSelector)
local GetFFlagSimpleChatUnreadMessageCount_upvr = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local var14_upvw
if FFlagConsoleChatOnExpControls_upvr then
	var14_upvw = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
end
local any_GetVisibility_result1_upvw = ChatSelector_upvr:GetVisibility()
local var16_upvw
local VisibilityStateChanged = ChatSelector_upvr.VisibilityStateChanged
local function _() -- Line 58, Named "localUserCanChat"
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	if not RunService_upvr:IsStudio() then
		local pcall_result1, pcall_result2 = pcall(function() -- Line 60
			--[[ Upvalues[2]:
				[1]: Chat_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			local var19
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var19 = Players_upvr.LocalPlayer.UserId
				return var19
			end
			if not Players_upvr.LocalPlayer or not INLINED() then
				var19 = 0
			end
			return Chat_upvr:CanUserChatAsync(var19)
		end)
		return pcall_result1 and pcall_result2
	end
	return true
end
VisibilityStateChanged:connect(function(arg1) -- Line 70
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	if arg1 then
		var16_upvw.availability:pinned()
	end
end)
ChatSelector_upvr.ChatWindowToggled:connect(function(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	if arg1 then
		var16_upvw.availability:pinned()
	end
end)
local GetFFlagFixMappedSignalRaceCondition_upvr = SharedFlags.GetFFlagFixMappedSignalRaceCondition
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("HideChatButtonForChatDisabledUsers", false)
local GuiService_upvr = game:GetService("GuiService")
local GameSettings_upvr = UserSettings().GameSettings
local const_number_upvw = 0
local any_new_result1_upvr = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(VisibilityStateChanged, function() -- Line 83
	--[[ Upvalues[1]:
		[1]: any_GetVisibility_result1_upvw (read and write)
	]]
	return any_GetVisibility_result1_upvw
end, function(arg1) -- Line 85
	--[[ Upvalues[12]:
		[1]: GetFFlagFixMappedSignalRaceCondition_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: Chat_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: var16_upvw (read and write)
		[8]: GuiService_upvr (readonly)
		[9]: GameSettings_upvr (readonly)
		[10]: any_GetVisibility_result1_upvw (read and write)
		[11]: GetFFlagSimpleChatUnreadMessageCount_upvr (readonly)
		[12]: const_number_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local var31
	if GetFFlagFixMappedSignalRaceCondition_upvr() then
		var31 = ChatSelector_upvr.GetVisibility()
	else
		var31 = arg1
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 11. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 11. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 12. Error Block 28 start (CF ANALYSIS FAILED)
	if not RunService_upvr:IsStudio() then
		local _, _ = pcall(function() -- Line 60
			--[[ Upvalues[2]:
				[1]: Chat_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			local var33
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var33 = Players_upvr.LocalPlayer.UserId
				return var33
			end
			if not Players_upvr.LocalPlayer or not INLINED_2() then
				var33 = 0
			end
			return Chat_upvr:CanUserChatAsync(var33)
		end)
	else
	end
	-- KONSTANTERROR: [12] 12. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 25. Error Block 11 start (CF ANALYSIS FAILED)
	var16_upvw.availability:unavailable()
	-- KONSTANTERROR: [27] 25. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 29. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 29. Error Block 12 end (CF ANALYSIS FAILED)
end)
local InExperienceAppChatModal_upvr = AppChat.App.InExperienceAppChatModal
local FFlagChromeChatGamepadSupportFix_upvr = SharedFlags.FFlagChromeChatGamepadSupportFix
local function var37_upvr(arg1) -- Line 112
	--[[ Upvalues[9]:
		[1]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
		[2]: InExperienceAppChatModal_upvr (readonly)
		[3]: ChatSelector_upvr (readonly)
		[4]: any_GetVisibility_result1_upvw (read and write)
		[5]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[6]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[7]: var14_upvw (read and write)
		[8]: FocusSelectExpChat_upvr (readonly)
		[9]: var16_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	if getFFlagAppChatCoreUIConflictFix_upvr() then
		if InExperienceAppChatModal_upvr:getVisible() then
			InExperienceAppChatModal_upvr.default:setVisible(false)
		end
		ChatSelector_upvr:SetVisible(true)
		-- KONSTANTWARNING: GOTO [33] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 25 start (CF ANALYSIS FAILED)
	if arg1 then
		if not any_GetVisibility_result1_upvw then
			ChatSelector_upvr:ToggleVisibility()
			-- KONSTANTWARNING: GOTO [33] #28
		end
	else
		ChatSelector_upvr:ToggleVisibility()
	end
	if FFlagConsoleChatOnExpControls_upvr and (FFlagChromeChatGamepadSupportFix_upvr or var14_upvw.getIsEnabled()) then
		FocusSelectExpChat_upvr(var16_upvw.id)
	end
	-- KONSTANTERROR: [21] 18. Error Block 25 end (CF ANALYSIS FAILED)
end
local tbl_2 = {
	id = "chat";
	label = "CoreScripts.TopBar.Chat";
}
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local ChromeIntegrationUtils_upvr = require(Chrome.Integrations.ChromeIntegrationUtils)
local function isActivated(arg1) -- Line 139, Named "activated"
	--[[ Upvalues[7]:
		[1]: any_GetVisibility_result1_upvw (read and write)
		[2]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
		[3]: ChatSelector_upvr (readonly)
		[4]: isInExperienceUIVREnabled_upvr (readonly)
		[5]: isSpatial_upvr (readonly)
		[6]: ChromeIntegrationUtils_upvr (readonly)
		[7]: var37_upvr (readonly)
	]]
	if any_GetVisibility_result1_upvw then
		if getFFlagAppChatCoreUIConflictFix_upvr() then
			ChatSelector_upvr:SetVisible(false)
		else
			ChatSelector_upvr:ToggleVisibility()
		end
	end
	if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
		ChatSelector_upvr:SetVisible(true)
	else
		ChromeIntegrationUtils_upvr.dismissRobloxMenuAndRun(function(arg1_2) -- Line 150
			--[[ Upvalues[1]:
				[1]: var37_upvr (copied, readonly)
			]]
			var37_upvr(arg1_2)
		end)
	end
end
tbl_2.activated = isActivated
function isActivated() -- Line 156
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:get()
end
local var46 = isActivated
tbl_2.isActivated = var46
if FFlagConsoleChatOnExpControls_upvr then
	local UserInputService_upvr = game:GetService("UserInputService")
	local Service_upvr = require(Chrome.Service)
	function var46(arg1) -- Line 160
		--[[ Upvalues[4]:
			[1]: UserInputService_upvr (readonly)
			[2]: FocusSelectExpChat_upvr (readonly)
			[3]: var16_upvw (read and write)
			[4]: Service_upvr (readonly)
		]]
		local var50_upvw
		var50_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_3) -- Line 162
			--[[ Upvalues[5]:
				[1]: FocusSelectExpChat_upvr (copied, readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: var50_upvw (read and write)
				[4]: Service_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			if arg1_3.KeyCode == Enum.KeyCode.DPadDown then
				FocusSelectExpChat_upvr(var16_upvw.id)
			end
			if var50_upvw and Service_upvr:selectedItem():get() ~= arg1.id then
				var50_upvw:Disconnect()
			end
		end)
	end
else
	var46 = nil
end
tbl_2.selected = var46
local tbl = {}
local getFFlagExpChatGetLabelAndIconFromUtil_upvr = SharedFlags.getFFlagExpChatGetLabelAndIconFromUtil
local getExperienceChatVisualConfig_upvr = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
local GetFFlagEnableAppChatInExperience_upvr = SharedFlags.GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = AppChat.App.InExperienceAppChatExperimentation
function tbl.Icon(arg1) -- Line 174
	--[[ Upvalues[6]:
		[1]: getFFlagExpChatGetLabelAndIconFromUtil_upvr (readonly)
		[2]: getExperienceChatVisualConfig_upvr (readonly)
		[3]: CommonIcon_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[6]: InExperienceAppChatExperimentation_upvr (readonly)
	]]
	if getFFlagExpChatGetLabelAndIconFromUtil_upvr() then
		local var53_result1 = getExperienceChatVisualConfig_upvr()
		return CommonIcon_upvr(var53_result1.icon.off, var53_result1.icon.on, any_new_result1_upvr)
	end
	if GetFFlagEnableAppChatInExperience_upvr() and InExperienceAppChatExperimentation_upvr.default.variant.ShowInExperienceChatNewIcon then
		return CommonIcon_upvr("icons/menu/publicChatOff", "icons/menu/publicChatOn", any_new_result1_upvr)
	end
	return CommonIcon_upvr("icons/menu/chat_off", "icons/menu/chat_on", any_new_result1_upvr)
end
tbl_2.components = tbl
var16_upvw = Service_upvr:register(tbl_2)
local var58_upvw = var16_upvw
-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [320] 219. Error Block 27 start (CF ANALYSIS FAILED)
game:GetService("TextChatService").MessageReceived:Connect(function() -- Line 194
	--[[ Upvalues[2]:
		[1]: any_GetVisibility_result1_upvw (read and write)
		[2]: var58_upvw (read and write)
	]]
	if not any_GetVisibility_result1_upvw and var58_upvw.notification:isEmpty() then
		var58_upvw.notification:fireCount(1)
	end
end)
if not SharedFlags.GetFFlagDisableLegacyChatSimpleUnreadMessageCount() then
	ChatSelector_upvr.MessagesChanged:connect(function(arg1) -- Line 202
		--[[ Upvalues[2]:
			[1]: any_GetVisibility_result1_upvw (read and write)
			[2]: var58_upvw (read and write)
		]]
		if not any_GetVisibility_result1_upvw and var58_upvw.notification:isEmpty() then
			var58_upvw.notification:fireCount(1)
		end
	end)
	-- KONSTANTWARNING: GOTO [361] #252
end
-- KONSTANTERROR: [320] 219. Error Block 27 end (CF ANALYSIS FAILED)