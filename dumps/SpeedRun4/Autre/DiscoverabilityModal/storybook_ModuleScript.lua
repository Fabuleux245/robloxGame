-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:45
-- Luau version 6, Types version 3
-- Time taken: 0.001949 seconds

local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local Parent = DiscoverabilityModal.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
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
	name = "DiscoverabilityModal";
	storyRoot = DiscoverabilityModal;
	roact = Roact_upvr;
}
local Dash_upvr = dependencies.Dash
function module.mapDefinition(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return Dash_upvr.join(arg1, {
		controls = Dash_upvr.join(tbl_upvr, controls);
	})
end
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module.mapStory(arg1) -- Line 43
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 44
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: mockLocale_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_2 = {}
		local var19
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var19 = tbl_upvr_2[arg1_2.theme]
			return var19
		end
		if not arg1_2 or not INLINED() then
			var19 = tbl_upvr_2.Default
		end
		module_2.style = var19
		var19 = {}
		var19.Child = mockLocale_upvr(arg1, arg1_2)
		return Roact_upvr.createElement(AppStyleProvider_upvr, module_2, var19)
	end
end
return module