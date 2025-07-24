-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:02
-- Luau version 6, Types version 3
-- Time taken: 0.001240 seconds

local CorePackages = game:GetService("CorePackages")
local module_upvr = {}
module_upvr.__index = module_upvr
local Roact_upvr = require(CorePackages.Packages.Roact)
local PublishAssetPromptApp_upvr = require(script.Components.PublishAssetPromptApp)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(script.Reducer)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Common.renderWithCoreScriptsStyleProvider)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local CoreGui_upvr = game:GetService("CoreGui")
local ConnectAssetServiceEvents_upvr = require(script.ConnectAssetServiceEvents)
function module_upvr.new() -- Line 24
	--[[ Upvalues[12]:
		[1]: module_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PublishAssetPromptApp_upvr (readonly)
		[4]: Rodux_upvr (readonly)
		[5]: Reducer_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[8]: LocalizationProvider_upvr (readonly)
		[9]: Localization_upvr (readonly)
		[10]: LocalizationService_upvr (readonly)
		[11]: CoreGui_upvr (readonly)
		[12]: ConnectAssetServiceEvents_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.store = Rodux_upvr.Store.new(Reducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	setmetatable_result1.root = Roact_upvr.createElement("Folder", {
		Name = "PublishAssetPrompt";
	}, Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = setmetatable_result1.store;
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
			LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
				localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
			}, {
				PublishAssetPromptApp = Roact_upvr.createElement(PublishAssetPromptApp_upvr);
			});
		});
	}))
	setmetatable_result1.element = Roact_upvr.mount(setmetatable_result1.root, CoreGui_upvr, "PublishAssetPrompt")
	setmetatable_result1.serviceConnections = ConnectAssetServiceEvents_upvr(setmetatable_result1.store)
	return setmetatable_result1
end
return module_upvr.new()