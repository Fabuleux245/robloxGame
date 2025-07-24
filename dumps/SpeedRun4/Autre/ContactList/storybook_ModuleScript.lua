-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:15
-- Luau version 6, Types version 3
-- Time taken: 0.002120 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
	propValidation = true;
})
local tbl_3_upvr = {
	Default = {
		themeName = "Light";
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
local tbl_2_upvr = {
	language = "en-us";
}
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local function var10_upvr(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	return Rodux_upvr.Store.new(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1
	end, {}, {Rodux_upvr.thunkMiddleware})
end
local module = {
	roact = Roact_upvr;
}
local Dash_upvr = require(CorePackages.Packages.Dash)
function module.mapDefinition(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return Dash_upvr.join(arg1, {
		controls = Dash_upvr.join(tbl_2_upvr, controls);
	})
end
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new("en-us")
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
function module.mapStory(arg1) -- Line 52
	--[[ Upvalues[7]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: var10_upvr (readonly)
		[5]: AppStyleProvider_upvr (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: LocalizationProvider_upvr (readonly)
	]]
	return function(arg1_2) -- Line 53
		--[[ Upvalues[8]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RoactRodux_upvr (copied, readonly)
			[4]: var10_upvr (copied, readonly)
			[5]: AppStyleProvider_upvr (copied, readonly)
			[6]: tbl_3_upvr (copied, readonly)
			[7]: LocalizationProvider_upvr (copied, readonly)
			[8]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		any_new_result1_upvr:SetLocale(arg1_2.controls.language)
		local state = arg1_2.definition.state
		if not state then
			state = {}
		end
		local module_2 = {}
		local tbl = {}
		if not arg1_2 or not tbl_3_upvr[arg1_2.theme] then
		end
		tbl.style = tbl_3_upvr.Default
		module_2[1] = Roact_upvr.createElement(AppStyleProvider_upvr, tbl, {Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = any_new_result1_upvr;
		}, {
			Child = Roact_upvr.createElement(arg1, arg1_2);
		})})
		return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = var10_upvr(state);
		}, module_2)
	end
end
return module