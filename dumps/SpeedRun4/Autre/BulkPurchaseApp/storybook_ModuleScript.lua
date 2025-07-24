-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:21
-- Luau version 6, Types version 3
-- Time taken: 0.001621 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local Rodux_upvr = require(Parent.Rodux)
local function createStore_upvr() -- Line 16, Named "createStore"
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	return Rodux_upvr.Store.new(Rodux_upvr.createReducer({}, {}), nil, {Rodux_upvr.makeThunkMiddleware({})})
end
local tbl_2_upvr = {
	Default = {
		themeName = "Dark";
		fontName = "Gotham";
	};
	Light = {
		themeName = "Light";
		fontName = "Gotham";
	};
	Dark = {
		themeName = "Dark";
		fontName = "Gotham";
	};
}
local module = {
	name = "BulkPurchaseApp";
	storyRoot = BulkPurchaseApp;
	roact = React_upvr;
	reactRoblox = require(Parent.ReactRoblox);
}
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local RoactRodux_upvr = require(Parent.RoactRodux)
local DesignTokenProvider_upvr = require(Parent.Style).DesignTokenProvider
function module.mapStory(arg1) -- Line 43
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: AppStyleProvider_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: createStore_upvr (readonly)
		[8]: DesignTokenProvider_upvr (readonly)
	]]
	return function(arg1_2) -- Line 44
		--[[ Upvalues[9]:
			[1]: React_upvr (copied, readonly)
			[2]: LocalizationProvider_upvr (copied, readonly)
			[3]: Localization_upvr (copied, readonly)
			[4]: AppStyleProvider_upvr (copied, readonly)
			[5]: tbl_2_upvr (copied, readonly)
			[6]: RoactRodux_upvr (copied, readonly)
			[7]: createStore_upvr (copied, readonly)
			[8]: DesignTokenProvider_upvr (copied, readonly)
			[9]: arg1 (readonly)
		]]
		local module_2 = {}
		local tbl = {}
		local var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = tbl_2_upvr[arg1_2.theme]
			return var21
		end
		if not arg1_2 or not INLINED() then
			var21 = tbl_2_upvr.Default
		end
		tbl.style = var21
		var21 = {}
		var21.StoreProvider = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = createStore_upvr();
		}, {
			DesignTokenProvider = React_upvr.createElement(DesignTokenProvider_upvr, {
				tokenMappers = {};
			}, {
				Child = React_upvr.createElement(arg1, arg1_2);
			});
		})
		module_2.AppStyleProvider = React_upvr.createElement(AppStyleProvider_upvr, tbl, var21)
		return React_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new("en-us");
		}, module_2)
	end
end
return module