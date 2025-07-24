-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:28
-- Luau version 6, Types version 3
-- Time taken: 0.001985 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Foundation_upvr = require(Parent_2.Foundation)
local React_upvr = require(Parent_2.React)
local Roact_upvr = require(Parent_2.Roact)
local RoactRodux_upvr = require(Parent_2.RoactRodux)
local CapturesPolicy_upvr = require(Parent.App.CapturesPolicy)
local StyleProviderWithDefaultTheme_upvr = require(Parent_2.Style).StyleProviderWithDefaultTheme
local LocalizationProvider_upvr = require(Parent_2.Localization).LocalizationProvider
local Localization_upvr = require(Parent_2.RobloxAppLocales).Localization
local CapturesContext_upvr = require(Parent.Context.CapturesContext)
local FFlagCapturesFoundationProviderFixEnabled_upvr = require(Parent.Flags.FFlagCapturesFoundationProviderFixEnabled)
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2) -- Line 22, Named "makeWrapWithProviders"
	--[[ Upvalues[12]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: CapturesPolicy_upvr (readonly)
		[5]: StyleProviderWithDefaultTheme_upvr (readonly)
		[6]: LocalizationProvider_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: CapturesContext_upvr (readonly)
		[9]: FFlagCapturesFoundationProviderFixEnabled_upvr (readonly)
		[10]: FoundationProvider_upvr (readonly)
		[11]: Foundation_upvr (readonly)
		[12]: Constants_upvr (readonly)
	]]
	local function var15_upvr(arg1_2, arg2_2) -- Line 25
		--[[ Upvalues[1]:
			[1]: React_upvr (copied, readonly)
		]]
		if not arg1_2 then
			return arg2_2
		end
		local module = {}
		module.Name = arg1_2
		return React_upvr.createElement("Folder", module, arg2_2)
	end
	return function(arg1_3, arg2_3, arg3, arg4) -- Line 35
		--[[ Upvalues[15]:
			[1]: Roact_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: RoactRodux_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: CapturesPolicy_upvr (copied, readonly)
			[6]: StyleProviderWithDefaultTheme_upvr (copied, readonly)
			[7]: LocalizationProvider_upvr (copied, readonly)
			[8]: Localization_upvr (copied, readonly)
			[9]: arg2 (readonly)
			[10]: CapturesContext_upvr (copied, readonly)
			[11]: FFlagCapturesFoundationProviderFixEnabled_upvr (copied, readonly)
			[12]: FoundationProvider_upvr (copied, readonly)
			[13]: Foundation_upvr (copied, readonly)
			[14]: var15_upvr (readonly)
			[15]: Constants_upvr (copied, readonly)
		]]
		local module_2 = {}
		module_2.store = arg1
		local module_3 = {}
		local tbl_6 = {}
		local tbl_7 = {}
		local tbl_10 = {}
		local tbl_4 = {}
		tbl_4.value = arg2_3
		local tbl_9 = {}
		local var29
		if not FFlagCapturesFoundationProviderFixEnabled_upvr then
			var29 = Roact_upvr.createElement
			local tbl_8 = {}
			local tbl_11 = {}
			tbl_11.target = arg1_3
			local tbl = {}
			tbl[1] = arg3
			tbl_8.Portal = Roact_upvr.createElement(Roact_upvr.Portal, tbl_11, tbl)
			var29 = var29(FoundationProvider_upvr, {
				theme = Foundation_upvr.Enums.Theme.Dark;
			}, tbl_8)
		else
			var29 = nil
		end
		tbl_9.FoundationProvider = var29
		if FFlagCapturesFoundationProviderFixEnabled_upvr then
			var29 = Roact_upvr.createElement
			local tbl_3 = {}
			tbl_3.target = arg1_3
			local tbl_2 = {}
			local tbl_5 = {}
			tbl_5[1] = arg3
			tbl_2.FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
				theme = Foundation_upvr.Enums.Theme.Dark;
			}, tbl_5)
			var29 = var29(Roact_upvr.Portal, tbl_3, var15_upvr(arg4, tbl_2))
		else
			var29 = nil
		end
		tbl_9.Portal = var29
		tbl_10.ContextProvider = Roact_upvr.createElement(CapturesContext_upvr.Provider, tbl_4, tbl_9)
		tbl_7.LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(arg2.LocalizationService.RobloxLocaleId);
		}, tbl_10)
		tbl_6.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {
			withDarkTheme = true;
		}, tbl_7)
		module_3.PolicyProvider = Roact_upvr.createElement(CapturesPolicy_upvr.Provider, {
			policy = {CapturesPolicy_upvr.Mapper};
		}, tbl_6)
		return Roact_upvr.mount(React_upvr.createElement(RoactRodux_upvr.StoreProvider, module_2, module_3), nil, Constants_upvr.ReactName)
	end
end