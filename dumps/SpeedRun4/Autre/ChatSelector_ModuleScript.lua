-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:38
-- Luau version 6, Types version 3
-- Time taken: 0.009372 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local StarterGui_upvr = game:GetService("StarterGui")
local Players_upvr = game:GetService("Players")
local ChatUtil = require(RobloxGui_upvr.Modules.ChatUtil)
local ClassicChat_upvr = Players_upvr.ClassicChat
local BubbleChat_upvr = Players_upvr.BubbleChat
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local getFFlagAppChatCoreUIConflictFix = SharedFlags.getFFlagAppChatCoreUIConflictFix
local TenFootInterfaceExpChatExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
local var11_upvw
local var12_upvr
if getFFlagAppChatCoreUIConflictFix() then
	var12_upvr = {}
else
	var12_upvr = nil
end
local tbl_upvr = {
	Visible = not game:GetService("VRService").VREnabled;
}
local module_upvr = {
	ToggleVisibility = function(arg1) -- Line 43, Named "ToggleVisibility"
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: tbl_upvr (readonly)
		]]
		if var11_upvw then
			var11_upvw:ToggleVisibility()
		else
			tbl_upvr.Visible = not tbl_upvr.Visible
		end
	end;
	SetVisible = function(arg1, arg2) -- Line 51, Named "SetVisible"
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: tbl_upvr (readonly)
		]]
		if var11_upvw then
			var11_upvw:SetVisible(arg2)
		else
			tbl_upvr.Visible = arg2
		end
	end;
	FocusChatBar = function(arg1) -- Line 59, Named "FocusChatBar"
		--[[ Upvalues[1]:
			[1]: var11_upvw (read and write)
		]]
		if var11_upvw then
			var11_upvw:FocusChatBar()
		end
	end;
}
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagChromeChatGamepadSupportFix_upvr = SharedFlags.FFlagChromeChatGamepadSupportFix
function module_upvr.FocusSelectChatBar(arg1, arg2, arg3) -- Line 65
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[3]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[4]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	if var11_upvw and FFlagConsoleChatOnExpControls_upvr and (FFlagChromeChatGamepadSupportFix_upvr or TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled()) then
		var11_upvw:FocusSelectChatBar(arg2, arg3)
	end
end
function module_upvr.EnterWhisperState(arg1, arg2) -- Line 73
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	if var11_upvw then
		return var11_upvw:EnterWhisperState(arg2)
	end
end
function module_upvr.GetVisibility(arg1) -- Line 79
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	if var11_upvw then
		return var11_upvw:GetVisibility()
	end
	return tbl_upvr.Visible
end
function module_upvr.GetMessageCount(arg1) -- Line 87
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	if var11_upvw then
		return var11_upvw:GetMessageCount()
	end
	return 0
end
function module_upvr.TopbarEnabledChanged(arg1, ...) -- Line 95
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	if var11_upvw then
		return var11_upvw:TopbarEnabledChanged(...)
	end
end
function module_upvr.IsFocused(arg1, arg2) -- Line 101
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	if var11_upvw then
		return var11_upvw:IsFocused(arg2)
	end
	return false
end
function module_upvr.ClassicChatEnabled(arg1) -- Line 109
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: ClassicChat_upvr (readonly)
	]]
	if var11_upvw then
		return var11_upvw:ClassicChatEnabled()
	end
	return ClassicChat_upvr
end
function module_upvr.IsBubbleChatOnly(arg1) -- Line 117
	--[[ Upvalues[3]:
		[1]: var11_upvw (read and write)
		[2]: BubbleChat_upvr (readonly)
		[3]: ClassicChat_upvr (readonly)
	]]
	if var11_upvw then
		return var11_upvw:IsBubbleChatOnly()
	end
	local var17 = BubbleChat_upvr
	if var17 then
		var17 = not ClassicChat_upvr
	end
	return var17
end
function module_upvr.IsDisabled(arg1) -- Line 124
	--[[ Upvalues[3]:
		[1]: var11_upvw (read and write)
		[2]: BubbleChat_upvr (readonly)
		[3]: ClassicChat_upvr (readonly)
	]]
	if var11_upvw then
		return var11_upvw:IsDisabled()
	end
	local var18 = BubbleChat_upvr
	if not var18 then
		var18 = ClassicChat_upvr
	end
	return not var18
end
if getFFlagAppChatCoreUIConflictFix() then
	local var19_upvw
	function module_upvr.HideTemp(arg1, arg2, arg3) -- Line 132
		--[[ Upvalues[3]:
			[1]: var12_upvr (readonly)
			[2]: var19_upvw (read and write)
			[3]: module_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local function _() -- Line 133, Named "isHideTempKeysEmpty"
			--[[ Upvalues[1]:
				[1]: var12_upvr (copied, readonly)
			]]
			local var20
			if next(var12_upvr) ~= nil then
				var20 = false
			else
				var20 = true
			end
			return var20
		end
		local var21
		if next(var12_upvr) ~= nil then
			var21 = false
		else
			var21 = true
		end
		if var21 then
			var21 = module_upvr:GetVisibility()
			var19_upvw = var21
		end
		if arg3 then
			var21 = var12_upvr
			var21[arg2] = arg3
		else
			var21 = var12_upvr
			var21[arg2] = nil
		end
		var21 = module_upvr
		if var19_upvw then
			if next(var12_upvr) ~= nil then
			else
			end
		end
		var21 = var21:SetVisible
		var21(true)
	end
end
module_upvr.ChatBarFocusChanged = ChatUtil.Signal()
module_upvr.ChatWindowToggled = ChatUtil.Signal()
module_upvr.ChatActiveChanged = ChatUtil.Signal()
module_upvr.ChatActiveChanged:connect(function(arg1) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:SetVisible(arg1)
end)
module_upvr.VisibilityStateChanged = ChatUtil.Signal()
module_upvr.MessagesChanged = ChatUtil.Signal()
module_upvr.BubbleChatOnlySet = ChatUtil.Signal()
module_upvr.ChatDisabled = ChatUtil.Signal()
local var23_upvw = false
local tbl_upvr_2 = {}
local function NonFunc() -- Line 174
end
StarterGui_upvr:RegisterSetCore("ChatMakeSystemMessage", function(arg1) -- Line 169, Named "MakeSystemMessageQueueingFunction"
	--[[ Upvalues[2]:
		[1]: var23_upvw (read and write)
		[2]: tbl_upvr_2 (readonly)
	]]
	if var23_upvw then
	else
		table.insert(tbl_upvr_2, arg1)
	end
end)
StarterGui_upvr:RegisterSetCore("ChatWindowPosition", NonFunc)
StarterGui_upvr:RegisterGetCore("ChatWindowPosition", NonFunc)
StarterGui_upvr:RegisterSetCore("ChatWindowSize", NonFunc)
StarterGui_upvr:RegisterGetCore("ChatWindowSize", NonFunc)
StarterGui_upvr:RegisterSetCore("ChatBarDisabled", NonFunc)
StarterGui_upvr:RegisterGetCore("ChatBarDisabled", NonFunc)
StarterGui_upvr:RegisterGetCore("ChatActive", function() -- Line 184
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr:GetVisibility()
end)
StarterGui_upvr:RegisterSetCore("ChatActive", function(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.ChatActiveChanged:fire(arg1)
end)
local function _(arg1, arg2, arg3) -- Line 192, Named "ConnectSignals"
	if arg1[arg3] then
		arg1[arg3]:connect(function(...) -- Line 195
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg3 (readonly)
			]]
			arg2[arg3]:fire(...)
		end)
	end
end
if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() or not (game:GetService("GuiService"):IsTenFootInterface() or false) then
	coroutine.wrap(function() -- Line 202
		--[[ Upvalues[8]:
			[1]: var11_upvw (read and write)
			[2]: RobloxGui_upvr (readonly)
			[3]: module_upvr (readonly)
			[4]: Players_upvr (readonly)
			[5]: StarterGui_upvr (readonly)
			[6]: tbl_upvr (readonly)
			[7]: var23_upvw (read and write)
			[8]: tbl_upvr_2 (readonly)
		]]
		var11_upvw = require(RobloxGui_upvr.Modules.NewChat)
		local var31 = var11_upvw
		if var31.ChatBarFocusChanged then
			local var45_upvr = "ChatBarFocusChanged"
			var31.ChatBarFocusChanged:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		local var34 = var11_upvw
		if var34.VisibilityStateChanged then
			var45_upvr = "VisibilityStateChanged"
			var34.VisibilityStateChanged:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		local var36 = var11_upvw
		if var36.ChatWindowToggled then
			var45_upvr = "ChatWindowToggled"
			var36.ChatWindowToggled:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		local var38 = var11_upvw
		if var38.ChatActiveChanged then
			var45_upvr = "ChatActiveChanged"
			var38.ChatActiveChanged:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		local var40 = var11_upvw
		if var40.BubbleChatOnlySet then
			var45_upvr = "BubbleChatOnlySet"
			var40.BubbleChatOnlySet:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		local var42 = var11_upvw
		if var42.ChatDisabled then
			var45_upvr = "ChatDisabled"
			var42.ChatDisabled:connect(function(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var45_upvr (readonly)
				]]
				module_upvr[var45_upvr]:fire(...)
			end)
		end
		while Players_upvr.LocalPlayer == nil do
			Players_upvr.ChildAdded:wait()
		end
		local var44 = var11_upvw
		if var44.MessagesChanged then
			local var46_upvr = "MessagesChanged"
			function var45_upvr(...) -- Line 195
				--[[ Upvalues[2]:
					[1]: module_upvr (readonly)
					[2]: var46_upvr (readonly)
				]]
				module_upvr[var46_upvr]:fire(...)
			end
			var44.MessagesChanged:connect(var45_upvr)
		end
		var44 = StarterGui_upvr
		var44 = var44:RegisterGetCore
		var44("UseNewLuaChat", function() -- Line 217
			return true
		end)
		var44 = var11_upvw:SetVisible
		var44(tbl_upvr.Visible)
		var44 = StarterGui_upvr
		var46_upvr = Enum.CoreGuiType.Chat
		var44 = var44:SetCoreGuiEnabled
		var44(Enum.CoreGuiType.Chat, StarterGui_upvr:GetCoreGuiEnabled(var46_upvr))
		var44 = true
		var23_upvw = var44
		var44 = pairs(tbl_upvr_2)
		for _, v_upvr in pairs(tbl_upvr_2) do
			var46_upvr = pcall
			var46_upvr(function() -- Line 224
				--[[ Upvalues[2]:
					[1]: StarterGui_upvr (copied, readonly)
					[2]: v_upvr (readonly)
				]]
				StarterGui_upvr:SetCore("ChatMakeSystemMessage", v_upvr)
			end)
		end
	end)()
end
return module_upvr