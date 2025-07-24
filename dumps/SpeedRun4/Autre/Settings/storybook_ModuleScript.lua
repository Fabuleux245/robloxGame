-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:51
-- Luau version 6, Types version 3
-- Time taken: 0.001593 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
	propValidation = true;
})
local tbl_upvr = {
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
local module = {
	roact = Roact_upvr;
}
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
function module.mapStory(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	return function(arg1_2) -- Line 32
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
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
		var13.Child = Roact_upvr.createElement(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module_2, var13)
	end
end
return module