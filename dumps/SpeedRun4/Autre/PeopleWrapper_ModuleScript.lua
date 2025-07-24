-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:07
-- Luau version 6, Types version 3
-- Time taken: 0.004327 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local FFlagRefactorPeoplePage = require(Modules.Settings.Flags.FFlagRefactorPeoplePage)
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local BuilderIcons_upvr = require(CorePackages.Packages.BuilderIcons)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local ReactFocusNavigation_upvr = require(CorePackages.Packages.ReactFocusNavigation)
local var9_upvw
local var10_upvw
if FFlagRefactorPeoplePage then
	var9_upvw = require(CorePackages.Workspace.Packages.PeopleReactView).Constants
	var10_upvw = require(Modules.Settings.Integrations).Utils
end
local SettingsPageFactory_upvr = require(Modules.Settings.SettingsPageFactory)
local FFlagUIBloxMigrateBuilderIcon_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local uiblox_upvr = BuilderIcons_upvr.Migration.uiblox
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local any_new_result1_upvr_2 = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new(game:GetService("LocalizationService").RobloxLocaleId)
local PeopleService_upvr = require(CorePackages.Workspace.Packages.PeopleService)
local React_upvr = require(CorePackages.Packages.React)
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local Provider_upvr = FocusNavigationUtils.FocusNavigableSurfaceRegistry.Provider
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local PeopleReactView_upvr = require(CorePackages.Workspace.Packages.PeopleReactView).PeopleReactView
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
if FFlagRefactorPeoplePage() then
	return (function() -- Line 51, Named "createPeoplePage"
		--[[ Upvalues[20]:
			[1]: SettingsPageFactory_upvr (readonly)
			[2]: var9_upvw (read and write)
			[3]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
			[4]: uiblox_upvr (readonly)
			[5]: BuilderIcons_upvr (readonly)
			[6]: Theme_upvr (readonly)
			[7]: any_new_result1_upvr_2 (readonly)
			[8]: PeopleService_upvr (readonly)
			[9]: React_upvr (readonly)
			[10]: ReactFocusNavigation_upvr (readonly)
			[11]: any_new_result1_upvr (readonly)
			[12]: Provider_upvr (readonly)
			[13]: LocalizationProvider_upvr (readonly)
			[14]: FoundationProvider_upvr (readonly)
			[15]: Foundation_upvr (readonly)
			[16]: var10_upvw (read and write)
			[17]: FocusRoot_upvr (readonly)
			[18]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
			[19]: PeopleReactView_upvr (readonly)
			[20]: ReactRoblox_upvr (readonly)
		]]
		local any_CreateNewPage_result1 = SettingsPageFactory_upvr:CreateNewPage()
		any_CreateNewPage_result1.TabHeader.Name = var9_upvw.PEOPLEPAGE.TAB_HEADER.NAME
		if FFlagUIBloxMigrateBuilderIcon_upvr then
			local var27 = uiblox_upvr[var9_upvw.PEOPLEPAGE.TAB_HEADER.ICON]
			any_CreateNewPage_result1.TabHeader.TabLabel.Icon.Text = var27.name
			any_CreateNewPage_result1.TabHeader.TabLabel.Icon.FontFace = BuilderIcons_upvr.Font[var27.variant]
		else
			local var28 = Theme_upvr.Images[var9_upvw.PEOPLEPAGE.TAB_HEADER.ICON]
			any_CreateNewPage_result1.TabHeader.TabLabel.Icon.ImageRectOffset = var28.ImageRectOffset
			any_CreateNewPage_result1.TabHeader.TabLabel.Icon.ImageRectSize = var28.ImageRectSize
			any_CreateNewPage_result1.TabHeader.TabLabel.Icon.Image = var28.Image
		end
		any_CreateNewPage_result1.TabHeader.TabLabel.Title.Text = any_new_result1_upvr_2:Format(var9_upvw.PEOPLEPAGE.TAB_HEADER.TEXT)
		PeopleService_upvr.SettingsHubService.register(any_CreateNewPage_result1)
		ReactRoblox_upvr.createRoot(any_CreateNewPage_result1.Page):render(React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
			value = any_new_result1_upvr;
		}, {
			FocusNavigationRegistryProvider = React_upvr.createElement(Provider_upvr, nil, {
				LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
					localization = any_new_result1_upvr_2;
				}, {
					FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
						theme = Foundation_upvr.Enums.Theme.Dark;
						device = var10_upvw.getDeviceType();
					}, {
						FocusRoot = React_upvr.createElement(FocusRoot_upvr, {
							surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.RouterView;
							isIsolated = true;
							isAutoFocusRoot = true;
						}, {
							PeopleReactView = React_upvr.createElement(PeopleReactView_upvr);
						});
					});
				});
			});
		}))
		return any_CreateNewPage_result1
	end)()
end
return require(Modules.Settings.Pages.Players)