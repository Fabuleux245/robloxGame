-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:58
-- Luau version 6, Types version 3
-- Time taken: 0.001973 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local module_upvr = {}
module_upvr.__index = module_upvr
local Analytics_upvr = require(script.Analytics)
local initCall_upvr = require(script.initCall)
local CallProtocol_upvr = require(CorePackages.Workspace.Packages.CallProtocol)
local React_upvr = require(CorePackages.Packages.React)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(script.Reducer)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Common.renderWithCoreScriptsStyleProvider)
local ApolloProvider_upvr = require(CorePackages.Packages.ApolloClient).ApolloProvider
local ApolloClient_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.ApolloClient)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Context_upvr = require(script.Context)
local ContactListApp_upvr = require(script.Components.ContactListApp)
function module_upvr.new() -- Line 34
	--[[ Upvalues[18]:
		[1]: module_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: initCall_upvr (readonly)
		[4]: CallProtocol_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: LocalizationProvider_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: LocalizationService_upvr (readonly)
		[9]: Rodux_upvr (readonly)
		[10]: Reducer_upvr (readonly)
		[11]: RoactRodux_upvr (readonly)
		[12]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[13]: ApolloProvider_upvr (readonly)
		[14]: ApolloClient_upvr (readonly)
		[15]: Roact_upvr (readonly)
		[16]: Context_upvr (readonly)
		[17]: ContactListApp_upvr (readonly)
		[18]: CoreGui_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	initCall_upvr(CallProtocol_upvr.CallProtocol.default)
	setmetatable_result1.store = Rodux_upvr.Store.new(Reducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	setmetatable_result1.root = React_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		DisplayOrder = -1;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, {
		Content = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = setmetatable_result1.store;
		}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
				ApolloProvider = React_upvr.createElement(ApolloProvider_upvr, {
					client = ApolloClient_upvr;
				}, {
					ContextProvider = Roact_upvr.createElement(Context_upvr.Provider, {
						value = {
							fireAnalyticsEvent = Analytics_upvr.Analytics().fireAnalyticsEvent;
						};
					}, {
						ContactListApp = (function(arg1) -- Line 46
							--[[ Upvalues[4]:
								[1]: React_upvr (copied, readonly)
								[2]: LocalizationProvider_upvr (copied, readonly)
								[3]: Localization_upvr (copied, readonly)
								[4]: LocalizationService_upvr (copied, readonly)
							]]
							local module = {}
							module.App = arg1
							return React_upvr.createElement(LocalizationProvider_upvr, {
								localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
							}, module)
						end)(React_upvr.createElement(ContactListApp_upvr));
					});
				});
			});
		});
	})
	setmetatable_result1.element = Roact_upvr.mount(setmetatable_result1.root, CoreGui_upvr, "ContactList")
	return setmetatable_result1
end
return module_upvr.new()