-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:02
-- Luau version 6, Types version 3
-- Time taken: 0.001616 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local FFlagRefactorInExpGameSettings = require(Modules.Settings.Flags.FFlagRefactorInExpGameSettings)
local var5_upvw
local var6_upvw
if FFlagRefactorInExpGameSettings() then
	local Integrations = require(Modules.Settings.Integrations)
	var5_upvw = Integrations.Utils
	var6_upvw = Integrations.Constants
end
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local SettingsPageFactory_upvr = require(Modules.Settings.SettingsPageFactory)
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local React_upvr = require(CorePackages.Packages.React)
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local SettingReactView_upvr = require(CorePackages.Workspace.Packages.SettingReactView).SettingReactView
local SharedSettingsService_upvr = require(Modules.Settings.Resources.SharedSettingsService)
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
if FFlagRefactorInExpGameSettings() then
	return (function() -- Line 39, Named "createGameSettings"
		--[[ Upvalues[10]:
			[1]: SettingsPageFactory_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: Theme_upvr (readonly)
			[4]: React_upvr (readonly)
			[5]: FoundationProvider_upvr (readonly)
			[6]: Foundation_upvr (readonly)
			[7]: var5_upvw (read and write)
			[8]: SettingReactView_upvr (readonly)
			[9]: SharedSettingsService_upvr (readonly)
			[10]: ReactRoblox_upvr (readonly)
		]]
		local any_CreateNewPage_result1_upvr = SettingsPageFactory_upvr:CreateNewPage()
		any_CreateNewPage_result1_upvr.TabHeader.Name = var6_upvw.GAMESETTINGS.TAB_HEADER.NAME
		local var17 = Theme_upvr.Images[var6_upvw.GAMESETTINGS.TAB_HEADER.ICON]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectOffset = var17.ImageRectOffset
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectSize = var17.ImageRectSize
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = var17.Image
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.Text = var6_upvw.GAMESETTINGS.TAB_HEADER.TEXT
		any_CreateNewPage_result1_upvr.Page:ClearAllChildren()
		any_CreateNewPage_result1_upvr.PageOpen = false
		function any_CreateNewPage_result1_upvr.OpenSettingsPage() -- Line 54
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr.PageOpen = true
		end
		function any_CreateNewPage_result1_upvr.CloseSettingsPage() -- Line 57
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr.PageOpen = false
		end
		ReactRoblox_upvr.createRoot(any_CreateNewPage_result1_upvr.Page):render(React_upvr.createElement(FoundationProvider_upvr, {
			theme = Foundation_upvr.Enums.Theme.Dark;
			device = var5_upvw.getDeviceType();
		}, {
			Child = React_upvr.createElement(SettingReactView_upvr, {
				service = SharedSettingsService_upvr;
				pageId = var6_upvw.GAMESETTINGS.PAGE_ID;
			});
		}))
		return any_CreateNewPage_result1_upvr
	end)()
end
return require(Modules.Settings.Pages.GameSettings)