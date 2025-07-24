-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:05
-- Luau version 6, Types version 3
-- Time taken: 0.000799 seconds

local dependencies = require(script.Parent.dependencies)
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
local Roact_upvr = dependencies.Roact
local AppStyleProvider_upvr = dependencies.UIBlox.App.Style.AppStyleProvider
return function(arg1) -- Line 21, Named "StoryMiddleware"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	return function(arg1_2) -- Line 22
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local module = {}
		local var10
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var10 = tbl_upvr[arg1_2.theme]
			return var10
		end
		if not arg1_2 or not INLINED() then
			var10 = tbl_upvr.Default
		end
		module.style = var10
		var10 = {}
		var10.Child = Roact_upvr.createElement(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module, var10)
	end
end