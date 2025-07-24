-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:15
-- Luau version 6, Types version 3
-- Time taken: 0.000949 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local module = {}
local Roact_upvr = require(CorePackages.Packages.Roact)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local renderWithCoreScriptsStyleProvider_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Common.renderWithCoreScriptsStyleProvider)
local FTUXPanel_upvr = require(script.Components.FTUXPanel)
local GetFeatures_upvr = require(script.Features.GetFeatures)
function module.mountFtuxMenu(arg1) -- Line 22
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[6]: FTUXPanel_upvr (readonly)
		[7]: GetFeatures_upvr (readonly)
		[8]: CoreGui_upvr (readonly)
	]]
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
	local tbl_4 = {}
	local tbl = {}
	local tbl_2 = {}
	local tbl_3 = {}
	tbl_3.platform = arg1
	tbl_2.FtuxPanel = Roact_upvr.createElement(FTUXPanel_upvr, tbl_3, {})
	tbl.ThemeProvider = renderWithCoreScriptsStyleProvider_upvr(tbl_2)
	tbl_4.FTUXMenu = Roact_upvr.createElement("ScreenGui", {}, tbl)
	GetFeatures_upvr(arg1)
	Roact_upvr.mount(Roact_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_4), CoreGui_upvr, "FTUXMenu")
end
return module