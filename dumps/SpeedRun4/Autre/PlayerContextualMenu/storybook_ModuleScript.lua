-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:49
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local PlayerContextualMenu = script:FindFirstAncestor("PlayerContextualMenu")
local Parent = PlayerContextualMenu.Parent
local Roact_upvr = require(Parent.Dev.Roact)
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
})
local tbl_upvr_2 = {
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
local tbl_upvr = {
	language = "en-us";
}
local module = {
	name = "PlayerContextualMenu";
	storyRoot = PlayerContextualMenu;
	roact = Roact_upvr;
}
local Dash_upvr = require(Parent.Dash)
function module.mapDefinition(arg1) -- Line 47
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	return Dash_upvr.join(arg1, {
		controls = Dash_upvr.join(tbl_upvr, arg1.controls);
	})
end
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module.mapStory(arg1) -- Line 51
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 52
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: mockLocale_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_2 = {}
		local var18
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var18 = tbl_upvr_2[arg1_2.theme]
			return var18
		end
		if not arg1_2 or not INLINED() then
			var18 = tbl_upvr_2.Default
		end
		module_2.style = var18
		var18 = {}
		var18.Child = mockLocale_upvr(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module_2, var18)
	end
end
return module