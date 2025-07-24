-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:11
-- Luau version 6, Types version 3
-- Time taken: 0.006114 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Rodux_upvr = require(VirtualEvents.Parent.Rodux)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local any_combineReducers_result1_upvr = Rodux_upvr.combineReducers({
	VirtualEvents = require(VirtualEvents.installReducer)();
})
local React_upvr = require(VirtualEvents.Parent.React)
local RoactRodux_upvr = require(VirtualEvents.Parent.RoactRodux)
local ContentProvider_upvr = UIBlox.App.Context.ContentProvider
local MockContentProvider_upvr = UIBlox.UnitTestHelpers.MockContentProvider
local Localization_upvr = require(VirtualEvents.Parent.Localization)
local RobloxAppLocales_upvr = require(VirtualEvents.Parent.RobloxAppLocales)
local FoundationProvider_upvr = require(VirtualEvents.Parent.Foundation).FoundationProvider
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Constants_upvr = UIBlox.App.Style.Constants
local RoactNavigation_upvr = require(VirtualEvents.Parent.RoactNavigation)
local DesignTokenProvider_upvr = require(VirtualEvents.Parent.Style).DesignTokenProvider
local GraphQLServer_upvr = require(VirtualEvents.Parent.GraphQLServer)
local ApolloClient_upvr = require(VirtualEvents.Parent.ApolloClient)
return function(arg1, arg2) -- Line 32, Named "withMockProviders"
	--[[ Upvalues[15]:
		[1]: Rodux_upvr (readonly)
		[2]: any_combineReducers_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: RoactRodux_upvr (readonly)
		[5]: ContentProvider_upvr (readonly)
		[6]: MockContentProvider_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: RobloxAppLocales_upvr (readonly)
		[9]: FoundationProvider_upvr (readonly)
		[10]: AppStyleProvider_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: RoactNavigation_upvr (readonly)
		[13]: DesignTokenProvider_upvr (readonly)
		[14]: GraphQLServer_upvr (readonly)
		[15]: ApolloClient_upvr (readonly)
	]]
	if arg2 then
	else
	end
	if not nil then
		local var19 = Rodux_upvr
		if arg2 then
			var19 = arg2.initialStoreState
		else
			var19 = nil
		end
	end
	local tbl_3 = {
		StoreProvider = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = var19.Store.new(any_combineReducers_result1_upvr, var19, {Rodux_upvr.thunkMiddleware});
		}, {
			ContentProvider = React_upvr.createElement(ContentProvider_upvr.Provider, {
				value = MockContentProvider_upvr.new();
			}, {
				LocalizationProvider = React_upvr.createElement(Localization_upvr.LocalizationProvider, {
					localization = RobloxAppLocales_upvr.Localization.new("en-us");
				}, {
					FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
						theme = "Dark";
					}, {
						StyleProvider = React_upvr.createElement(AppStyleProvider_upvr, {
							style = {
								themeName = Constants_upvr.ThemeName.Dark;
								fontName = Constants_upvr.FontName.Gotham;
							};
						}, {
							NavigationProvider = React_upvr.createElement(RoactNavigation_upvr.Provider, {
								value = {
									isFocused = function() -- Line 61, Named "isFocused"
										return true
									end;
									goBack = function() -- Line 64, Named "goBack"
									end;
									addListener = function() -- Line 65, Named "addListener"
										return {
											remove = function() -- Line 67, Named "remove"
											end;
										}
									end;
								};
							}, {
								DesignTokenProvider = React_upvr.createElement(DesignTokenProvider_upvr, {
									tokenMappers = {};
								}, {
									Children = React_upvr.createElement(React_upvr.Fragment, nil, arg1);
								});
							});
						});
					});
				});
			});
		});
	}
	if arg2 then
		if arg2.mockResolvers then
			local tbl_2 = {
				cache = ApolloClient_upvr.InMemoryCache.new({});
			}
			local tbl = {
				uri = "/api";
			}
			local any_new_result1_upvr = GraphQLServer_upvr.GraphQLServer.new({
				mockResolvers = arg2.mockResolvers;
			})
			function tbl.fetch(arg1_2, arg2_2) -- Line 95
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (readonly)
				]]
				return any_new_result1_upvr:fetchLocal(arg2_2)
			end
			tbl_2.link = ApolloClient_upvr.HttpLink.new(tbl)
			tbl_3 = {
				ApolloProvider = React_upvr.createElement(ApolloClient_upvr.ApolloProvider, {
					client = ApolloClient_upvr.ApolloClient.new(tbl_2);
				}, tbl_3);
			}
		end
		any_new_result1_upvr = arg2.mockNavigation
		if any_new_result1_upvr then
			any_new_result1_upvr = {}
			local var45 = any_new_result1_upvr
			var45.NavigationProvider = React_upvr.createElement(RoactNavigation_upvr.Provider, {
				value = arg2.mockNavigation;
			}, tbl_3)
			tbl_3 = var45
		end
	end
	var45 = React_upvr.createElement(React_upvr.Fragment, nil, tbl_3)
	return var45
end