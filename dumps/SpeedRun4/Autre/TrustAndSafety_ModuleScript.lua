-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:49
-- Luau version 6, Types version 3
-- Time taken: 0.002288 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Service = require(Chrome.Service)
local var4_upvw = false
local any_new_result1_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Signal.new()
local any_new_result1_upvr_2 = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(any_new_result1_upvr, function() -- Line 20
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	return var4_upvw
end)
task.defer(function() -- Line 25
	--[[ Upvalues[3]:
		[1]: RobloxGui_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: any_new_result1_upvr (readonly)
	]]
	local SettingsHub_2_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	SettingsHub_2_upvr.CurrentPageSignal:connect(function(arg1) -- Line 27
		--[[ Upvalues[3]:
			[1]: var4_upvw (copied, read and write)
			[2]: SettingsHub_2_upvr (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
		]]
		local var11
		if arg1 ~= SettingsHub_2_upvr.Instance.ReportAbusePage.Page.Name then
			var11 = false
		else
			var11 = true
		end
		var4_upvw = var11
		var11 = any_new_result1_upvr:fire
		var11()
	end)
end)
local module = {
	initialAvailability = Service.AvailabilitySignal.Available;
	id = "trust_and_safety";
	label = "CoreScripts.InGameMenu.QuickActions.Report";
	activated = function(arg1) -- Line 37, Named "activated"
		--[[ Upvalues[2]:
			[1]: RobloxGui_upvr (readonly)
			[2]: var4_upvw (read and write)
		]]
		local SettingsHub = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
		if SettingsHub:GetVisibility() then
			if var4_upvw then
				SettingsHub:SetVisibility(false)
			else
				SettingsHub:SwitchToPage(SettingsHub.Instance.ReportAbusePage, true)
			end
		end
		SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ReportAbusePage)
	end;
	isActivated = function() -- Line 49, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return any_new_result1_upvr_2:get()
	end;
}
local tbl = {}
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
function tbl.Icon(arg1) -- Line 53
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr_2 (readonly)
	]]
	return CommonIcon_upvr("icons/menu/safety_off", "icons/menu/safety_on", any_new_result1_upvr_2)
end
module.components = tbl
return Service:register(module)