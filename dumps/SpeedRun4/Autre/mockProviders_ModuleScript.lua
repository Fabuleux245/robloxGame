-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:07
-- Luau version 6, Types version 3
-- Time taken: 0.006301 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Style_upvr = require(Parent.Style)
local tbl_3_upvr = {
	withUiModeSupport = false;
	withLayerCollector = true;
}
local Cryo_upvr = require(Parent.Cryo)
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
local StyleProviderWithDefaultTheme_upvr = Style_upvr.StyleProviderWithDefaultTheme
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Signal_upvr = require(Parent.AppCommonLib).Signal
local LayerCollectorProvider_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.LayerCollectorProvider
local RoactRodux_upvr = require(Parent.RoactRodux)
local Rodux_upvr = require(Parent.Rodux)
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local SocialPolicies_upvr = require(Parent.SocialPolicies)
local mockApolloClient_upvr = require(Parent.GraphQLServer).ApolloClientTestUtils.mockApolloClient
local UserProfiles_upvr = require(Parent.UserProfiles)
local ApolloClient_upvr = require(Parent.ApolloClient)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local React_upvr = require(Parent.React)
local ProviderContainer_upvr = require(Parent.RoactUtils).Components.ProviderContainer
return function(arg1) -- Line 49, Named "MockProviders"
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: FoundationProvider_upvr (readonly)
		[4]: StyleProviderWithDefaultTheme_upvr (readonly)
		[5]: LocalizationProvider_upvr (readonly)
		[6]: Signal_upvr (readonly)
		[7]: LayerCollectorProvider_upvr (readonly)
		[8]: RoactRodux_upvr (readonly)
		[9]: Rodux_upvr (readonly)
		[10]: UniversalAppPolicy_upvr (readonly)
		[11]: SocialPolicies_upvr (readonly)
		[12]: mockApolloClient_upvr (readonly)
		[13]: UserProfiles_upvr (readonly)
		[14]: Style_upvr (readonly)
		[15]: ApolloClient_upvr (readonly)
		[16]: RoactNavigation_upvr (readonly)
		[17]: React_upvr (readonly)
		[18]: ProviderContainer_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_3_upvr, arg1)
	local tbl_9 = {}
	table.insert(tbl_9, {
		class = FoundationProvider_upvr;
		props = {};
	})
	table.insert(tbl_9, {
		class = StyleProviderWithDefaultTheme_upvr;
		props = {
			withDarkTheme = true;
			withUiModeSupport = any_union_result1_upvr.withUiModeSupport;
		};
	})
	table.insert(tbl_9, {
		class = LocalizationProvider_upvr;
		props = {
			localization = {
				Format = function(arg1_2, arg2) -- Line 70, Named "Format"
					return arg2
				end;
				changed = Signal_upvr.new();
			};
		};
	})
	local var28
	if any_union_result1_upvr.withLayerCollector then
		table.insert(tbl_9, {
			class = LayerCollectorProvider_upvr;
			props = {};
		})
	end
	local tbl_10 = {}
	var28 = RoactRodux_upvr
	tbl_10.class = var28.StoreProvider
	local tbl_2 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = any_union_result1_upvr.rodux.store
		return var28
	end
	if not any_union_result1_upvr.rodux or not INLINED() then
		var28 = Rodux_upvr.Store.new
		local rodux = any_union_result1_upvr.rodux
		if rodux then
			rodux = any_union_result1_upvr.rodux.state
		end
		var28 = var28(function() -- Line 88
			--[[ Upvalues[1]:
				[1]: any_union_result1_upvr (readonly)
			]]
			local var33
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var33 = any_union_result1_upvr.rodux.state
				return var33
			end
			if not any_union_result1_upvr.rodux or not INLINED_2() then
				var33 = {}
			end
			return var33
		end, rodux, {Rodux_upvr.thunkMiddleware})
	end
	tbl_2.store = var28
	tbl_10.props = tbl_2
	table.insert(tbl_9, tbl_10)
	local tbl_6 = {}
	var28 = UniversalAppPolicy_upvr.RoactAppPolicy
	tbl_6.class = var28.Provider
	local tbl_4 = {}
	var28 = {}
	var28[1] = UniversalAppPolicy_upvr.AppFeaturePolicies
	var28[2] = SocialPolicies_upvr.ChatPolicies
	tbl_4.policy = var28
	tbl_6.props = tbl_4
	table.insert(tbl_9, tbl_6)
	local mockApolloClient_upvr_result1 = mockApolloClient_upvr({})
	local tbl_5 = {}
	var28 = {}
	var28.combinedName = "Test Primary Name"
	var28.alias = "Test Primary Name"
	var28.contactName = "Test Contact Name"
	var28.displayName = "Test Display Name"
	var28.username = "username"
	tbl_5["1989"] = var28
	var28 = {}
	var28.combinedName = "OrangeClement"
	var28.alias = "OrangeClement"
	var28.contactName = "Test Contact Name"
	var28.displayName = "ClementOrange"
	var28.username = "username"
	tbl_5["1969"] = var28
	var28 = {}
	var28.combinedName = "AzurePine"
	var28.alias = "AzurePine"
	var28.contactName = "Test Contact Name"
	var28.displayName = "PineAzure"
	var28.username = "username"
	tbl_5["1949"] = var28
	UserProfiles_upvr.TestUtils.writeProfileDataToCache(mockApolloClient_upvr_result1, tbl_5)
	local tbl_8 = {}
	var28 = Style_upvr.DesignTokenProvider
	tbl_8.class = var28
	var28 = {}
	var28.tokenMappers = {}
	tbl_8.props = var28
	table.insert(tbl_9, tbl_8)
	local tbl_7 = {}
	var28 = ApolloClient_upvr.ApolloProvider
	tbl_7.class = var28
	var28 = {}
	var28.client = mockApolloClient_upvr_result1
	tbl_7.props = var28
	table.insert(tbl_9, tbl_7)
	local tbl = {}
	var28 = RoactNavigation_upvr.Provider
	tbl.class = var28
	var28 = {}
	var28.value = {
		state = {
			params = {};
			routeName = "";
			key = "";
		};
		dispatch = function() -- Line 150, Named "dispatch"
		end;
		goBack = function() -- Line 151, Named "goBack"
		end;
		addListener = function() -- Line 152, Named "addListener"
		end;
		isFocused = function() -- Line 153, Named "isFocused"
		end;
		setParams = function() -- Line 154, Named "setParams"
		end;
		getParam = function() -- Line 155, Named "getParam"
		end;
		replace = function() -- Line 156, Named "replace"
		end;
		push = function() -- Line 157, Named "push"
		end;
		getScreenProps = function() -- Line 158, Named "getScreenProps"
		end;
	}
	tbl.props = var28
	table.insert(tbl_9, tbl)
	var28 = any_union_result1_upvr.children
	return React_upvr.createElement(ProviderContainer_upvr, {
		providers = tbl_9;
	}, var28)
end