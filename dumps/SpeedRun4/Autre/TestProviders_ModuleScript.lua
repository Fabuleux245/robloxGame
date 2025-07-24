-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:43
-- Luau version 6, Types version 3
-- Time taken: 0.003251 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(Parent.Reducers.Reducer)
local mockApolloClient_upvr = require(CorePackages.Workspace.Packages.GraphQLServer).ApolloClientTestUtils.mockApolloClient
local Array_upvr = require(CorePackages.Packages.LuauPolyfill).Array
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local ApolloProvider_upvr = require(CorePackages.Packages.ApolloClient).ApolloProvider
local Provider_upvr = require(script.Parent.Components.Connection.LayoutValues).Provider
local CreateLayoutValues_upvr = require(Parent.CreateLayoutValues)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
return function(arg1) -- Line 28, Named "TestProviders"
	--[[ Upvalues[10]:
		[1]: Rodux_upvr (readonly)
		[2]: Reducer_upvr (readonly)
		[3]: mockApolloClient_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: ApolloProvider_upvr (readonly)
		[8]: Provider_upvr (readonly)
		[9]: CreateLayoutValues_upvr (readonly)
		[10]: UIBlox_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local layoutValues = arg1.layoutValues
	if not layoutValues then
		layoutValues = CreateLayoutValues_upvr(false)
	end
	tbl_2.layoutValues = layoutValues
	tbl.LayoutValuesProvider = Roact_upvr.createElement(Provider_upvr, tbl_2, {
		ThemeProvider = Roact_upvr.createElement(UIBlox_upvr.App.Style.AppStyleProvider, {}, arg1.children);
	})
	module.ApolloProvider = Roact_upvr.createElement(ApolloProvider_upvr, {
		client = arg1.client or mockApolloClient_upvr({
			mockResolvers = {
				Query = {
					userProfiles = function(arg1_2, arg2, arg3, arg4) -- Line 33, Named "userProfiles"
						--[[ Upvalues[1]:
							[1]: Array_upvr (copied, readonly)
						]]
						return Array_upvr.map(arg2.userIds, function(arg1_3) -- Line 34
							local module_2 = {}
							module_2.userId = arg1_3
							module_2.names = {
								alias = `alias{arg1_3}`;
								combinedName = `combinedName{arg1_3}`;
								contactName = `contactName{arg1_3}`;
								displayName = `displayName{arg1_3}`;
								username = `username{arg1_3}`;
								platformName = `platformName{arg1_3}`;
								inExperienceCombinedName = `inExperienceCombinedName{arg1_3}`;
							}
							return module_2
						end)
					end;
				};
				UserProfile = {
					id = function(arg1_4) -- Line 52, Named "id"
						return tostring(arg1_4.userId)
					end;
					names = function(arg1_5) -- Line 55, Named "names"
						return arg1_5.names
					end;
				};
			};
		});
	}, tbl)
	return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = arg1.store or Rodux_upvr.Store.new(Reducer_upvr);
	}, module)
end