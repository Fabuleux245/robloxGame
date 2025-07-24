-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.001653 seconds

local Parent = script.Parent.Parent.Parent
local Foundation_upvr = require(Parent.Foundation)
local Constants = require(Parent.Style).Constants
local tbl_upvr = {
	themeName = Constants.ThemeName.Dark;
	fontName = Constants.FontName.Gotham;
}
local tbl_upvr_2 = {
	ScreenSize = Vector2.new(500, 500);
	SetAlias = {
		Aliases = {
			byUserId = {
				['1'] = "foo";
			};
		};
	};
}
local Rodux_upvr = require(Parent.Rodux)
local function var9_upvr(arg1, arg2) -- Line 33
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	local var12 = arg2
	if not var12 then
		function var12(arg1_2) -- Line 34
			return arg1_2
		end
	end
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	return Rodux_upvr.Store.new(var12, var13, {Rodux_upvr.thunkMiddleware})
end
local React_upvr = require(Parent.React)
local RoactRodux_upvr = require(Parent.RoactRodux)
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local AppStyleProvider_upvr = require(Parent.Style).AppStyleProvider
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local any_new_result1_upvr = require(Parent.RobloxAppLocales).Localization.new("en-us")
local RoactServices_upvr = require(Parent.RoactServices).RoactServices
return {
	mockServices = function(arg1) -- Line 43
		--[[ Upvalues[11]:
			[1]: React_upvr (readonly)
			[2]: RoactRodux_upvr (readonly)
			[3]: var9_upvr (readonly)
			[4]: tbl_upvr_2 (readonly)
			[5]: FoundationProvider_upvr (readonly)
			[6]: Foundation_upvr (readonly)
			[7]: AppStyleProvider_upvr (readonly)
			[8]: tbl_upvr (readonly)
			[9]: LocalizationProvider_upvr (readonly)
			[10]: any_new_result1_upvr (readonly)
			[11]: RoactServices_upvr (readonly)
		]]
		return React_upvr.createElement(RoactServices_upvr.ServiceProvider, {}, {
			storeProvider = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
				store = var9_upvr(tbl_upvr_2);
			}, {
				foundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
					theme = Foundation_upvr.Enums.Theme.Dark;
				}, {
					styleProvider = React_upvr.createElement(AppStyleProvider_upvr, {
						style = tbl_upvr;
					}, {
						localizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
							localization = any_new_result1_upvr;
						}, arg1);
					});
				});
			});
		})
	end;
}