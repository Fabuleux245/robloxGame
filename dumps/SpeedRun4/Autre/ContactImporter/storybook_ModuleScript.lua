-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:17
-- Luau version 6, Types version 3
-- Time taken: 0.001981 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local dependencies = require(Parent_2.dependencies)
local Roact_upvr = dependencies.Roact
Roact_upvr.setGlobalConfig({
	propValidation = true;
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
local module_2 = {
	name = "ContactImporter";
	storyRoot = Parent_2;
	roact = Roact_upvr;
}
local llama_upvr = dependencies.llama
function module_2.mapDefinition(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return llama_upvr.Dictionary.join(arg1, {
		controls = llama_upvr.Dictionary.join(tbl_upvr, controls);
	})
end
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module_2.mapStory(arg1) -- Line 48
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 49
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: mockLocale_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module = {}
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = tbl_upvr_2[arg1_2.theme]
			return var20
		end
		if not arg1_2 or not INLINED() then
			var20 = tbl_upvr_2.Default
		end
		module.style = var20
		var20 = {}
		var20.Child = mockLocale_upvr(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module, var20)
	end
end
return module_2