-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:49
-- Luau version 6, Types version 3
-- Time taken: 0.001642 seconds

local Parent = script:FindFirstAncestor("InterventionShared").Parent
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local Roact_upvr = require(Parent.Roact)
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Signal_upvr = require(Parent.AppCommonLib).Signal
local LayerCollectorProvider_upvr = UIBlox.Core.Layout.LayerCollector.LayerCollectorProvider
local React_upvr = require(Parent.React)
local ProviderContainer_upvr = require(Parent.RoactUtils).Components.ProviderContainer
local function MockProviders_upvr(arg1) -- Line 28, Named "MockProviders"
	--[[ Upvalues[7]:
		[1]: FoundationProvider_upvr (readonly)
		[2]: StyleProviderWithDefaultTheme_upvr (readonly)
		[3]: LocalizationProvider_upvr (readonly)
		[4]: Signal_upvr (readonly)
		[5]: LayerCollectorProvider_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ProviderContainer_upvr (readonly)
	]]
	local tbl = {}
	table.insert(tbl, {
		class = FoundationProvider_upvr;
		props = {};
	})
	table.insert(tbl, {
		class = StyleProviderWithDefaultTheme_upvr;
		props = {
			withDarkTheme = true;
			withUiModeSupport = false;
		};
	})
	table.insert(tbl, {
		class = LocalizationProvider_upvr;
		props = {
			localization = {
				Format = function(arg1_2, arg2) -- Line 48, Named "Format"
					return arg2
				end;
				changed = Signal_upvr.new();
			};
		};
	})
	table.insert(tbl, {
		class = LayerCollectorProvider_upvr;
		props = {};
	})
	return React_upvr.createElement(ProviderContainer_upvr, {
		providers = tbl;
	}, arg1.children)
end
local module = {
	roact = Roact_upvr;
}
local Cryo_upvr = require(Parent.Cryo)
function module.mapStory(arg1) -- Line 68
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: MockProviders_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return function(arg1_3) -- Line 69
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: MockProviders_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		if not arg1_3 or not arg1_3.definition or not arg1_3.definition.props then
		end
		return Roact_upvr.createElement(MockProviders_upvr, {}, {
			story = Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.union({}, arg1_3));
		})
	end
end
return module