-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:32
-- Luau version 6, Types version 3
-- Time taken: 0.002173 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_2_upvr = {
	reducer = {};
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local Rodux_upvr = require(Parent.Rodux)
local CountryCodeList_upvr = require(Parent.AuthCommon).Reducers.CountryCodeList
local FetchingStatus_upvr = require(Parent.Http).Reducers.FetchingStatus
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local RoactRodux_upvr = require(Parent.RoactRodux)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local IXPService_upvr = game:GetService("IXPService")
local RoactAppPolicy_upvr = require(Parent.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).AppFeaturePolicies
local RoactServices_upvr = require(Parent.RoactServices).RoactServices
local RoactAnalytics_upvr = require(Parent.RoactServiceTags).RoactAnalytics
local Analytics_upvr = require(Parent.Analytics).Analytics
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local ChallengeRequestWrapper_upvr = require(Parent.GenericChallenges).Middleware.ChallengeRequestWrapper
local requestInternalWrapper_upvr = require(Parent.Http).NetworkLayers.requestInternalWrapper
local HttpService_upvr = game:GetService("HttpService")
local SelectionCursorProvider_upvr = UIBlox.App.SelectionImage.SelectionCursorProvider
local CursorProvider_upvr = UIBlox.App.SelectionCursor.CursorProvider
local ProviderContainer_upvr = require(Parent.RoactUtils).Components.ProviderContainer
local openWebview_upvr = require(PhoneUpsell.Http.openWebview)
return function(arg1) -- Line 41, Named "InGameContainer"
	--[[ Upvalues[26]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Rodux_upvr (readonly)
		[5]: CountryCodeList_upvr (readonly)
		[6]: FetchingStatus_upvr (readonly)
		[7]: StyleProviderWithDefaultTheme_upvr (readonly)
		[8]: RoactRodux_upvr (readonly)
		[9]: LocalizationProvider_upvr (readonly)
		[10]: Localization_upvr (readonly)
		[11]: LocalizationService_upvr (readonly)
		[12]: RoactAppExperiment_upvr (readonly)
		[13]: IXPService_upvr (readonly)
		[14]: RoactAppPolicy_upvr (readonly)
		[15]: AppFeaturePolicies_upvr (readonly)
		[16]: RoactServices_upvr (readonly)
		[17]: RoactAnalytics_upvr (readonly)
		[18]: Analytics_upvr (readonly)
		[19]: RoactNetworking_upvr (readonly)
		[20]: ChallengeRequestWrapper_upvr (readonly)
		[21]: requestInternalWrapper_upvr (readonly)
		[22]: HttpService_upvr (readonly)
		[23]: SelectionCursorProvider_upvr (readonly)
		[24]: CursorProvider_upvr (readonly)
		[25]: ProviderContainer_upvr (readonly)
		[26]: openWebview_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_2_upvr, arg1)
	local tbl = {}
	table.insert(tbl, {
		class = StyleProviderWithDefaultTheme_upvr;
		props = {
			withDarkTheme = true;
		};
	})
	table.insert(tbl, {
		class = RoactRodux_upvr.StoreProvider;
		props = {
			store = Rodux_upvr.Store.new(Rodux_upvr.combineReducers(Cryo_upvr.Dictionary.join({
				CountryCodeList = CountryCodeList_upvr;
				FetchingStatus = FetchingStatus_upvr;
				ScreenSize = function(arg1_2, arg2) -- Line 53, Named "ScreenSize"
					return Vector2.new(400, 400)
				end;
			}, any_union_result1.reducer)), nil, {Rodux_upvr.thunkMiddleware});
		};
	})
	table.insert(tbl, {
		class = LocalizationProvider_upvr;
		props = {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		};
	})
	table.insert(tbl, {
		class = RoactAppExperiment_upvr.Provider;
		props = {
			value = IXPService_upvr;
		};
	})
	table.insert(tbl, {
		class = RoactAppPolicy_upvr.Provider;
		props = {
			policy = {AppFeaturePolicies_upvr};
		};
	})
	table.insert(tbl, {
		class = RoactServices_upvr.ServiceProvider;
		props = {
			services = {
				[RoactAnalytics_upvr] = Analytics_upvr.new();
				[RoactNetworking_upvr] = ChallengeRequestWrapper_upvr(requestInternalWrapper_upvr(HttpService_upvr));
			};
		};
	})
	table.insert(tbl, {
		class = SelectionCursorProvider_upvr;
	})
	table.insert(tbl, {
		class = CursorProvider_upvr;
	})
	return React_upvr.createElement(ProviderContainer_upvr, {
		providers = tbl;
	}, {
		Child = React_upvr.cloneElement(React_upvr.Children.only(any_union_result1.children), {
			showWebpage = openWebview_upvr;
		});
	})
end