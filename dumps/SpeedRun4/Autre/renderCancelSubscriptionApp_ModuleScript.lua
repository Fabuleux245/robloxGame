-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:23
-- Luau version 6, Types version 3
-- Time taken: 0.005344 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local Rodux_upvr = require(Parent.Rodux)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local UIBlox = require(Parent.UIBlox)
local CancelSubscriptionReducer_upvr = require(CancelSubscriptionApp.Store.Reducers.CancelSubscriptionReducer)
local tbl_upvr = {
	themeName = "dark";
	fontName = "gotham";
}
local function _() -- Line 35, Named "createFocusNavigationService"
	--[[ Upvalues[1]:
		[1]: ReactFocusNavigation_upvr (readonly)
	]]
	return ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
end
local HttpRequest_upvr = require(Parent.HttpRequest)
local FFlagLuaAppDefaultHttpRetry_upvr = require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry
local function createNetworkImpl_upvr() -- Line 39, Named "createNetworkImpl"
	--[[ Upvalues[2]:
		[1]: HttpRequest_upvr (readonly)
		[2]: FFlagLuaAppDefaultHttpRetry_upvr (readonly)
	]]
	local module = {}
	local function requestFunction(arg1, arg2, arg3) -- Line 41
		--[[ Upvalues[1]:
			[1]: HttpRequest_upvr (copied, readonly)
		]]
		return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
	end
	module.requestFunction = requestFunction
	if FFlagLuaAppDefaultHttpRetry_upvr then
		requestFunction = game:DefineFastInt("RenderCancelSubscriptionAppHttpRetryCount", 4)
	else
		requestFunction = nil
	end
	module.maxRetryCount = requestFunction
	return HttpRequest_upvr.config(module)
end
local function _() -- Line 51, Named "createStore"
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: CancelSubscriptionReducer_upvr (readonly)
	]]
	return Rodux_upvr.Store.new(CancelSubscriptionReducer_upvr, nil, {Rodux_upvr.makeThunkMiddleware()})
end
local CoreGui_upvr = game:GetService("CoreGui")
local React_upvr = require(Parent.React)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local AppStyleProvider_upvr = require(Parent.Style).AppStyleProvider
local NetworkContext_upvr = require(Parent.EconomyCommonCoreScriptHooks).NetworkContext
local RoactRodux_upvr = require(Parent.RoactRodux)
local DesignTokenProvider_upvr = require(Parent.Style).DesignTokenProvider
local SelectionCursorProvider_upvr = UIBlox.App.SelectionImage.SelectionCursorProvider
local CursorProvider_upvr = UIBlox.App.SelectionCursor.CursorProvider
local Provider_upvr = require(Parent.FocusNavigationUtils).FocusNavigableSurfaceRegistry.Provider
local CancelSubscriptionApp_2_upvr = require(CancelSubscriptionApp.CancelSubscriptionApp)
local Foundation_upvr = require(Parent.Foundation)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return function() -- Line 57, Named "renderCancelSubscriptionApp"
	--[[ Upvalues[20]:
		[1]: CoreGui_upvr (readonly)
		[2]: Rodux_upvr (readonly)
		[3]: CancelSubscriptionReducer_upvr (readonly)
		[4]: createNetworkImpl_upvr (readonly)
		[5]: ReactFocusNavigation_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: LocalizationProvider_upvr (readonly)
		[8]: Localization_upvr (readonly)
		[9]: LocalizationService_upvr (readonly)
		[10]: AppStyleProvider_upvr (readonly)
		[11]: tbl_upvr (readonly)
		[12]: NetworkContext_upvr (readonly)
		[13]: RoactRodux_upvr (readonly)
		[14]: DesignTokenProvider_upvr (readonly)
		[15]: SelectionCursorProvider_upvr (readonly)
		[16]: CursorProvider_upvr (readonly)
		[17]: Provider_upvr (readonly)
		[18]: CancelSubscriptionApp_2_upvr (readonly)
		[19]: Foundation_upvr (readonly)
		[20]: ReactRoblox_upvr (readonly)
	]]
	local Folder = Instance.new("Folder")
	Folder.Name = "CancelSubscriptionApp"
	Folder.Parent = CoreGui_upvr
	local any_createRoot_result1 = ReactRoblox_upvr.createRoot(Folder)
	any_createRoot_result1:render(React_upvr.createElement(Foundation_upvr.FoundationProvider, {
		theme = Foundation_upvr.Enums.Theme.Dark;
	}, {
		LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			StyleProvider = React_upvr.createElement(AppStyleProvider_upvr, {
				style = tbl_upvr;
			}, {
				NetworkProvider = React_upvr.createElement(NetworkContext_upvr.Provider, {
					value = createNetworkImpl_upvr();
				}, {
					StoreProvider = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
						store = Rodux_upvr.Store.new(CancelSubscriptionReducer_upvr, nil, {Rodux_upvr.makeThunkMiddleware()});
					}, {
						DesignTokenProvider = React_upvr.createElement(DesignTokenProvider_upvr, {
							tokenMappers = {};
						}, {
							CursorProvider = React_upvr.createElement(SelectionCursorProvider_upvr, {}, {
								NewCursorProvider = React_upvr.createElement(CursorProvider_upvr, {}, {
									FocusNavigationProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
										value = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui);
									}, {
										FocusNavigationRegistryProvider = React_upvr.createElement(Provider_upvr, nil, {
											CancelSubscriptionApp = React_upvr.createElement(CancelSubscriptionApp_2_upvr);
										});
									});
								});
							});
						});
					});
				});
			});
		});
	}))
	return any_createRoot_result1
end