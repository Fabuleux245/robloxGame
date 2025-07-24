-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:11
-- Luau version 6, Types version 3
-- Time taken: 0.002159 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Dash_upvr = require(Parent.Dash)
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
})
local tbl_2_upvr = {
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
	name = "CapturesInExperience";
	storyRoot = Parent_2;
	roact = Roact_upvr;
	mapDefinition = function(arg1) -- Line 45, Named "mapDefinition"
		--[[ Upvalues[2]:
			[1]: Dash_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		return Dash_upvr.join(arg1, {
			controls = Dash_upvr.join(tbl_upvr, arg1.controls);
		})
	end;
}
local CapturesContext_upvr = require(Parent_2.Context.CapturesContext)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module_2.mapStory(arg1) -- Line 49
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: CapturesContext_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: AppStyleProvider_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 50
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: CapturesContext_upvr (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
			[4]: AppStyleProvider_upvr (copied, readonly)
			[5]: tbl_2_upvr (copied, readonly)
			[6]: mockLocale_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local module = {}
		local tbl = {}
		local var22
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var22 = tbl_2_upvr[arg1_2.theme]
			return var22
		end
		if not arg1_2 or not INLINED() then
			var22 = tbl_2_upvr.Default
		end
		tbl.style = var22
		var22 = {}
		var22.Child = mockLocale_upvr(arg1, arg1_2)
		module.Element = Roact_upvr.createElement(AppStyleProvider_upvr, tbl, var22)
		return Roact_upvr.createElement(CapturesContext_upvr.Provider, {
			value = {
				fireAnalyticsEvent = Dash_upvr.noop;
			};
		}, module)
	end
end
return module_2