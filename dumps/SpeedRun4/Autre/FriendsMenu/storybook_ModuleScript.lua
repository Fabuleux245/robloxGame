-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:35
-- Luau version 6, Types version 3
-- Time taken: 0.001269 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local Roact_upvr = require(Parent.Dev.Roact)
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
local tbl_upvr_2 = {
	language = "en-us";
}
local module = {
	name = "FriendsMenu";
	storyRoot = FriendsMenu;
	roact = Roact_upvr;
}
local Cryo_upvr = require(Parent.Cryo)
function module.mapDefinition(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		controls = Cryo_upvr.Dictionary.join(tbl_upvr_2, controls);
	})
end
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module.mapStory(arg1) -- Line 43
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 44
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: mockLocale_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_2 = {}
		local var18
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var18 = tbl_upvr[arg1_2.theme]
			return var18
		end
		if not arg1_2 or not INLINED() then
			var18 = tbl_upvr.Default
		end
		module_2.style = var18
		var18 = {}
		var18.Child = mockLocale_upvr(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module_2, var18)
	end
end
return module