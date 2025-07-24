-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:55
-- Luau version 6, Types version 3
-- Time taken: 0.001828 seconds

local Parent_upvr = script.Parent
local Parent = Parent_upvr.Parent
local UniversalAppPolicy = require(Parent.UniversalAppPolicy)
game:DefineFastFlag("FixGameInviteModalLoadTimeIncrease", false)
local var4_upvw
if not game:GetFastFlag("FixGameInviteModalLoadTimeIncrease") then
	var4_upvw = require(Parent.RobloxApolloClient).initializeApolloClient({})
end
local CoreGui_upvr = game:GetService("CoreGui")
local React_upvr = require(Parent.React)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local RoactRodux_upvr = require(Parent.RoactRodux)
local RoactAppPolicy_upvr = UniversalAppPolicy.RoactAppPolicy
local AppFeaturePolicies_upvr = UniversalAppPolicy.AppFeaturePolicies
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local ApolloProvider_upvr = require(Parent.ApolloClient).ApolloProvider
local GameInviteModal_upvr = require(Parent_upvr.Components.GameInviteModal)
local GameInviteConstants_upvr = require(Parent_upvr.GameInviteConstants)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
return function(arg1) -- Line 34
	--[[ Upvalues[16]:
		[1]: Parent_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LocalizationProvider_upvr (readonly)
		[5]: Localization_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
		[7]: RoactRodux_upvr (readonly)
		[8]: RoactAppPolicy_upvr (readonly)
		[9]: AppFeaturePolicies_upvr (readonly)
		[10]: StyleProviderWithDefaultTheme_upvr (readonly)
		[11]: ApolloProvider_upvr (readonly)
		[12]: var4_upvw (read and write)
		[13]: GameInviteModal_upvr (readonly)
		[14]: GameInviteConstants_upvr (readonly)
		[15]: ReactRoblox_upvr (readonly)
		[16]: FoundationProvider_upvr (readonly)
	]]
	local Folder = Instance.new("Folder")
	Folder.Name = "GameInvite"
	Folder.Parent = CoreGui_upvr
	local tbl_3 = {}
	local tbl_4 = {}
	local tbl_2 = {}
	local tbl_5 = {}
	local tbl = {}
	local var30
	if game:GetFastFlag("FixGameInviteModalLoadTimeIncrease") then
		var30 = arg1
	else
		var30 = var4_upvw
	end
	tbl.client = var30
	var30 = {}
	var30.GameInviteModalWrapper = React_upvr.createElement(GameInviteModal_upvr, {
		displayOrder = -1;
		renderLocation = GameInviteConstants_upvr.RenderLocation.CoreScripts;
	})
	tbl_5.ApolloClientProvider = React_upvr.createElement(ApolloProvider_upvr, tbl, var30)
	tbl_2.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, tbl_5)
	tbl_4.PolicyProvider = React_upvr.createElement(RoactAppPolicy_upvr.Provider, {
		policy = {AppFeaturePolicies_upvr};
	}, tbl_2)
	tbl_3[1] = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = require(Parent_upvr.State.GameInviteStore);
	}, tbl_4)
	local any_createRoot_result1 = ReactRoblox_upvr.createRoot(Folder)
	any_createRoot_result1:render(React_upvr.createElement(FoundationProvider_upvr, nil, {React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_3)}))
	return any_createRoot_result1
end