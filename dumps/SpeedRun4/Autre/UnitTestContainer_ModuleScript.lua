-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:53
-- Luau version 6, Types version 3
-- Time taken: 0.002082 seconds

local Parent = script.Parent.Parent
local LocalizationService_upvr = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local any_extend_result1 = Roact_upvr.Component:extend("UnitTestContainer")
local LayoutValues_upvr = require(Parent.Services.LayoutValues)
local Rodux_upvr = PurchasePromptDeps.Rodux
local Reducer_upvr = require(Parent.Reducers.Reducer)
local getLocalizationContext_upvr = require(Parent.Localization.getLocalizationContext)
function any_extend_result1.init(arg1) -- Line 27
	--[[ Upvalues[5]:
		[1]: LayoutValues_upvr (readonly)
		[2]: Rodux_upvr (readonly)
		[3]: Reducer_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: getLocalizationContext_upvr (readonly)
	]]
	arg1.layoutValues = LayoutValues_upvr.new(false).layout
	local overrideStore = arg1.props.overrideStore
	if not overrideStore then
		overrideStore = Rodux_upvr.Store.new(Reducer_upvr, {})
	end
	arg1.store = overrideStore
	overrideStore = arg1.props.overrideLocale
	local var12 = overrideStore
	if not var12 then
		var12 = LocalizationService_upvr.RobloxLocaleId
	end
	arg1.localizationContext = getLocalizationContext_upvr(var12)
end
local RoactRodux_upvr = PurchasePromptDeps.RoactRodux
local LocaleProvider_upvr = require(CorePackages.Workspace.Packages.IAPExperience).Locale.LocaleProvider
local StyleProviderWithDefaultTheme_upvr = require(CorePackages.Workspace.Packages.Style).StyleProviderWithDefaultTheme
local LocalizationContextProvider_upvr = require(Parent.Components.Connection.LocalizationContextProvider)
local LayoutValuesProvider_upvr = require(Parent.Components.Connection.LayoutValuesProvider)
local function render(arg1) -- Line 35
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: RoactRodux_upvr (readonly)
		[3]: LocaleProvider_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: StyleProviderWithDefaultTheme_upvr (readonly)
		[6]: LocalizationContextProvider_upvr (readonly)
		[7]: LayoutValuesProvider_upvr (readonly)
	]]
	local var18 = false
	if arg1.props[Roact_upvr.Children] ~= nil then
		if 0 >= #arg1.props[Roact_upvr.Children] then
			var18 = false
		else
			var18 = true
		end
	end
	assert(var18, "UnitTestContainer: no children provided, nothing will be tested")
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local tbl_3 = {
		localizationContext = arg1.localizationContext;
	}
	local function render() -- Line 50
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LayoutValuesProvider_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(LayoutValuesProvider_upvr, {
			isTenFootInterface = false;
			render = function() -- Line 53, Named "render"
				--[[ Upvalues[2]:
					[1]: Roact_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				return Roact_upvr.createElement("ScreenGui", {
					AutoLocalize = false;
					IgnoreGuiInset = true;
				}, arg1.props[Roact_upvr.Children])
			end;
		})
	end
	tbl_3.render = render
	tbl_2.LocalizationContextProvider = Roact_upvr.createElement(LocalizationContextProvider_upvr, tbl_3)
	tbl.StyleProvider = Roact_upvr.createElement(StyleProviderWithDefaultTheme_upvr, tbl_2)
	module.LocaleProvider = Roact_upvr.createElement(LocaleProvider_upvr, {
		locale = LocalizationService_upvr.RobloxLocaleId;
	}, tbl)
	return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = arg1.store;
	}, module)
end
any_extend_result1.render = render
return any_extend_result1