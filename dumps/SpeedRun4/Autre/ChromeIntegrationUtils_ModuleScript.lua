-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:33
-- Luau version 6, Types version 3
-- Time taken: 0.002044 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local var5_upvw
if FFlagConsoleChatOnExpControls_upvr then
	var5_upvw = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
end
local var6_upvw
if FFlagConsoleChatOnExpControls_upvr then
	var6_upvw = require(RobloxGui_upvr.Modules.TopBar.Components.GamepadConnector)
end
local FFlagChromeChatGamepadSupportFix_upvr = SharedFlags.FFlagChromeChatGamepadSupportFix
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
function dismissRobloxMenuAndRun(arg1) -- Line 24
	--[[ Upvalues[7]:
		[1]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[2]: FFlagChromeChatGamepadSupportFix_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: UserInputService_upvr (readonly)
		[5]: var6_upvw (read and write)
		[6]: RobloxGui_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	if FFlagConsoleChatOnExpControls_upvr and (FFlagChromeChatGamepadSupportFix_upvr or var5_upvw.getIsEnabled()) then
		if UserInputService_upvr.GamepadEnabled then
			var6_upvw.setTopbarActive(false)
		end
	end
	if GuiService_upvr.MenuIsOpen then
		local var11_upvw
		local var12_upvr = tick() + 3
		var11_upvw = GuiService_upvr.MenuClosed:Connect(function() -- Line 37
			--[[ Upvalues[3]:
				[1]: var11_upvw (read and write)
				[2]: var12_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			if var11_upvw then
				var11_upvw:Disconnect()
				var11_upvw = nil
			end
			if tick() < var12_upvr then
				arg1(true)
			end
		end)
		require(RobloxGui_upvr.Modules.Settings.SettingsHub):SetVisibility(false)
	else
		var12_upvr = arg1
		var12_upvr(false)
	end
end
return {
	dismissRobloxMenuAndRun = dismissRobloxMenuAndRun;
}