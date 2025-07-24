-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:56
-- Luau version 6, Types version 3
-- Time taken: 0.001800 seconds

local AppHeaderBar = script:FindFirstAncestor("AppHeaderBar")
local Parent = AppHeaderBar.Parent
local RoactCompat = require(Parent.Dev.RoactCompat)
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local Constants = UIBlox.App.Style.Constants
local Light = Constants.ThemeName.Light
local Gotham = Constants.FontName.Gotham
RoactCompat.setGlobalConfig({
	elementTracing = true;
})
local tbl_upvr_2 = {
	Default = {
		themeName = Light;
		fontName = Gotham;
	};
	Light = {
		themeName = Light;
		fontName = Gotham;
	};
	Dark = {
		themeName = Constants.ThemeName.Dark;
		fontName = Gotham;
	};
}
local tbl_upvr = {
	Console = Constants.DeviceType.Console;
	Desktop = Constants.DeviceType.Desktop;
}
local module = {
	name = "AppHeaderBar";
	storyRoots = {AppHeaderBar};
	roact = RoactCompat;
}
local React_upvr = require(Parent.React)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
function module.mapStory(arg1) -- Line 45
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: React_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	return function(arg1_2) -- Line 46
		--[[ Upvalues[5]:
			[1]: tbl_upvr_2 (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: AppStyleProvider_upvr (copied, readonly)
			[4]: tbl_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local var19 = tbl_upvr_2[arg1_2.theme]
		return React_upvr.createElement(AppStyleProvider_upvr, {
			style = {
				themeName = var19.themeName;
				fontName = var19.fontName;
				deviceType = tbl_upvr[arg1_2.platform];
				settings = arg1_2.settings;
			};
		}, {
			Child = React_upvr.createElement(arg1, arg1_2);
		})
	end
end
return module