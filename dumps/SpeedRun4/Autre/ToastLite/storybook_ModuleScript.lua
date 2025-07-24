-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:06
-- Luau version 6, Types version 3
-- Time taken: 0.001019 seconds

local ToastLite = script:FindFirstAncestor("ToastLite")
local Parent = ToastLite.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local tbl_upvr = {
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
	name = "ToastLite";
	storyRoot = ToastLite;
	roact = React_upvr;
	reactRoblox = require(Parent.Dev.ReactRoblox);
}
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
function module.mapStory(arg1) -- Line 34
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	return function(arg1_2) -- Line 35
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local module_2 = {}
		local var13
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var13 = tbl_upvr[arg1_2.theme]
			return var13
		end
		if not arg1_2 or not INLINED() then
			var13 = tbl_upvr.Default
		end
		module_2.style = var13
		var13 = {}
		var13.Child = React_upvr.createElement(arg1, arg1_2)
		return React_upvr.createElement(AppStyleProvider_upvr, module_2, var13)
	end
end
return module